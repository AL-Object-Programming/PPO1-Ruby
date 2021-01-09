require './library.rb'
require './novel'

class Main
  @library = Library.new
  @library.add_novel(Novel.new("The Vector Prime"))
  @library.add_novel(Novel.new("Star by Star"))
  @library.add_novel(Novel.new("The Unifying Force"))

  @library.get_books.each do |book|
    puts book.get_type + " || " + book.title
  end
end