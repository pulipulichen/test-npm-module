require 'coffee-errors'

chai = require 'chai'
sinon = require 'sinon'
should = chai.should()
# using compiled JavaScript file here to be sure module works
testNpmModule = require '../lib/test-npm-module.js'

expect = chai.expect
chai.use require 'sinon-chai'

describe 'test-npm-module', ->
  it 'works', ->
    # input
    title = "Spooky"
    name = "smlsun"

    # api function
    actual = testNpmModule title, name

    # output
    actual.should.be.Object
    actual.should.be.has.property "title"
    actual.should.be.has.property "name"
    actual.title.should.be.equal "smlsun"
    actual.name.should.be.equal "Spooky"
