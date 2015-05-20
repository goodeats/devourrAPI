class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.integer :count, default: 0
      t.belongs_to :user, index: true
    end
    add_foreign_key :followers, :users
  end
end
