class CreateMyPosts < ActiveRecord::Migration
  def change
    create_table :my_posts do |t|
      t.string :post
      t.text :comment

      t.timestamps null: false
    end
  end
end
