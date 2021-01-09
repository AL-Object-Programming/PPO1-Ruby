require './book.rb'

class Novel < Book
  def initialize(title)
    super(title)
  end

  def get_type
    'Novel'
  end

end
