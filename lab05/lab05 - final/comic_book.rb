class ComicBook < Book
  def initialize(title)
    super(title)
  end

  def get_type
    "Comic book"
  end

end