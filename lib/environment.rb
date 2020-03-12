require "./lib/myCliProject/version"
require_relative "./myCliProject/cli" 
require_relative "./myCliProject/api" 
require_relative "./myCliProject/game"


require 'pry'
require 'httparty'
require 'launchy'
require 'rainbow'

module MyCliProject
  class Error < StandardError; end  
  # Your code goes here...
end
