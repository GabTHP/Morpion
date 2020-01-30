require 'pry'

class BoardCase
  attr_accessor :content, :position

  def initialize(position)
    @content =  "   "
    @position = position.to_s
  end

end



