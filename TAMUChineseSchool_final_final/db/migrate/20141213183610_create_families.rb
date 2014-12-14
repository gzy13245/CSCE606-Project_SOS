class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end
