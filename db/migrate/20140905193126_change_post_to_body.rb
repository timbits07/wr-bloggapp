class ChangePostToBody < ActiveRecord::Migration
  def change
  	rename_column :posts, :post, :body
  end
end
