class PlaylistsController < ApplicationController
  
  def index
    @playlists = Playlist.all
  end
  
  def show
    @playlist = Playlist.find(params[:id])
  end
  
  def new
    @playlist = Playlist.new
  end
  
  def create
    newPlaylist = Playlist.create(params[:playlist])
    
    redirect_to controller: "playlists", action: "show"
  end
  
  def delete
    Playlist.find(params[:id]).destroy
    
    redirect_to controller: "playlists", action: "index"
  end
  
  # def edit
  # end
  
end
