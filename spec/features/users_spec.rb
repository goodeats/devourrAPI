# require 'pry-byebug'
# require 'rails_helper'

# describe 'User requests' do
#   before(:all) do
#     User.delete_all
#     @users = FactoryGirl.create_list(:user, 3)
#   end

#   describe '#index' do
#     it 'gets all of the users' do
#       visit '/users'
#       binding.pry
#       expect(response).to be_success
#       user = JSON.parse(response.body)
#       expect(users.length).to eq 3
#     end
#   end


# end
