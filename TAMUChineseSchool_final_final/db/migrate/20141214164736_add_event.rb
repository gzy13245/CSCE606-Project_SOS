class AddEvent < ActiveRecord::Migration
  def change
    create_table "events", force: true do |t|
      t.timestamp   "year"
      t.string   "semester"
      t.string   "event_name"
      t.string   "event_description"
      t.string   "place"
      t.string   "time"

      t.timestamps
    end
  end
end
