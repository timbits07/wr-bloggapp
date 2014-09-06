class AddEmailToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :email, :string
  	add_column :users, :password, :string
  	add_column :posts, :user_id, :integer
  end
end
