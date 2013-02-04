# newtonjs/frame #

Animation frame wrapper.

**Version:** *0.1.0*<br/>
**Build status:** [![Build Status][travis-status]][travis]


### Usage ###

```js
var frame = require('newtonjs-frame');

frame.request(function(time) {
  console.log(time.now);    // [object Date]
  console.log(time.last);   // [object Date]
  console.log(time.delta);  // [object Number]
  console.log(time.start);  // [object Date]
});
```


### Installation ###

This library isn't available from the NPM repository or any other
package manager, but you can still add it to your `package.json`

```json
{
  "dependencies": {
    "newtonjs-frame": "git://github.com/newtonjs/frame.git#master"
  }
}
```


### Contributing ###

We accept contributions to the source via Pull Request, but you must run the tests
and compile the JavaScript before it will be considered for merge.
The source for this library is written in CoffeeScript, but it is distributed with
the compiled JavaScript.

```bash
$ npm test                # Run tests
$ npm run-script compile  # Compile JavaScript
```


### License ###
The content of this library is released under the **MIT License** by **Andrew Lawson**.<br/>
You can find a copy of this license at http://www.opensource.org/licenses/mit


<!-- Links -->
[travis]: https://travis-ci.org/newtonjs/frame
[travis-status]: https://travis-ci.org/newtonjs/frame.png
