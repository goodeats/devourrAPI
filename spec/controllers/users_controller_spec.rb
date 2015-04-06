require 'rails_helper'
require 'pry-byebug'

RSpec.describe UsersController do

  before(:all) do
    User.delete_all
    @users = FactoryGirl.create_list(:user, 4)
  end

  let(:valid_attributes) {
    {
      name: Faker::Name.name,
      username: Faker::Internet.user_name,
      email: Faker::Internet.email,
      password_digest: Faker::Internet.password,
      token: Faker::Internet.password,
      bio: Faker::Lorem.sentence,
      avatar: Faker::Avatar.image,
      website: Faker::Internet.domain_name,
      location: Faker::Address.city,
      privacy: Faker::Number.digit
    }
  }

  let(:invalid_attributes) {
    {
      name: nil,
      username: nil,
      email: nil,
      password_digest: nil,
      token: nil,
      bio: nil,
      avatar: nil,
      website: nil,
      location: nil,
      privacy: nil
    }
  }

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

  describe 'GET show' do
    it 'has a 200 status code' do
      get :show, id: @users[0]
      expect(response.status).to eq 200
    end

    it 'renders the show template' do
      get :show, id: @users[0]
      users = JSON.parse(response.body)
      expect(users).to eq @users[0]
      # getting a hash instead of object
    end

    it 'assigns @user' do
      get :show, id: @users[0]
      expect(assigns(:user)).to eq @users[0]
    end
  end

  describe 'POST create' do
    context 'with valid attributes' do
      it 'saves a new user' do
        expect {
          post :create, user: valid_attributes
        }.to change(User, :count).by 1
        { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
        expect(response).to be_success
        expect(response.content_type).to be Mime::JSON
      end

      it 'assigns @user' do
        post :create, user: valid_attributes
        expect(assigns(:user)).to be_a User
        expect(assigns(:user)).to be_persisted
      end
    end

    context 'with invalid attributes' do
      it 'assigns @user, but does not save a new user' do
        post :create, user: invalid_attributes
        expect(assigns(:user)).to be_a_new User
      end

      it 're-renders the new template' do
        post :create, user: invalid_attributes
        expect(response).to render_template 'new'
      end
    end

  end

end
