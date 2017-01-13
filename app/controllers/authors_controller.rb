class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    author_params = params.require(:author).permit(:first_name, :prefix, :last_name, :author_img, :bio, :quotes)

    @author = Author.new(author_params)

    if @author.save
       redirect_to @author
    else
       render 'new'
    end
  end
  
  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to authors_path
  end

end
