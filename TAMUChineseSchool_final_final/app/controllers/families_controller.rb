class FamiliesController < ApplicationController
  before_filter :authenticate_user!
  #after_action :verify_authorized

  def new

  end

  def create
    @curr_user = current_user

    cur_params = secure_params

    @family = current_user.family
    if @family == nil
      @family = Family.new(user_id: @curr_user.id)
      @family.save
    end

    if cur_params[:name] != nil
      @child = Child.new(cur_params.merge({family_id: @family.id}))
      @child.save
    end

    redirect_to @family
  end

  def index
#    @users = User.all
#    authorize User

    @family = current_user.family
    @children = nil
    if(@family != nil)
      @children = @family.children
    end

    @TakingCourses =TakingCourse.all #@children.map{|r| TakingCourse.find_by_child_id(r.id) };
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
    child = Child.find(params[:id])
    child.destroy

    redirect_to families_path, :notice => "Child deleted."

#    user = User.find(params[:id])
#    authorize user
#    user.destroy
#    redirect_to users_path, :notice => "User deleted."
  end

  private

  def secure_params
    params.require(:family).permit!
  end
end
