class CoursesController < ApplicationController
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized


  def index

    @courses = Course.all
    @teachers=User.all

#    authorize @courses
  end


  def show
#    @courses = Course.all
#    @teachers=User.all

    redirect_to action: 'index'
  end

  before_filter :authenticate_user!, :except => :index
#  after_action :verify_authorized, :except => :index, :except => :new

  def new
    @teachers=User.select{|a| a.teacher?}

#    @course = Course.new()
    authorize Course.new
  end

  def create
    @course = Course.new(course_params)
    authorize @course

    @course.save
    redirect_to @course
  end

  def edit
    @course = Course.find(params[:id])
    authorize @course
    @teachers=User.select{|a| a.teacher?}
  end

  def update
    @course = Course.find(params[:id])
    authorize @course
    @teachers=User.select{|a| a.teacher?}

    if @course.update(course_params)
      redirect_to courses_path, :notice => "Course updated."
    else
      render 'edit',:alert => "Unable to update user."
    end
  end


  def destroy
    @course = Course.find(params[:id])
    authorize @course

    @course.destroy

    redirect_to courses_path, :notice => "Course deleted."
  end

  private
  def course_params
    params.require(:course).permit(:year, :semester,:name,:class_room,:start_time,:end_time,:textbook, :user_id, :course_discription)
  end

  private

  def user_not_authorized
    flash[:error] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end

end
