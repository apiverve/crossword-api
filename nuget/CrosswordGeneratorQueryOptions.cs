using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.CrosswordGenerator
{
    /// <summary>
    /// Query options for the Crossword Generator API
    /// </summary>
    public class CrosswordGeneratorQueryOptions
    {
        /// <summary>
        /// Grid size: small, medium, large
        /// Example: medium
        /// </summary>
        [JsonProperty("size")]
        public string Size { get; set; }

        /// <summary>
        /// Theme: random, animals, food, sports, science, geography
        /// Example: animals
        /// </summary>
        [JsonProperty("theme")]
        public string Theme { get; set; }

        /// <summary>
        /// Difficulty: easy, medium, hard
        /// Example: medium
        /// </summary>
        [JsonProperty("difficulty")]
        public string Difficulty { get; set; }
    }
}
