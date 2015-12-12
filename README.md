# Deutschebahn

This is a simple gem to fetch station data of the Deutsche Bahn. The gem
uses the json api from [http://54.93.120.139/api/station/](http://54.93.120.139/api/station/)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'deutschebahn'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install deutschebahn

## Usage

```ruby
require 'deutschebahn'

stations = Deutschebahn.stations
stations.first.name
```
The `Deutschebahn.stations` creates an array of `Deutschebahn::Station`

###Method calls
The `Deutschebahn::Station` provides basic method calls.
* `local_distance_traffic?`
* `long_distance_traffic?`
* `name`
* `state`
* `management`
* `place`
* `street`
* `transport_association`
* `stops`
* `supporter`
* `zipcode`
* `number`
* `category`

## Development

The gem is developed for the [3rd hackerthon](https://www.mindboxberlin.com/index.php/3rdhackathon.html)
from the Deutsch Bahn.

###Data Fetching
The Data from the json looks like this.
```json
{
    "_id": "566af53f271da51420e9c385",
    "bfNr": 119,
    "bundesland": "Hessen",
    "bm": "Darmstadt",
    "station": "Altheim (Hess)",
    "bfDsAbk": "FAT",
    "katVst": 6,
    "strasse": "Münstererstr. 19",
    "plz": 64839,
    "ort": "Münster",
    "aufgabentraeger": "Rhein-Main-Verkehrsverbund GmbH",
    "verkehrsVerb": "RMV",
    "fernverkehr": true,
    "nahverkehr": true,
    "__v": 0
}
```


## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/DenniJensen/deutschebahn.

