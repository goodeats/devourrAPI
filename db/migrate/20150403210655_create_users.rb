class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :token
      t.string :bio, default: ''
      t.string :avatar, default: 'https://s3.amazonaws.com/devourr/Durph.jpg'
      t.string :website, default: ''
      t.string :location, default: ''
      t.integer :privacy, default: 0
    end
  end
end
