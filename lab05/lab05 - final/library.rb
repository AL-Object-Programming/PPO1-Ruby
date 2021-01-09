class Library
  :books

  def initialize
    @books = []
  end

  def add_book(book)
    @books.push(book)
  end

  def get_books
    @books
  end

end