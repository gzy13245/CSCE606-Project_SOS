class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :year
      t.string :semester
      t.string :name
      t.string :class_room
      t.string :time
      t.string :textbook
      t.string :course_discription
      t.references :teacher, index: true

      t.timestamps
    end
  end
end
