class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :token
      t.string :bio
      t.string :avatar
      t.string :website
      t.string :location
      t.integer :privacy
    end
  end
end
