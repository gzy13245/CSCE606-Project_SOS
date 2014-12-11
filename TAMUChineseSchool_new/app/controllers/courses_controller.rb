class CoursesController < ApplicationController
  def new
    @courses=Course.all
    @teachers=Teacher.all
  end

  def create
    @course = Course.new(course_params)

    @course.save
    redirect_to @course
  end

  def show
    redirect_to action: "index"
  end

  def index
    @courses = Course.all
  end

  private
  def course_params
    params.require(:course).permit(:year, :semester,:name,:class_room,:time,:textbook,:course_discription)
  end

end
