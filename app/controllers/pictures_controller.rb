class PicturesController < ApplicationController
  def show
  @my_photo=Photo.find(params["the_id"])
    render("temp/show.html.erb")
  end

def new_form
  @source=params[:file_source]
  @description=params[:description]
    render("temp/new_form.html.erb")
end

def create_row
  p=Photo.new
  p.caption=params["cap"]
  p.source=params["the_source"]

save_status==@photo.save

if save_status==true
 redirect_to("/photos", {:notice => "Created a photo successfully!"})
else
    p.save
  @current_count=Photo.count
  redirect_to("/photos")
end

def index
  @list_of_photos=Photo.all.order(:created_at => "desc")
    render("temp/index.html.erb")
end

def edit_form
    @my_photo=Photo.find(params["la_id"])
    render("temp/edit_form.html.erb")
end

def update_row
  @my_photo=Photo.find(params["le_id"])
  p=@my_photo
  p.caption=params["cap"]
  p.source=params["the_source"]
  p.save
  @photos=@my_photo.to_s
  redirect_to :controller=>"pictures", :action=>"show", :the_id=>params[:le_id]
end

def destroy_row
  @my_photo=Photo.find(params["da_id"])
  @my_photo.destroy
  redirect_to("/photos")

end

end
