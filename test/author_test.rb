require './test/test_helper'

class AuthorTest < Minitest::Test

  def setup
    @nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})

  end

  def test_it_exists
    assert_instance_of Author, @nk_jemisin
  end

  def test_it_has_attributes
    assert_equal "N.K.", @nk_jemisin.first_name
    assert_equal "Jemisin", @nk_jemisin.last_name
  end

  def test_it_starts_with_no_books
    assert_equal [], @nk_jemisin.books
  end

  def test_it_can_add_books
    # skip
    @nk_jemisin.add_book("The Fifth Season", "November 3, 2015")

    assert_equal 1, @nk_jemisin.books.length

    @nk_jemisin.add_book("The Hundred Thousand Kingdoms", "2010")

    assert_equal 2, @nk_jemisin.books.length
    assert_equal Book, @nk_jemisin.books[1].class
  end

end
