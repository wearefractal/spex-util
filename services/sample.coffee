path = require 'path'

sample = (namespace) -> 

  names    = namespace.split '.' 
  artifact = names.pop()
 
  ns = []
  ns.push name for name in names
  ns.push "models"
  ns.push "specs"
  ns.push "samples"  
  ns.push artifact

  return require( path.join rzr.DOMAIN_ROOT, (ns.join '/') )


module.exports = sample
