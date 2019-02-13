class Author

  attr_reader :first_name,
              :last_name,
              # :books

  def initialize(info)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @books = []
  end

  def add_book(title, publication_date)
    info = {author_first_name: @first_name, author_last_name: @last_name, title: title, publication_date: publication_date}
    @books << Book.new(info)
  end

  def books
    @books
  end

end
