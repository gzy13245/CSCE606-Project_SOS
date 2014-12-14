class AboutController < ApplicationController
  def index
        @active_page = "about"
          @user = current_user
        render '/about/index'
  end
end
