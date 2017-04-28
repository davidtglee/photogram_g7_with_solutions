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
  p.caption=params["description"]
  p.source=params["the_source"]
  p.save

  @current_count=Photo.count

  render("temp/create_row.html.erb")
end

def index
  @list_of_photos=Photo.all.order(created_a=> :desc)
  render("temp/index.html.erb")
end



def edit_form
    @my_photo=Photo.find(params["la_id"])
  render("temp/edit_form.html.erb")
end

def update_row
  render("temp/update_row.erb")
end

def destroy_row
  render("temp/destroy_row.html.erb")
end

end
