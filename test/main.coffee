goosestrap = require '../'
should     = require 'should'
path       = require 'path'

module.exports = 

  "it should connect": =>
    @db = goosestrap "mongodb://localhost/goosestrap", path.resolve './test/models/*'

  "db should be an object": =>
    (typeof @db).should.equal 'object'

  "it should load all models": =>
    (typeof @db.model 'User').should.equal 'function'
    (typeof @db.model 'Movie').should.equal 'function'

  "it should support nested dir globbing": =>
    @db = goosestrap "mongodb://localhost/goosestrap", path.resolve './test/nested/**/models/*'

  "db should be an object": =>
    (typeof @db).should.equal 'object'

  "it should load all models": =>
    (typeof @db.model 'User').should.equal 'function'
    (typeof @db.model 'Movie').should.equal 'function'

