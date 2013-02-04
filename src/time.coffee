'use strict'

class Time

  delta: 0

  # @param [Number] start
  # @param [Number] last
  # @param [Number] progress
  constructor: (@start, @last, @progress) ->
    @now = Date.now();
    @delta = @now - @last if @last?

module.exports = {Time}
