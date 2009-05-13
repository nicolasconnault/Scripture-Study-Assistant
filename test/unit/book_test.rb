require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "find_by_abbr" do
    expected = Book.find_by_name('Alma')
    assert_equal(expected, Book.find_by_abbr('Alma'))
    assert_equal(expected, Book.find_by_abbr('alma'))
    
    expected = Book.find_by_name('3 Nephi')
    assert_equal(expected, Book.find_by_abbr('3 Nephi'))
    assert_equal(expected, Book.find_by_abbr('3 nephi'))
    assert_equal(expected, Book.find_by_abbr('3 Ne'))
    assert_equal(expected, Book.find_by_abbr('3 ne.'))
    
    expected = Book.find_by_name('Words of Mormon')
    assert_equal(expected, Book.find_by_abbr('Words of Mormon'))
    assert_equal(expected, Book.find_by_abbr('words of mormon'))
    assert_equal(expected, Book.find_by_abbr('w of m'))
    assert_equal(expected, Book.find_by_abbr('W of M'))
  end
end
