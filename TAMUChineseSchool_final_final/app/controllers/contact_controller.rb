class ContactController < ApplicationController
  def index
    @active_page = "contact"
    @user = current_user
    render '/contact/index'
  end
end
