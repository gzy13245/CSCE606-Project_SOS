class LoginController < ApplicationController
  def login
    if request.get?
      session[:user_id] = nil
      @user = User.new
    else
      @user = User.new(params[:user])
      logged_in_user = @user.try_to_login

      if logged_in_user
        session[:user_id] = logged_in_user.id
        redirect_to(:action => "index")
      else
        # flash[:notice] = "Invalid user/password combination"
        redirect_to(:action => "loginFail")
      end
    end
  end

  def show
    redirect_to(:action => "login")
  end

  def loginFail

  end
  #清空登录信息
  def reset
    params[:user]["username"]=null
    params[:user]["hashed_password"]=null
  end
end
