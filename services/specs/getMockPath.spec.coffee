path = require 'path'
should = require 'should'
getMockPath = require '../getMockPath'

global.rzr = {}
rzr.APP_ROOT    = "/yourapp"
rzr.DOMAIN_ROOT = "/yourapp/domain"


#>> Given a service namespace

ns = "foo.bar"

#>> When I call getMockPath

mockPath = getMockPath ns 

#>> Then

mockPath.should.equal "/yourapp/domain/foo/services/specs/mocks/bar"


#>> Given a Model namespace

ns = "foo.ModelName"

#>> When I call getMockPath

mockPath = getMockPath ns 

#>> Then

mockPath.should.equal "/yourapp/domain/foo/models/specs/mocks/ModelName"


#>> Given a regular module 

ns = 'useless'
  
#>> When I call getMockPath

mockPath = getMockPath ns 

#>> Then

mockPath.should.equal "/yourapp/domain/specs/mocks/useless"


