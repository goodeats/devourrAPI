class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :count, default: 0
      t.belongs_to :post, index: true
      t.belongs_to :user, index: true
    end
    add_foreign_key :likes, :posts
    add_foreign_key :likes, :users
  end
end
