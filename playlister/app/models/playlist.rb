class Playlist < ActiveRecord::Base
  
  belongs_to :user
  has_many :playlist_selections
  has_many :songs, :through => :playlist_selections

  accepts_nested_attributes_for :songs
  # accepts_nested_attributes_for :playlist_selections

end
