class CoursePolicy < ApplicationPolicy
  attr_reader :user, :course

  def initialize(user, course)
    @user = user
    @course = course
  end

  def new?
    @user.admin? or @user == @user
  end

  def create?
    @user.admin? or @user == @user
  end

  def show?
    @user.admin? or @user == @user
  end

  def update?
    @user.admin?
  end

  def destroy?
    @user.admin?
  end
end
