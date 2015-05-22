class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.integer :follow_user_id
      t.belongs_to :user, index: true
    end
    add_foreign_key :follows, :users
  end
end
