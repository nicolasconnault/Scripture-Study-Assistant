require 'ar-extensions'

class Book < ActiveRecord::Base
  belongs_to :volume
  has_many :chapters

  def self.find_by_abbr(abbr)
    if book = Book.find(:first, :conditions => ["LOWER(name) LIKE ?", abbr.downcase ])
      book
    else
      Book.find(:all, :conditions => { :abbreviations => /#{abbr.downcase.chomp('.')}/ }).first
    end
  end
end
