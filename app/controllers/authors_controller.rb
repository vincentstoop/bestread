# I don't understand why we can have an instance variable (@author) that changes with every other method. Wasn't the whole point of an instance variable that it would be accessable from outside the method (but inside the class?)

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

# I don't understand why we have an edit method and an update method.
  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    author_params = params.require(:author).permit(:first_name, :prefix, :last_name, :author_img, :bio, :quotes)

    if @author.update_attributes(author_params)
      redirect_to @author
    else
      render 'edit'
    end
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to authors_path
  end

end
