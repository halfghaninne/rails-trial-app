class TracksController < ApplicationController
  
  def index
    @tracks = Track.all
  end
  
  def show
    id = params[:id]
    @track = Track.find(id)
  end
  
  def edit
    @track = Track.find(params[:id])
  end
  
  def update
    
    Track.update(params[:id], 
                :name => params[:name], 
                :artist => params[:artist], 
                :url => params[:url])

    redirect_to "/tracks/#{params[:id]}"
  end
  
  def confirm_delete
    @track = Track.find(params[:id])
  end
  
  def delete
    Track.find(params[:id]).destroy
    
    redirect_to controller: "tracks", action: "index"
  end
  
  def create  
  end
  
  def save
    newTrack = Track.create({name: params[:name], 
                            artist: params[:artist], 
                            url: params[:url]})
    
    
    redirect_to controller: "tracks", action: "index"
  end
end
