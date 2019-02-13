require './test/test_helper'

class LibraryTest < Minitest::Test

  # def setup
  #   @nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
  #   @fifth_season = @nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
  #   @kingdoms = @nk_jemisin.add_book("The Hundred Thousand Kingdoms", "2010")
  #   @harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})
  #   @mockingbird = @harper_lee.add_book("To Kill a Mockingbird", "July 11, 1960")
  #   @dpl = Library.new
  # end

  def test_it_exists
    dpl = Library.new

    assert_instance_of Library, dpl
  end

  def test_it_starts_with_no_books
    # skip
    dpl = Library.new

    assert_equal [], dpl.books
  end

  def test_it_can_add_to_collection
    # skip
    nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
    fifth_season = nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
    kingdoms = nk_jemisin.add_book("The Hundred Thousand Kingdoms", "2010")

    harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.add_book("To Kill a Mockingbird", "July 11, 1960")

    dpl = Library.new

    dpl.add_to_collection(fifth_season)
    binding.pry
    assert_equal [fifth_season], dpl.books

    #
    # binding.pry
    #
    # dpl.add_to_collection(mockingbird)
    # dpl.add_to_collection(kingdoms)
    # assert_equal [fifth_season, mockingbird, kingdoms], dpl.books
  end

  def test_it_can_find_books_included_in_library
    skip
    @dpl.add_to_collection(@fifth_season)
    @dpl.add_to_collection(@mockingbird)
    @dpl.add_to_collection(@kingdoms)

    assert @dpl.include?("To Kill a Mockingbird")
    refute @dpl.include?("A Connecticut Yankee in King Arthur's Court")
  end

  def test_it_can_create_an_alphabetized_card_catalogue
    skip
    @dpl.add_to_collection(@fifth_season)
    @dpl.add_to_collection(@mockingbird)
    @dpl.add_to_collection(@kingdoms)

    assert_equal [@fifth_season], @dpl.card_catalogue
    # assert_equal [@fifth_season, @kingdoms, @mockingbird], @dpl.card_catalogue

  end

# >
# # NOTE:this method returns an array of books in alphabetical order by author's last name
# # => [#<Book:0x007f98a9c6ace8 @author_last_name="Jemisin"...>, #<Book:0x007fb410ea56e8 @author_last_name="Jemisin"...>, #<Book:0x007fb410e8e1f0 @author_last_name="Lee"...> ]

end
