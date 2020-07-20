class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :first_name, :string
    add_column :users, :birthday, :date
    add_column :users, :phone_number, :string
    add_column :users, :seller, :boolean
  end
end
