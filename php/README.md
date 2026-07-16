# Crossword Generator API - PHP Package

Crossword Generator creates crossword puzzles with intersecting words, numbered clues, and themed word selection.

## Installation

Install via Composer:

```bash
composer require apiverve/crossword
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Crossword\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'size' => 'medium',
    'theme' => 'random',
    'difficulty' => 'medium',
    'image' => true,
    'solutionImage' => true
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Crossword\Client;
use APIVerve\Crossword\Exceptions\APIException;
use APIVerve\Crossword\Exceptions\ValidationException;

try {
    $response = $client->execute(['size' => 'medium', 'theme' => 'random', 'difficulty' => 'medium', 'image' => true, 'solutionImage' => true]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/crossword?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/crossword?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/crossword?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
