#>> Setup

path = require 'path'
should = require 'should'
sample = require '../sample'

global.rzr = {}
rzr.DOMAIN_ROOT = path.resolve '.' # current dir (services/specs/)


#>> When I try to load a sample

samp = sample 'foo.Bar'

#>> Then

samp.isSample.should.be.true

