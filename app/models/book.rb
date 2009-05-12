class Book < ActiveRecord::Base
  belongs_to :volume
  has_many :chapters
end
