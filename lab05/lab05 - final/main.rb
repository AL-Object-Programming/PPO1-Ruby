require './library.rb'
require './novel'
require './comic_book.rb'
require './textbook.rb'
require './new_type.rb'

class Main
  @library = Library.new
  @library.add_book(Novel.new("The Vector Prime"))
  @library.add_book(Novel.new("Star by Star"))
  @library.add_book(Novel.new("The Unifying Force"))
  @library.add_book(ComicBook.new("Donald Duck - Ride without hands"))
  @library.add_book(Textbook.new("The Well-Grounded Rubyist"))

  loop do
    puts "-- LIBRARY --"
    puts "1 to add new book"
    puts "2 to list all books"
    puts "3 to list novels"
    puts "4 to list comic books"
    puts "5 to list textbooks"
    puts "0 to leave"
    puts "-- LIBRARY --"
    puts " "
    @answer = gets.chomp.to_i
    puts " "

    if @answer == 1
      puts ""
      puts "Type name"
      @name = gets.chomp
      puts ""
      puts "Type type"
      @type = gets.chomp
      @new_book = NewType.new(@name, @type)
      puts @new_book
      @library.add_book(@new_book)

    end

    if @answer == 2
      @library.get_books.each do |book|
        puts book.get_type + " || " + book.title
      end
      puts " "
    end

    if @answer == 3
      @library.get_books.each do |book|
        if book.get_type == "Novel"
          puts book.get_type + " || " + book.title
        end
      end
      puts " "
    end

    if @answer == 4
      @library.get_books.each do |book|
        if book.get_type == "Comic book"
          puts book.get_type + " || " + book.title
        end
      end
      puts " "
    end

    if @answer == 5
      @library.get_books.each do |book|
        if book.get_type == "Textbook"
          puts book.get_type + " || " + book.title
        end
      end
      puts " "
    end

    if @answer == 0
      break
    end
  end
end