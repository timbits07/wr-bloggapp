class ChangePasswordToPasswordDigest < ActiveRecord::Migration
  def change
  	add_column :users, :remember_token, :string
  	rename_column :users, :password, :password_digest
  end
end
