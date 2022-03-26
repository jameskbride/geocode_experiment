# GeocodeExperiment

This is a short throwaway project to geocode a list of addresses into lat/lng coordinates. It uses the [GoogleMaps](https://hex.pm/packages/google_maps/) hex package to 
invoke the [Geocoding API](https://developers.google.com/maps/documentation/geocoding/overview). 

## Building
First, make sure you've set your Google Maps API key as an environment variable at `GOOGLE_MAPS_API_KEY`.

```shell
mix compile
mix escript.build
```

## Usage
```shell
./geocode_experiment addresses.txt
```

Where `addresses.txt` is a file of addresses with a single address per line. It outputs lat/lng coordinates for 
each address to standard out in the format `lat,lng`, with one coordinate per line.