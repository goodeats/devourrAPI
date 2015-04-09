class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :token
      t.string :bio, default: ''
      t.string :avatar, default: 'https://s3.amazonaws.com/devourr/Durph.jpg?X-Amz-Date=20150409T183911Z&X-Amz-Expires=300&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Signature=738dc19dfd8b6a50a3508b3d1e5871f49b020d625343fa5e215235e8a5a4990b&X-Amz-Credential=ASIAITICW77YYR6MVLTQ/20150409/us-east-1/s3/aws4_request&X-Amz-SignedHeaders=Host&x-amz-security-token=AQoDYXdzEEwagALFx%2BQM7DpqEa1oO5FcDWUoPRY8ME7lTTOFtCnC3dZSBuwAPGFsK4wTfyw5TUAJW4a/jpyk4DCRM0VgE7r1/SjtsQE9xAblHFl5BuP%2BFX7iW4XP%2BGnpiUd43l84Q%2BU/Kf/2FgZN6bpb4KQiNq6bz3hHR3HQ2eGoaN%2BXbjxzmqYx08UjDtmkIqnN6Bn1%2BGfrOgI0ZPjS6Bf3khZrKZMYmTQVYgWZ0TqbFaUEx4AEwxoxF2UozUb9Z/V3ZOUfucbN9l7PL2BLNmItf3/aTKecy0FwK1DCNUJCFpg3EG6x6R2aa/zVJQuP50S0o9qLJRwlA8jaFDTm6BPxKbY8iQ1vTQ3dIPWMm6kF'
      t.string :website, default: ''
      t.string :location, default: ''
      t.integer :privacy, default: 0
    end
  end
end
