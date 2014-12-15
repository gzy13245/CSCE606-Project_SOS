class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.timestamp :year
      t.string :semester
      t.string :class_room
      t.timestamp :start_time
      t.timestamp :end_time
      t.string :textbook
      t.references :user, index: true
      t.string :course_discription

      t.timestamps
    end
  end
end
