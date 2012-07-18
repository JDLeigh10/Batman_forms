class PicturesController < ApplicationController

  def create
    new_url = params["url"]
    new_note = params["caption"]
    p = Picture.new
    p.url = new_url
    p.note = new_note
    p.save
    redirect_to "http://localhost:3000/pictures"
  end
  
  def index
    @pictures = Picture.all
  end
  
  def show
    pic_id = params["id"].to_i
    @picture = Picture.find_by_id(pic_id)
    
    if @picture == nil
      redirect_to "http://localhost:3000/pictures"
      return
    end
    
    @bgcolor = params["color"]
  end
  
  def edit
    @p = Picture.find_by_id(params[:id].to_i)
  end
  
  def update
  id = params[:id].to_i
  p = Picture.find_by_id id
  p.url = params[:url]
  p.note = params[:note]
  p.favorite = params[:favorite]
  if p.favorite == "on"
    p.favorite = true
  end
  p.save
  redirect_to "/pictures/#{p.id}"
  end
  
  def destroy
  id = params[:id].to_i
  p = Picture.find_by_id id
  p.destroy
  redirect_to "/pictures"
  end
  
  
  
end