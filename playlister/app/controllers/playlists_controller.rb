class PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.all
  end

  def new
    @playlist = Playlist.new
    @users = User.all
    @songs = Song.all
  end

  def create
    @playlist = Playlist.new(params_hash)
    if @playlist.save
      # @playlist.playlist_selections.playlist_id = @playlist.id
      flash[:success] = "Successfully created playlist"
      redirect_to playlists_path
    else
      render :new
    end
  end

  private
    def params_hash
      # params.require(:playlist).permit(:name, :user_id, :playlist_selections_attributes => [:id, :song_id, :playlist_id])
      params.require(:playlist).permit(:name, :user_id, :songs_attributes => [:id, :name, :artist])
    end

end
