#>> Setup

path = require 'path'
should = require 'should'
spexUtil = require '../spex-util'

global.rzr = {}
rzr.DOMAIN_ROOT = path.resolve './services/specs/' 


## load

#>> When I load a regular module

useless = spexUtil.load 'useless'

#>> Then

useless.should.have.property "do"


#>> When I try to load a domain module that has a mock

bar = spexUtil.load 'foo.bar'

#>> Then

bar.isMock.should.be.true


## sample

#>> When I try to load a sample

samp = spexUtil.sample 'foo.Bar'

#>> Then

samp.isSample.should.be.true

