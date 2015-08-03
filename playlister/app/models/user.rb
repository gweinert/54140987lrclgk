class User < ActiveRecord::Base
  has_many :playlists, :depedent => :destroy
end
