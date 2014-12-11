class CoursesController < ApplicationController
  def new
    @teachers=Teacher.all
  end

  def create

  end

end
