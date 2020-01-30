require 'bundler'
Bundler.require 
 


require 'pry'
require_relative 'boardcase'


class Board
  attr_accessor :array_case

  def initialize

  @array_case = []

  @array_case << BoardCase.new("A1")
  @array_case << BoardCase.new("A2")
  @array_case << BoardCase.new("A3")
  @array_case << BoardCase.new("B1")
  @array_case << BoardCase.new("B2")
  @array_case << BoardCase.new("B3")
  @array_case << BoardCase.new("C1")
  @array_case << BoardCase.new("C2")
  @array_case << BoardCase.new("C3")

  end

end






