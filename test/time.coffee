'use strict'

{assert} = require 'chai'
{spy}    = require 'sinon'

path = '../src/time'
{Time} = require path

suite 'time:', ->

  suite 'create:', ->
    start = last = null

    setup ->
      start = new Date()
      last  = new Date()
      last.setTime(start.getTime() - 1000)

    test 'Creating new Time with start and last', ->
      time = new Time start, last
      assert.strictEqual start, time.start
      assert.strictEqual last, time.last
