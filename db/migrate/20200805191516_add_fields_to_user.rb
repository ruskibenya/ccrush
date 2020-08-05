class AddFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :location, :string
    add_column :users, :dob, :string
    add_column :users, :bio, :string
    add_column :users, :video_bio, :string
    add_column :users, :gender, :string
    add_column :users, :looking_for, :string
  end
end
