# JMesh data file samples

The [JMesh Specification](https://github.com/NeuroJSON/jmesh) defines a 
set of JSON-based annotation to represent geometric and mesh data. This
repository provides a variety of sample JSON/JMesh files for testing 
purposes.

Text-based JMesh files (`.jmsh`) is fully compatible with the JSON format 
and can be opened by nearly all JSON parsers across programming environments.
It can also be converted to (and back) a binary JSON-based format (`.bmsh`)
to achieve smaller file sizes. More information regarding JMesh can be found in this
[Wikipedia page](https://en.wikipedia.org/wiki/JMesh).

On the top level of this repository, you can find two special files
* `.neurojson.io` - a bash shell script to harmonize all data files in the
  repository and publish those to the neurojson.io database
* `.neurojson.header.json` - a JSON header to be merged with each file before
  publishing it on neurojson.io
