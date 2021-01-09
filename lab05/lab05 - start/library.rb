class Library
  :books

  def initialize
    @books = []
  end

  def add_novel(novel)
    @books.push(novel)
  end

  def get_books
    @books
  end

end