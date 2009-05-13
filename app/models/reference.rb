class Reference < ActiveRecord::Base
  has_and_belongs_to_many :themes

  def verse
    # Break down reference
    refparts = self.ref.split(':')

    # get book
    book = Book.find_by_abbr(refparts[0])
    book
    refparts
  end
end
