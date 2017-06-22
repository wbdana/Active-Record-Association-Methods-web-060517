class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    if Artist.all.find{|artist| artist.name == "Drake"}
      drake = Artist.all.find{|artist| artist.name == "Drake"}
    else
      drake = Artist.new(name: "Drake")
    end
    drake.songs << self
    # when this method is called it should assign the song's artist to Drake
    drake
  end
end
