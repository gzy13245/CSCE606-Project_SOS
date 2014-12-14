class StudentsHandbookController < ApplicationController
  def index
        @active_page = "students_handbook"
          @user = current_user
        render '/students_handbook/index'
  end
end
