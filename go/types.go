// Package crossword provides a Go client for the Crossword Generator API.
//
// For more information, visit: https://apiverve.com/marketplace/crossword?utm_source=go&utm_medium=readme
package crossword

import (
	"fmt"
	"reflect"
	"regexp"
	"strings"
)

// ValidationRule defines validation constraints for a parameter.
type ValidationRule struct {
	Type      string
	Required  bool
	Min       *float64
	Max       *float64
	MinLength *int
	MaxLength *int
	Format    string
	Enum      []string
}

// ValidationError represents a parameter validation error.
type ValidationError struct {
	Errors []string
}

func (e *ValidationError) Error() string {
	return "Validation failed: " + strings.Join(e.Errors, "; ")
}

// Helper functions for pointers
func float64Ptr(v float64) *float64 { return &v }
func intPtr(v int) *int             { return &v }

// Format validation patterns
var formatPatterns = map[string]*regexp.Regexp{
	"email":    regexp.MustCompile(`^[^\s@]+@[^\s@]+\.[^\s@]+$`),
	"url":      regexp.MustCompile(`^https?://.+`),
	"ip":       regexp.MustCompile(`^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$|^([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$`),
	"date":     regexp.MustCompile(`^\d{4}-\d{2}-\d{2}$`),
	"hexColor": regexp.MustCompile(`^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$`),
}

// Request contains the parameters for the Crossword Generator API.
//
// Parameters:
//   - size: string - Grid size: small, medium, large
//   - theme: string - Theme: random, animals, food, sports, science, geography
//   - difficulty: string - Difficulty: easy, medium, hard
type Request struct {
	Size string `json:"size,omitempty"` // Optional
	Theme string `json:"theme,omitempty"` // Optional
	Difficulty string `json:"difficulty,omitempty"` // Optional
}

// ToQueryParams converts the request struct to a map of query parameters.
// Only non-zero values are included.
func (r *Request) ToQueryParams() map[string]string {
	params := make(map[string]string)
	if r == nil {
		return params
	}

	v := reflect.ValueOf(*r)
	t := v.Type()

	for i := 0; i < v.NumField(); i++ {
		field := v.Field(i)
		fieldType := t.Field(i)

		// Get the json tag for the field name
		jsonTag := fieldType.Tag.Get("json")
		if jsonTag == "" {
			continue
		}
		// Handle tags like `json:"name,omitempty"`
		jsonName := strings.Split(jsonTag, ",")[0]
		if jsonName == "-" {
			continue
		}

		// Skip zero values
		if field.IsZero() {
			continue
		}

		// Convert to string
		params[jsonName] = fmt.Sprintf("%v", field.Interface())
	}

	return params
}

// Validate checks the request parameters against validation rules.
// Returns a ValidationError if validation fails, nil otherwise.
func (r *Request) Validate() error {
	rules := map[string]ValidationRule{
		"size": {Type: "string", Required: false},
		"theme": {Type: "string", Required: false},
		"difficulty": {Type: "string", Required: false},
	}

	if len(rules) == 0 {
		return nil
	}

	var errors []string
	v := reflect.ValueOf(*r)
	t := v.Type()

	for i := 0; i < v.NumField(); i++ {
		field := v.Field(i)
		fieldType := t.Field(i)

		jsonTag := fieldType.Tag.Get("json")
		if jsonTag == "" {
			continue
		}
		jsonName := strings.Split(jsonTag, ",")[0]

		rule, exists := rules[jsonName]
		if !exists {
			continue
		}

		// Check required
		if rule.Required && field.IsZero() {
			errors = append(errors, fmt.Sprintf("Required parameter [%s] is missing", jsonName))
			continue
		}

		if field.IsZero() {
			continue
		}

		// Type-specific validation
		switch rule.Type {
		case "integer", "number":
			var numVal float64
			switch field.Kind() {
			case reflect.Int, reflect.Int64:
				numVal = float64(field.Int())
			case reflect.Float64:
				numVal = field.Float()
			}
			if rule.Min != nil && numVal < *rule.Min {
				errors = append(errors, fmt.Sprintf("Parameter [%s] must be at least %v", jsonName, *rule.Min))
			}
			if rule.Max != nil && numVal > *rule.Max {
				errors = append(errors, fmt.Sprintf("Parameter [%s] must be at most %v", jsonName, *rule.Max))
			}

		case "string":
			strVal := field.String()
			if rule.MinLength != nil && len(strVal) < *rule.MinLength {
				errors = append(errors, fmt.Sprintf("Parameter [%s] must be at least %d characters", jsonName, *rule.MinLength))
			}
			if rule.MaxLength != nil && len(strVal) > *rule.MaxLength {
				errors = append(errors, fmt.Sprintf("Parameter [%s] must be at most %d characters", jsonName, *rule.MaxLength))
			}
			if rule.Format != "" {
				if pattern, ok := formatPatterns[rule.Format]; ok {
					if !pattern.MatchString(strVal) {
						errors = append(errors, fmt.Sprintf("Parameter [%s] must be a valid %s", jsonName, rule.Format))
					}
				}
			}
		}

		// Enum validation
		if len(rule.Enum) > 0 {
			strVal := fmt.Sprintf("%v", field.Interface())
			found := false
			for _, enumVal := range rule.Enum {
				if strVal == enumVal {
					found = true
					break
				}
			}
			if !found {
				errors = append(errors, fmt.Sprintf("Parameter [%s] must be one of: %s", jsonName, strings.Join(rule.Enum, ", ")))
			}
		}
	}

	if len(errors) > 0 {
		return &ValidationError{Errors: errors}
	}
	return nil
}

// ResponseData contains the data returned by the Crossword Generator API.
type ResponseData struct {
	Size int `json:"size"`
	Difficulty string `json:"difficulty"`
	Theme string `json:"theme"`
	Grid []GridItem `json:"grid"`
	Across []AcrossItem `json:"across"`
	Down []DownItem `json:"down"`
	WordCount int `json:"wordCount"`
	Html string `json:"html"`
	Image ImageData `json:"image"`
	SolutionImage SolutionImageData `json:"solutionImage"`
}

// GridItem represents an item in the Grid array.
type GridItem struct {
	0 interface{} `json:"0"`
	1 interface{} `json:"1"`
	2 interface{} `json:"2"`
	3 interface{} `json:"3"`
	4 interface{} `json:"4"`
	5 interface{} `json:"5"`
	6 interface{} `json:"6"`
	7 interface{} `json:"7"`
	8 interface{} `json:"8"`
	9 interface{} `json:"9"`
	10 interface{} `json:"10"`
	11 interface{} `json:"11"`
	12 interface{} `json:"12"`
	13 interface{} `json:"13"`
	14 interface{} `json:"14"`
}

// AcrossItem represents an item in the Across array.
type AcrossItem struct {
	Number int `json:"number"`
	Clue string `json:"clue"`
	Answer string `json:"answer"`
	Length int `json:"length"`
}

// DownItem represents an item in the Down array.
type DownItem struct {
	Number int `json:"number"`
	Clue string `json:"clue"`
	Answer string `json:"answer"`
	Length int `json:"length"`
}

// ImageData represents the image object.
type ImageData struct {
	ImageName string `json:"imageName"`
	Format string `json:"format"`
	DownloadURL string `json:"downloadURL"`
	Expires int `json:"expires"`
}

// SolutionImageData represents the solutionImage object.
type SolutionImageData struct {
	ImageName string `json:"imageName"`
	Format string `json:"format"`
	DownloadURL string `json:"downloadURL"`
	Expires int `json:"expires"`
}
