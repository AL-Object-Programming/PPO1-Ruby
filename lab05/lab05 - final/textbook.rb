class Textbook < Book
  def initialize(title)
    super(title)
  end

  def get_type
    "Textbook"
  end

end