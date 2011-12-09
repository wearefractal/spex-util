#>> Setup

path = require 'path'
should = require 'should'
load = require '../load'

global.rzr = {}
rzr.DOMAIN_ROOT = path.resolve '.' # current dir (services/specs/)


#>> When I try to load a regular module that has no mock

useless = load 'useless'

#>> Then

useless.should.have.property 'do'


#>> When I try to load a domain module that has a mock

bar = load 'foo.bar'

#>> Then

bar.isMock.should.be.true
