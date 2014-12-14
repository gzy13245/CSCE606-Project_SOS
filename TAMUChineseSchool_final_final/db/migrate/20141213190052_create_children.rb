class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.string :name_chn
      t.string :gender
      t.references :family, index: true

      t.timestamps
    end
  end
end
