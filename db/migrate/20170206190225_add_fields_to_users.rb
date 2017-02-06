class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :text
    add_column :users, :postal_code, :string
    add_column :users, :city, :string
    add_column :users, :policy_agreement, :boolean
    add_column :users, :weldom_newsletter, :boolean
    add_column :users, :facebook_profile, :string
    add_column :users, :twitter_profile, :string
    add_column :users, :instagram_profile, :string
    add_column :users, :youtube_channel, :string
    add_column :users, :personnal_blog, :string
    add_column :users, :motivation, :text
  end
end
