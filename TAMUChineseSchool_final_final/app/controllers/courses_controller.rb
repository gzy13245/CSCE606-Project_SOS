class CoursesController < ApplicationController
  def index

    @courses = Course.all
    @teachers=User.all

    #authorize User
  end


  def show
    @courses = Course.all
    @teachers=User.all
  end



  before_filter :authenticate_user!
  #after_action :verify_authorized

  def new
    @teachers=User.select{|a| a.teacher?}

  end

  def create
    @course = Course.new(course_params)
    authorize @course
    @course.save
    redirect_to @course
  end




  def destroy
    @course = Course.find(params[:id])
    authorize @course
    @course.destroy

    redirect_to courses_path
  end

  private
  def course_params
    params.require(:course).permit(:year, :semester,:name,:class_room,:start_time,:end_time,:textbook, :user_id, :course_discription)
  end



end
