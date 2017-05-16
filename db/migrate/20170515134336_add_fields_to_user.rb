class AddFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :weldom_tester, :boolean
    add_column :users, :construction_type, :string
    add_column :users, :construction_surface, :integer
    add_column :users, :construction_color, :string
    add_column :users, :card_number, :string
  end
end
