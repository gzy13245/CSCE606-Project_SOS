class CoursesController < ApplicationController
  def new
    @courses=Course.all
    @teachers=User.select{|a| a.teacher?}
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
    @teachers=User.all
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    redirect_to courses_path
  end

  private
  def course_params
    params.require(:course).permit(:year, :semester,:name,:class_room,:start_time,:end_time,:textbook, :user_id, :course_discription)
  end

end
