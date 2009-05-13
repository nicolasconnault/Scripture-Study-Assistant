require 'test_helper'

class ReferenceTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "verse" do
    reference = Reference.new({:ref => '2 Nephi 12: 4-13'})
    assert_equal("2 Nephi", reference.verse.name)
    # We should get a Verse object back
  end
end
