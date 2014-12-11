class CoursesController < ApplicationController
  def new
    @teachers=Teacher.all
  end

  def create
    @course = Course.new(user_params)

    @course.save
    redirect_to @course
  end

  def show

  end

  private
  def user_params
    params.require(:teacher).permit(
        :user_id)
  end

end
