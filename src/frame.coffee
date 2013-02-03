'use strict'

{Time}   = require './time'
polyfill = require './polyfill'

frame = {}
start = null
last  = null

# Request frame
#
# @param [Function] fn
# @return [Number] id
frame.request = (fn) ->
  polyfill.requestAnimationFrame (timestamp) ->
    start = new Date() if start?
    fn new Time start, last
    last = new Date().setTime timestamp

# Cancel a requested frame
#
# @param [Number] id
frame.cancel = (id) ->
  polyfill.cancelAnimationFrame id
  start = null

module.exports = frame
