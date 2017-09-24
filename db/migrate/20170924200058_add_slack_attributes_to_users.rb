class AddSlackAttributesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :color, :string
    add_column :users, :first_name, :string
    add_column :users, :image_24, :string
    add_column :users, :image_32, :string
    add_column :users, :image_48, :string
    add_column :users, :image_72, :string
    add_column :users, :image_192, :string
    add_column :users, :image_512, :string
    add_column :users, :is_admin, :boolean
    add_column :users, :is_app_user, :boolean
    add_column :users, :is_bot, :boolean
    add_column :users, :is_owner, :boolean
    add_column :users, :is_primary_owner, :boolean
    add_column :users, :is_restricted, :boolean
    add_column :users, :is_ultra_restricted, :boolean
    add_column :users, :last_name, :string
    add_column :users, :nickname, :string
    add_column :users, :name, :string
    add_column :users, :real_name, :string
    add_column :users, :time_zone, :string
  end
end
