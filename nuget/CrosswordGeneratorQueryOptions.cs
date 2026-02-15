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
        /// </summary>
        [JsonProperty("size")]
        public string Size { get; set; }

        /// <summary>
        /// Theme: random, animals, food, sports, science, geography
        /// </summary>
        [JsonProperty("theme")]
        public string Theme { get; set; }

        /// <summary>
        /// Difficulty: easy, medium, hard
        /// </summary>
        [JsonProperty("difficulty")]
        public string Difficulty { get; set; }
    }
}
