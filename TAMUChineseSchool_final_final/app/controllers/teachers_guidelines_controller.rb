class TeachersGuidelinesController < ApplicationController
  def index
        @active_page = "teachers_guidelines"
          @user = current_user
        render '/teachers_guidelines/index'
  end
end
