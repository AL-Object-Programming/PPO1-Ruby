class Book
  attr_reader :title
  attr_accessor :type

  def initialize(title, type = nil)
    @title = title
    @type = type
  end



end
