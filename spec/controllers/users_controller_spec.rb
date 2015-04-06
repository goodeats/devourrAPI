require 'rails_helper'
require 'pry-byebug'

RSpec.describe UsersController do

  before(:all) do
    User.delete_all
    @users = FactoryGirl.create_list(:user, 4)
  end

  describe 'GET index' do
    it 'has a 200 status code' do
      get :index
      expect(response.status).to eq 200
    end

    it 'renders the index template' do
      get :index
      expect(response).to be_success
      users = JSON.parse(response.body)
      expect(users.length).to eq 4
    end

    it 'assigns @users' do
      users = User.all
      get :index
      expect(assigns(:users)).to eq users
    end
  end

end
