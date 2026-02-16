Crossword Generator API
============

Crossword Generator creates crossword puzzles with intersecting words, numbered clues, and themed word selection.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Python API Wrapper for the [Crossword Generator API](https://apiverve.com/marketplace/crossword?utm_source=pypi&utm_medium=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-crosswordgenerator
```

Using `pip3`:

```bash
pip3 install apiverve-crosswordgenerator
```

---

## Configuration

Before using the crossword API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_crosswordgenerator.apiClient import CrosswordAPIClient

# Initialize the client with your APIVerve API key
api = CrosswordAPIClient("[YOUR_API_KEY]")

query = {
    "size": "medium",
    "theme": "random",
    "difficulty": "medium"
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Crossword Generator API documentation is found here: [https://docs.apiverve.com/ref/crossword](https://docs.apiverve.com/ref/crossword?utm_source=pypi&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_crosswordgenerator.apiClient import CrosswordAPIClient

# Initialize the client with your APIVerve API key
api = CrosswordAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "size": "medium",
    "theme": "random",
    "difficulty": "medium"
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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

## Error Handling

The API client provides comprehensive error handling through the `CrosswordAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_crosswordgenerator.apiClient import CrosswordAPIClient, CrosswordAPIClientError

api = CrosswordAPIClient("[YOUR_API_KEY]")

query = {
    "size": "medium",
    "theme": "random",
    "difficulty": "medium"
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except CrosswordAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_crosswordgenerator.apiClient import CrosswordAPIClient, CrosswordAPIClientError

api = CrosswordAPIClient("[YOUR_API_KEY]")

query = {
    "size": "medium",
    "theme": "random",
    "difficulty": "medium"
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except CrosswordAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_crosswordgenerator.apiClient import CrosswordAPIClient, CrosswordAPIClientError

query = {
    "size": "medium",
    "theme": "random",
    "difficulty": "medium"
}

# Using context manager ensures proper cleanup
with CrosswordAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except CrosswordAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_crosswordgenerator.apiClient import CrosswordAPIClient

# Enable debug mode
api = CrosswordAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "size": "medium",
    "theme": "random",
    "difficulty": "medium"
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_crosswordgenerator.apiClient import CrosswordAPIClient

api = CrosswordAPIClient("[YOUR_API_KEY]")

query = {
    "size": "medium",
    "theme": "random",
    "difficulty": "medium"
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=readme) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
