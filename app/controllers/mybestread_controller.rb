class MybestreadController < ApplicationController
  def profile
    @readbooks = Book.first(4)
    @wishbooks = Book.last(2)
  end



end
