class PagesController < ApplicationController
  def home
    @last_book = Book.last
    @last_author = Author.last
  end
end
