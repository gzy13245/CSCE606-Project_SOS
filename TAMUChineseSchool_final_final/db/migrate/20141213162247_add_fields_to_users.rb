class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_name, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name_chn, :string
    add_column :users, :first_name_chn, :string

    add_column :users, :gender, :string
    add_column :users, :address, :string
    add_column :users, :phone, :string

  end
end
