class CreateTakingCourses < ActiveRecord::Migration
  def change
    create_table :taking_courses do |t|
      t.references :child, index: true
      t.references :course, index: true

      t.timestamps
    end
  end
end
