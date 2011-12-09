path = require 'path'
modulate = require 'modulate' 
getMockPath = require './getMockPath'

load = (namespace) ->  
  
  if mockExists namespace then return require( getMockPath namespace )
  else return modulate.load namespace


mockExists = (namespace) -> 
  try
    require.resolve( getMockPath namespace )
    return true
  catch err
    return false


module.exports = load
