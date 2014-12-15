require 'spec_helper'

describe CoursePolicy do

  let (:current_user) { FactoryGirl.build_stubbed :user }
  let (:other_user) { FactoryGirl.build_stubbed :user }
  let (:admin) { FactoryGirl.build_stubbed :user, :admin }

  subject { CoursePolicy }

  permissions :create? do
    it "denies access if not an admin" do
      expect(CoursePolicy).not_to permit(current_user)
    end
    it "allows access for an admin" do
      expect(CoursePolicy).to permit(admin)
    end
  end

  permissions :update? do
    it "prevents updates if not an admin" do
      expect(subject).not_to permit(current_user)
    end
    it "allows an admin to make updates" do
      expect(subject).to permit(admin)
    end
  end

  permissions :destroy? do
    it "prevents deleting if not an admin" do
      expect(subject).not_to permit(current_user)
    end
    it "allows an admin to delete any course" do
      expect(subject).to permit(admin)
    end
  end
end
