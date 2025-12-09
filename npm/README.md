# Crossword Generator API

Crossword Generator creates crossword puzzles with intersecting words, numbered clues, and themed word selection.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Javascript Wrapper for the [Crossword Generator API](https://apiverve.com/marketplace/crossword)

---

## Installation

Using npm:
```shell
npm install @apiverve/crossword
```

Using yarn:
```shell
yarn add @apiverve/crossword
```

---

## Configuration

Before using the Crossword Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart)

The Crossword Generator API documentation is found here: [https://docs.apiverve.com/ref/crossword](https://docs.apiverve.com/ref/crossword).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const crosswordAPI = require('@apiverve/crossword');
const api = new crosswordAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  size: "medium",
  theme: "animals",
  difficulty: "medium"
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  size: "medium",
  theme: "animals",
  difficulty: "medium"
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  size: "medium",
  theme: "animals",
  difficulty: "medium"
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

## Example Response

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
      "imageName": "c2d81765-f1e0-4027-a35f-e5b07199719a_puzzle.png",
      "format": ".png",
      "downloadURL": "https://storage.googleapis.com/apiverve.appspot.com/crossword/c2d81765-f1e0-4027-a35f-e5b07199719a_puzzle.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1764735733&Signature=NitxaMzQE1mhPUXGiatXw6CRuBIc0eM6%2FSKplyNtis8%2FspnQ9N5w4Xyrq2wXDvM5GX0zXfAC3xGfNfmJznz9XAkgOfflyF0kVa81nteFARWUF3ZXrhgi0NcMMZiqUwmvW60QFKMrTyt8n24uxtdUn1luOy8XdiquUChdbBHropzKK6qSkLPMABJvIUaDR6SwaMJmEAcNlqURDKBWvKorago5J6kdYWcvy38CtQmTRq0VD%2FqnOe4AqMWB9h56sCEZMcK4CdTFxM70uy5q6QKqJYB3nVClkvrhPiMcaQNv9%2F0uhWncyCUC0hRD%2Bx%2BlTfjAdUtD51ibhHtEJ1a%2B%2BYyiKA%3D%3D",
      "expires": 1764735733908
    },
    "solutionImage": {
      "imageName": "81403919-e8ad-40be-96d0-4482b24010b8_solution.png",
      "format": ".png",
      "downloadURL": "https://storage.googleapis.com/apiverve.appspot.com/crossword/81403919-e8ad-40be-96d0-4482b24010b8_solution.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1764735734&Signature=SqUFASLPSSll%2FedCynzwv5w%2BisVTdtf0Oco%2BRBleBRg8cXu%2F3myVaEPhcHG4MGkTvgrv5Xk9CGHKxu8ZDFjL7%2B%2Fw2uwT1nJN05P86SPD1Wshv6zHvcsVIgpbE7ByQ7uDSO6BN9K%2Bkxed7fjv%2BVmPPwZ50XZfZrUObsGbtmDdpn0Qx0ERpAdkqytfBVszsrkINdSlef0OM%2F%2BfPAc3q9%2BWD4lHATo4rFDwlLga%2BoSzYiloJkijwmTnmkI5%2F5pZXbaYmrp7pSIBjlPfY5jdiqrbEvNd7SmSBaXGOcEumd6UAqYNFLcyS0Gvyp41h9CjQDkb7u1nc9EdxhiVmSeBADxzeQ%3D%3D",
      "expires": 1764735734469
    }
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2025 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
