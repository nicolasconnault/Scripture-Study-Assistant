require 'ar-extensions'

class Book < ActiveRecord::Base
  belongs_to :volume
  has_many :chapters

  def self.find_by_abbr(abbr)
    if book = self.find_by_name(abbr)
      book
    else
      Book.find(:all, :conditions => { :abbreviations => /#{abbr.downcase}/ }).first
    end
  end
end
