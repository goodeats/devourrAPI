class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :picture
      t.integer :likes
      t.integer :reheats
      t.integer :mades
      t.integer :stashes
      t.string :location
    end
  end
end
