class Playlist < ActiveRecord::Base
  
  belongs_to :user, :dependent=> :destroy
  has_many :playlist_selections
  has_many :songs, :through => :playlist_selections, :dependent => :nullify

  validates :name, presence: true, uniqueness:true
  validates :owner, presence: true

end
