import json as json

data = json.load(open('/tmp/json/result.geojson'))

geojson = {
    "type": "FeatureCollection",
    "features": [
        {
            "type": "Feature",
            "geometry": 'NULL',
            "properties": d,
        } for d in data]
}

output = open('/tmp/go.geojson', 'w')
json.dump(geojson, output)

print geojson
