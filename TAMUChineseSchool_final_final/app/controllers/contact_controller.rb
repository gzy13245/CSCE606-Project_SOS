class ContactController < ApplicationController
  def index



  end

  def show
  end

  def new
  end


  def create

    #UserMailer.confirm(contact_params['email'],contact_params['message']).deliver
    redirect_to contact_path, notice: 'Your message has been sent.'
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email,:message)
  end
end
