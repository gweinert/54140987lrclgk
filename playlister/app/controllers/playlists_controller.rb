class PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.all
  end

  def new
    if params[:id].nil?
      @playlist = Playlist.new
    else
      @playlist = Playlist.find(params[:id])
    end

    @users = User.all
    @songs = Song.all
  end

  def create
    @playlist = Playlist.new(params_hash)
    # @playlist.song_ids = params[:playlist][:song_ids]
    if @playlist.save
      flash[:success] = "Successfully created playlist"
      redirect_to playlists_path
    else
      render :new
    end
  end

  def destroy
    @playlist = Playlist.find(params[:id])
    if @playlist.destroy
      flash[:success] = "Successfully destroyed"
    else
      flash[:error] = "failed to destroy"
    end
    redirect_to root_path
  end

  private
    def params_hash
      params.require(:playlist).permit(:name, :user_id, :song_ids => [])
    end

end
