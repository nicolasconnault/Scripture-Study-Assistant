require 'test_helper'

class ReferenceTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "verses" do
    reference = Reference.new({:ref => 'asdpow3F#$3,34.'})
    # assert_raise('ArgumentError') {reference.verses}

    reference = Reference.new({:ref => 'Alma 18: 18-19'})
    assert_equal Array, reference.verses.class
    assert_equal 2, reference.verses.length

    # We should get a Verse object back
    
    reference = Reference.new({:ref => 'Isa. 14: 29-32'})
  end

  test "guess_book_and_chapter" do
    assert_equal({:chapter => Chapter.find(120), :book => Book.find(10)}, Reference.guess_book_and_chapter("Alma 18"))
    assert_equal({:chapter => Chapter.find(1076), :book => Book.find(66)}, Reference.guess_book_and_chapter("Isaiah 14"))
  end
end
