class AddFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :general_diy, :boolean, default: false
    add_column :users, :electricity, :boolean, default: false
    add_column :users, :plumbing, :boolean, default: false
    add_column :users, :building, :boolean, default: false
    add_column :users, :gardening, :boolean, default: false
    add_column :users, :decoration, :boolean, default: false
    add_column :users, :weldom_tester, :boolean
    add_column :users, :construction_type, :string
    add_column :users, :construction_surface, :integer
  end
end
