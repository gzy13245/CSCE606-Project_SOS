class TakingCoursesController < ApplicationController
  before_filter :authenticate_user!
  #after_action :verify_authorized

  def new
    @curr_user = current_user
    @courses=Course.all




    @family = current_user.family
    if @family.blank?
      redirect_to new_family_path, :alert => "Please add child(ren) first."
    else

    @children = @family.children

    if @children.blank?
      redirect_to new_family_path, :alert => "Please add child(ren) first."
    end
    end
    end

  def create
    @curr_user = current_user
    @courses=Course.all


    cur_params = secure_params

    @family = current_user.family
    if @family.blank?
      redirect_to new_family_path, :alert => "Please add child(ren) first."
    else

    @children = @family.children

    if @children.blank?
      redirect_to new_family_path, :alert => "Please add child(ren) first."
    else

      @taking_course = TakingCourse.new(cur_params)
      @taking_course.save
   #   redirect_to taking_courses_path
    redirect_to @family
      end
    end
    end

  def index
   # @taking_courses=TakingCourse.all
   # @children=Child.all
   # @courses=Course.all
    redirect_to families_path
  end

  def show
    redirect_to action: "index"
#    @user = User.find(params[:id])
#    authorize @user
  end

  def update
#    @user = User.find(params[:id])
#    authorize @user
#    if @user.update_attributes(secure_params)
#      redirect_to users_path, :notice => "User updated."
#    else
#      redirect_to users_path, :alert => "Unable to update user."
#    end
  end

  def destroy
    takingCourse = TakingCourse.find_by_course_id(params[:id])
    takingCourse.destroy

    redirect_to families_path, :notice => "Course deleted."

#    user = User.find(params[:id])
#    authorize user
#    user.destroy
#    redirect_to users_path, :notice => "User deleted."
  end

  private

  def secure_params
    params.require(:taking_course).permit(:child_id,:course_id)
  end
end
