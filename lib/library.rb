class Library

  attr_reader :books

  def initialize
    @books = []
  end

  def add_to_collection(book)
    @books << book
  end

  def include?(book_string)
    @books.flatten.find do |book|
      book.title == book_string
    end
  end

  def card_catalogue
    @books.flatten.uniq
    # end
  end

end
