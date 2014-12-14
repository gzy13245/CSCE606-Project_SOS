class OrganizationController < ApplicationController
  def index
        @active_page = "organization"
          @user = current_user
        render '/organization/index'
  end
end
