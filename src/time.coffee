'use strict'

class Time

  delta: 0

  # @param [Date] start
  # @param [Date] last
  constructor: (@start, @last) ->
    @now = new Date();
    @delta = @now.getTime() - @last.getTime() if @last?

module.exports = {Time}
