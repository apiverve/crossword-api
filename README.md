# [Crossword Generator API](https://apiverve.com/marketplace/crossword?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)

Crossword Generator creates crossword puzzles with intersecting words, numbered clues, and themed word selection.

The Crossword Generator API provides a simple, reliable way to integrate crossword generator functionality into your applications. Built for developers who need production-ready crossword generator capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/crossword?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/crossword?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/crossword)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.CrosswordGenerator)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-crossword/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_crossword)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/crossword)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_crossword)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callCrosswordGeneratorAPI() {
    try {
        const params = new URLSearchParams({
            size: 'medium',
            theme: 'animals',
            difficulty: 'medium'
        });

        const response = await fetch(`https://api.apiverve.com/v1/crossword?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callCrosswordGeneratorAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/crossword?size=medium&theme=animals&difficulty=medium" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/crossword
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/crossword) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.CrosswordGenerator
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.CrosswordGenerator) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-crossword
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-crossword/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_crossword
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_crossword) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/crossword
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/crossword) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_crossword
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_crossword) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:crossword-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/crossword-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Crossword Generator API](https://apiverve.com/marketplace/crossword?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/crossword](https://docs.apiverve.com/ref/crossword)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Crossword Generator API is commonly used for:

- **Web Applications** - Add crossword generator features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with crossword generator capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Crossword Generator API:

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "size": 15,
    "difficulty": "medium",
    "theme": "animals",
    "grid": [
      [
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null
      ],
      [
        null,
        "T",
        "I",
        "G",
        "E",
        "R",
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        "D",
        null
      ],
      [
        null,
        null,
        null,
        "I",
        null,
        null,
        null,
        null,
        null,
        null,
        "R",
        null,
        null,
        "E",
        null
      ],
      [
        "Z",
        "E",
        "B",
        "R",
        "A",
        null,
        null,
        "D",
        null,
        null,
        "A",
        null,
        null,
        "E",
        null
      ],
      [
        null,
        null,
        null,
        "A",
        null,
        "L",
        "I",
        "O",
        "N",
        null,
        "B",
        "E",
        "A",
        "R",
        null
      ],
      [
        "W",
        "O",
        "L",
        "F",
        null,
        null,
        null,
        "L",
        null,
        null,
        "B",
        null,
        null,
        null,
        null
      ],
      [
        null,
        "W",
        null,
        "F",
        null,
        "P",
        null,
        "P",
        null,
        null,
        "I",
        null,
        null,
        null,
        null
      ],
      [
        null,
        "L",
        null,
        "E",
        "L",
        "E",
        "P",
        "H",
        "A",
        "N",
        "T",
        null,
        null,
        null,
        null
      ],
      [
        null,
        null,
        null,
        null,
        null,
        "N",
        null,
        "I",
        null,
        null,
        null,
        null,
        null,
        null,
        null
      ],
      [
        null,
        null,
        null,
        null,
        null,
        "G",
        null,
        "N",
        null,
        null,
        null,
        null,
        null,
        null,
        null
      ],
      [
        null,
        null,
        null,
        null,
        null,
        "U",
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null
      ],
      [
        null,
        null,
        null,
        null,
        null,
        "I",
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null
      ],
      [
        null,
        null,
        null,
        "P",
        "A",
        "N",
        "D",
        "A",
        null,
        null,
        null,
        null,
        null,
        null,
        null
      ],
      [
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null
      ],
      [
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null
      ]
    ],
    "across": [
      {
        "number": 1,
        "clue": "Striped big cat",
        "answer": "TIGER",
        "length": 5
      },
      {
        "number": 5,
        "clue": "Striped horse-like animal",
        "answer": "ZEBRA",
        "length": 5
      },
      {
        "number": 7,
        "clue": "King of the jungle",
        "answer": "LION",
        "length": 4
      },
      {
        "number": 8,
        "clue": "Large furry mammal",
        "answer": "BEAR",
        "length": 4
      },
      {
        "number": 9,
        "clue": "Wild canine that howls",
        "answer": "WOLF",
        "length": 4
      },
      {
        "number": 12,
        "clue": "Large gray mammal with trunk",
        "answer": "ELEPHANT",
        "length": 8
      },
      {
        "number": 13,
        "clue": "Black and white bear from China",
        "answer": "PANDA",
        "length": 5
      }
    ],
    "down": [
      {
        "number": 2,
        "clue": "Tallest land animal",
        "answer": "GIRAFFE",
        "length": 7
      },
      {
        "number": 3,
        "clue": "Forest animal with antlers",
        "answer": "DEER",
        "length": 4
      },
      {
        "number": 4,
        "clue": "Hopping animal with long ears",
        "answer": "RABBIT",
        "length": 6
      },
      {
        "number": 6,
        "clue": "Intelligent marine mammal",
        "answer": "DOLPHIN",
        "length": 7
      },
      {
        "number": 10,
        "clue": "Nocturnal bird of prey",
        "answer": "OWL",
        "length": 3
      },
      {
        "number": 11,
        "clue": "Flightless bird from Antarctica",
        "answer": "PENGUIN",
        "length": 7
      }
    ],
    "wordCount": 13,
    "html": "<html><head><title>Crossword Puzzle</title><style>body {font-family: Arial, sans-serif; padding: 20px;}h1 {text-align: center; color: #333;}.container {display: flex; gap: 30px; flex-wrap: wrap; justify-content: center;}.grid {display: grid; grid-template-columns: repeat(15, 30px); gap: 1px; background: #333; border: 2px solid #333;}.cell {width: 30px; height: 30px; background: #fff; display: flex; align-items: center; justify-content: center; font-weight: bold; position: relative;}.cell.black {background: #333;}.cell-number {position: absolute; top: 1px; left: 2px; font-size: 8px; font-weight: normal;}.clues {max-width: 300px;}.clue-section h3 {margin-bottom: 10px; color: #333;}.clue {margin: 5px 0; font-size: 14px;}.clue-number {font-weight: bold; margin-right: 5px;}</style></head><body><h1>Crossword</h1><div class='container'><div class='grid'><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell'><span class='cell-number'>1</span></div><div class='cell'></div><div class='cell'><span class='cell-number'>2</span></div><div class='cell'></div><div class='cell'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell'><span class='cell-number'>3</span></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell'><span class='cell-number'>4</span></div><div class='cell black'></div><div class='cell black'></div><div class='cell'></div><div class='cell black'></div><div class='cell'><span class='cell-number'>5</span></div><div class='cell'></div><div class='cell'></div><div class='cell'></div><div class='cell'></div><div class='cell black'></div><div class='cell black'></div><div class='cell'><span class='cell-number'>6</span></div><div class='cell black'></div><div class='cell black'></div><div class='cell'></div><div class='cell black'></div><div class='cell black'></div><div class='cell'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell'></div><div class='cell black'></div><div class='cell'><span class='cell-number'>7</span></div><div class='cell'></div><div class='cell'></div><div class='cell'></div><div class='cell black'></div><div class='cell'><span class='cell-number'>8</span></div><div class='cell'></div><div class='cell'></div><div class='cell'></div><div class='cell black'></div><div class='cell'><span class='cell-number'>9</span></div><div class='cell'><span class='cell-number'>10</span></div><div class='cell'></div><div class='cell'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell'></div><div class='cell black'></div><div class='cell black'></div><div class='cell'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell'></div><div class='cell black'></div><div class='cell'></div><div class='cell black'></div><div class='cell'><span class='cell-number'>11</span></div><div class='cell black'></div><div class='cell'></div><div class='cell black'></div><div class='cell black'></div><div class='cell'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell'></div><div class='cell black'></div><div class='cell'><span class='cell-number'>12</span></div><div class='cell'></div><div class='cell'></div><div class='cell'></div><div class='cell'></div><div class='cell'></div><div class='cell'></div><div class='cell'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell'></div><div class='cell black'></div><div class='cell'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell'></div><div class='cell black'></div><div class='cell'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell'><span class='cell-number'>13</span></div><div class='cell'></div><div class='cell'></div><div class='cell'></div><div class='cell'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div><div class='cell black'></div></div><div class='clues'><div class='clue-section'><h3>Across</h3><div class='clue'><span class='clue-number'>1.</span>Striped big cat (5)</div><div class='clue'><span class='clue-number'>5.</span>Striped horse-like animal (5)</div><div class='clue'><span class='clue-number'>7.</span>King of the jungle (4)</div><div class='clue'><span class='clue-number'>8.</span>Large furry mammal (4)</div><div class='clue'><span class='clue-number'>9.</span>Wild canine that howls (4)</div><div class='clue'><span class='clue-number'>12.</span>Large gray mammal with trunk (8)</div><div class='clue'><span class='clue-number'>13.</span>Black and white bear from China (5)</div></div><div class='clue-section'><h3>Down</h3><div class='clue'><span class='clue-number'>2.</span>Tallest land animal (7)</div><div class='clue'><span class='clue-number'>3.</span>Forest animal with antlers (4)</div><div class='clue'><span class='clue-number'>4.</span>Hopping animal with long ears (6)</div><div class='clue'><span class='clue-number'>6.</span>Intelligent marine mammal (7)</div><div class='clue'><span class='clue-number'>10.</span>Nocturnal bird of prey (3)</div><div class='clue'><span class='clue-number'>11.</span>Flightless bird from Antarctica (7)</div></div></div></div></body></html>",
    "image": {
      "imageName": "1838121c-9f76-44f8-b197-02e1db5987d5_puzzle.png",
      "format": ".png",
      "downloadURL": "https://storage.googleapis.com/apiverve/APIData/crossword/1838121c-9f76-44f8-b197-02e1db5987d5_puzzle.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1766010128&Signature=OYZsWA9QiINhqgC%2BSZSZpict%2B93ryyxvzUSIohJF%2BMGZ7SLGLA2Q47aVnwzLFzr8ZOK7IUQN4DZrAMh%2B0T8VqTMCLf76tj8BKLB1Qwo4IbMkkat1cbG6AFb44ungHGmCpwjwjwDYMwrDgI8%2Bg8dyKzwMZZmQHf5Q1hYNsy084Q%2BBTLAx6KUL%2FIZdw5pp0Rnxiq8aHdPrm%2Fbq2NU1UuMUDg8uBc8TR%2FHYN%2FOljXeyhv6Nbf4FXJCPLTMDdLDqblecNKhfQ67Dc4FdPD%2BF1IPN2A5G9VfkPb5v5KA5iiM8RF4zr8kHW%2FMlncbKSynvLp7QjtL9qZlSHn3%2Bn0pJpf%2FEUA%3D%3D",
      "expires": 1766010128609
    },
    "solutionImage": {
      "imageName": "3ec675cd-0e16-4e50-87f4-8f4192abea5b_solution.png",
      "format": ".png",
      "downloadURL": "https://storage.googleapis.com/apiverve/APIData/crossword/3ec675cd-0e16-4e50-87f4-8f4192abea5b_solution.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1766010129&Signature=L07115whFCEM3yuFDBILq7r4v26RoSYQzv81S7bwL8yJFcHRjHcKsqUhI6UWaDo4LPKfAjmk%2Fs1gN3z33ma12GE2fJYkp4mxD40EhyY%2BDjR3ja7m%2Fj20Zenu%2FdcOukkS9DCfGiYEa%2BxQDT4I2gjDVORhe7JeDuLeKCFtbsiLZFIlWNZoq6K7YbNc4BWDnwcqviJXSB%2FvWa1FMhXpQFoTIeJVvUCcdOGGVR6Vdl%2BPxwWN%2FAjXcsvNYbIhtyEZHaXQuXxI3zmCMg0eI770cVuhs7rm8JVdN7gYtojprJxTYl9nRx793SRuLcFfJD%2BRhx2dBmpMtXkcZFmv4%2Bz74oZY8Q%3D%3D",
      "expires": 1766010129033
    }
  }
}
```

---

## Support & Community

- 🏠 **API Home**: [Crossword Generator API](https://apiverve.com/marketplace/crossword?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
