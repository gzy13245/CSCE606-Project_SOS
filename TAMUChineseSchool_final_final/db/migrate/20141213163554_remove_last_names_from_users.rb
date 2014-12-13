class RemoveLastNamesFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :last_name, :string
    remove_column :users, :first_name, :string
    remove_column :users, :last_name_chn, :string
    remove_column :users, :first_name_chn, :string

    add_column :users, :name_chn, :string
  end
end
