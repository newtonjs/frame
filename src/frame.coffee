'use strict'

{Time}   = require './time'
polyfill = require './polyfill'

frame = {}

# Request frame
#
# @param [Function] fn
# @return [Number] id
frame.request = (fn) ->
  polyfill.requestAnimationFrame ->
    fn new Time start, last

# Cancel a requested frame
#
# @param [Number] id
frame.cancel = (id) ->
  polyfill.cancelAnimationFrame id

module.exports = frame
