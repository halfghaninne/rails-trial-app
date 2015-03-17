class TracksController < ApplicationController
  
  def index
    @tracks = Track.all
  end
  
  def create
    
  end
  
  def save
    newTrack = Track.create({name: params[:name], 
                            artist: params[:artist], 
                            url: params[:url]})
    
    
    redirect_to controller: tracks, action: index
  end
end
