'use strict'

class Time

  # @param [Date] start
  # @param [Date] last
  constructor: (@start, @last) ->
    @now = new Date();
    @delta = @now.getTime() - @last.getTime()

module.exports = {Time}
