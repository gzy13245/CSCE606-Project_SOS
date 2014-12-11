class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :year
      t.text :semester
      t.string :name
      t.string :classroom
      t.string :time
      t.string :textbook
      t.string :courseDisp

      t.timestamps
    end
  end
end
