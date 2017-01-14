class MybestreadController < ApplicationController
  def profile
    @readbooks = Book.last(4)
    @wishbooks = Book.first(2)
  end



end
