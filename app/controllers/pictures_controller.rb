class PicturesController < ApplicationController

def new_form
  render("temp/new_form.html.erb")
end

def create_row
  render("temp/create_row.html.erb")
end

def index
  render("temp/index.html.erb")
end

def show
@my_photo=Photo.find(params["the_id"])
@the_caption = p.caption
@the_source = p.source
@the_timestamp = p.created_at

  render("temp/show.html.erb")
end

def edit_form
  render("temp/edit_form.html.erb")
end

def update_row
  render("temp/update_row.erb")
end

def destroy_row
  render("temp/destroy_row.html.erb")
end

end
