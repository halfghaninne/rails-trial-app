class TracksController < ApplicationController
  
  def index
    @tracks = Track.all
  end
  
  def show
    id = params[:id]
    @track = Track.find(id)
    @spotify_string = "https://embed.spotify.com/?uri=spotify%3Atrack%3A" + @track.link
  end
  
  def edit
    @track = Track.find(params[:id])
  end
  
  def update
    Track.update(params[:id], params[:track])

    redirect_to "/tracks/#{params[:id]}"
  end
  
  def confirm_delete
    @track = Track.find(params[:id])
  end
  
  def delete
    Track.find(params[:id]).destroy
    
    redirect_to controller: "tracks", action: "index"
  end
  
  def new 
    @track = Track.new 
  end
  
  def create
    newTrack = Track.create(params[:track])

    
    redirect_to controller: "tracks", action: "index"
  end
end
