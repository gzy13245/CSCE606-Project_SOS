class CoursePolicy #< ApplicationPolicy
  attr_reader :user, :course

  def initialize(user, course)
    @user = user
    @course = course
  end

  def new?
    @user.admin?
  end

  def create?
    @user.admin?
  end

  def show?
    @user.admin?
  end

  def edit?
    @user.admin?
  end

  def update?
    @user.admin?
  end

  def destroy?
    @user.admin?
  end
end
