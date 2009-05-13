class Reference < ActiveRecord::Base
  has_and_belongs_to_many :themes

  def verses
    # Break down reference
    refparts = self.ref.split(':')
    
    begin
      first_part = Reference.guess_book_and_chapter(refparts[0])
    rescue ArgumentError => e
      puts e.message
      nil
    end

    chapter = first_part[:chapter]
    book = first_part[:book]
    
    verses_string = refparts[1]
    #split by comma
    split_verses = verses_string.split(',')
    verses = Array.new

    split_verses.each do |sv|
      if matches = sv.match(/[0-9]+-[0-9]+/)
        sv.split('-').each do |v|
        puts v
          verses = verses << Verse.find_by_chapter_id_and_number(chapter.id, v.to_i)
        end
      else
        verses = verses << Verse.find_by_chapter_id_and_number(chapter.id, sv.to_i)
      end
    end

    verses
  end
  
  def self.guess_book_and_chapter part
    if matches = part.match(/(.*)\s([0-9]*)$/)
      chapter = matches[2]
      book = matches[1].chomp

      book_object = Book.find_by_abbr(book)
      {:chapter => Chapter.find_by_book_id_and_number(book_object.id, chapter), :book => book_object}
    else
      raise ArgumentError, 'Your reference was not properly formatted'
    end
  end
end
