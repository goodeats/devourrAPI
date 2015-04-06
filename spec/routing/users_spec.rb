require 'rails_helper'

RSpec.describe 'routes for users' do
  it 'routes GET /users to the users controller' do
    expect(get('/users')).to route_to('users#index')
  end

  it 'routes POST /users to the users controller' do
    expect(post('/users')).to route_to('users#create')
  end

  it 'routes GET /users/1 to the users controller and sets id' do
    expect(get('/users/1')).to route_to(
      controller: 'users',
      action: 'show',
      id: '1'
    )
  end

  it 'routes PATCH /users/1 to the users controller and sets id' do
    expect(patch('users/1')).to route_to(
      controller: 'users',
      action: 'update',
      id: '1'
    )
  end

  it 'routes DELETE /users/1 to the users controller and sets id' do
    expect(delete('users/1')).to route_to(
      controller: 'users',
      action: 'destroy',
      id: '1'
    )
  end
end
