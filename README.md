[![Build Status](https://travis-ci.org/wearefractal/goosestrap.png?branch=master)](https://travis-ci.org/wearefractal/goosestrap)

## Information

<table>
<tr>
<td>Package</td><td>goosestrap</td>
</tr>
<tr>
<td>Description</td>
<td>bootstrap mongoose</td>
</tr>
<tr>
<td>Node Version</td>
<td>>= 0.4</td>
</tr>
</table>

goosestrap is a simple model autoloader for mongoose.

## Install

`npm install goosestrap`

## Usage

goosestrap supports globbing via [node-glob](https://github.com/isaacs/node-glob): 

```js
var goosestrap = require('goosestrap');
var path = require('path');

var db = goosestrap("mongodb://localhost/mydb", path.resolve("./models/**/*"));

var User = db.model('User');
var Movie = db.model('Movie');
```

## LICENSE

(MIT License)

Copyright (c) 2015 Fractal <contact@wearefractal.com>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
