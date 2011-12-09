path = require 'path'
isDomainModule = require './isDomainModule'
getArtifactType = require './getArtifactType'

getMockPath = (namespace) -> 

  if isDomainModule namespace 
  
    names    = namespace.split '.' 
    artifact = names.pop()
   
    ns = []
    ns.push name for name in names
    ns.push (getArtifactType artifact) + "s" # make plural
    ns.push "specs"
    ns.push "mocks"  
    ns.push artifact

    return path.join rzr.DOMAIN_ROOT, (ns.join '/') 

  else

    return path.join rzr.DOMAIN_ROOT, "specs/mocks/#{namespace}"


module.exports = getMockPath
