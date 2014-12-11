class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)

    @user.save
    redirect_to @user
  end

  def show
    redirect_to action: "index"
#    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

  private
    def user_params
      params.require(:user).permit(
          :first_name, :last_name, :first_name_chn, :last_name_chn,
          :gender, :address, :phone, :email )
    end
end
