'use strict'

{Time} = require './time'
raf    = require 'newtonjs-raf'

frame = {}
start = null
last  = null

# Request frame
#
# @param [Function] fn
# @return [Number] id
frame.request = (fn) ->
  raf.requestAnimationFrame (timestamp) ->
    start = Date.now() unless start?
    fn new Time start, last, timestamp
    last = Date.now()

# Cancel a requested frame
#
# @param [Number] id
frame.cancel = (id) ->
  raf.cancelAnimationFrame id

module.exports = frame
