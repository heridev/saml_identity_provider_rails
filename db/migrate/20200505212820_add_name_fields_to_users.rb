class AddNameFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :age, :string
    add_column :users, :role, :string, default: 'guest'
  end
end
