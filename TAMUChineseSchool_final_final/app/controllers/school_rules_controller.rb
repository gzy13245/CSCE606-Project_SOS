class SchoolRulesController < ApplicationController
  def index
        @active_page = "school_rules"
          @user = current_user
        render '/school_rules/index'
  end
end
