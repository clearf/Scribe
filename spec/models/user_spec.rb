require 'capybara/rspec'
require_relative '../spec_helper'
require 'faker'
require 'factory_girl'


describe "equality" do
  it "should equal" do
    5.should eq(5)
  end
end

#use Capybara to simulate user movement
#these are extremely time consuming to write but so
#rewarding
feature 'User management' do
  scenario 'sign up' do
    visit '/'
      click_link 'Sign up'
      fill_in 'Name', with: Faker::Name.name
      fill_in 'Email', with: Faker::Internet.email
      fill_in 'Password', with: 'testpassword'
      fill_in 'Password confirmation', with: 'testpassword'
      click_button 'Create User'
      page.should have_content('Signed up!')
  end


  scenario 'log in without signing up' do
    visit '/'
      click_link 'Log in'
      fill_in 'Name', with: 'i dont need a damn log in'
      fill_in 'Password', with: 'just gonna walk right in'
      click_button 'Log in'
      expect(current_path).to eq '/sessions'
      #sessions because the sessions authentication takes you
      #from log_in to sessions if you didn't log in
      page.should have_content('Invalid password')
  end


  scenario 'Sign up' do
    visit '/'
      click_link 'Sign up'
      #will fill in with a known working user.  i want to
      #try factory girl to generate but its a little buggy
      fill_in 'Name', with: 'newuser'
      fill_in 'Email', with: 'newuser@example.com'
      fill_in 'Password', with: '123456'
      fill_in 'Password confirmation', with: '123456'
      click_button 'Create User'
      expect(current_path).to eq '/log_in'
      #sessions because the sessions authentication takes you
      #from log_in to sessions if you didn't log in
      page.should have_content('Signed up!')
  end
end

describe User do
  it "User.new name should be blank" do
    user = User.new
    expect(user.name).to eq(nil)
    expect(user).not_to be_valid
  end

   it "User.new email should be blank" do
    user = User.new
    expect(user.email).to eq(nil)
    expect(user).not_to be_valid
  end
end






#test the model
describe User do

  it 'has a valid Factory' do
    FactoryGirl.build(:user).should be_valid
  end

  it "is valid with expected inputs for creating a user " do
    user = FactoryGirl.create(:user)
    expect(user).to be_valid
    user.should eq(user)
  end

  it "is invalid without a name" do
    FactoryGirl.build(:user, name: nil).should_not be_valid
  end

  it "is invalid without an email" do
    FactoryGirl.build(:user, email: nil).should_not be_valid
  end

  #example from Hartl tutorial.  pretty horrible syntax but great
  #to review why this doesn't work in my particular application
 it "should require an email address" do
     @attr = {
      :name => "Example User",
      :email => "user@example.com",
      :password => "foobar",
      :password_confirmation => "foobar"
    }
    no_email_user = User.new(@attr.merge(:email => ""))
    no_email_user.should_not be_valid
  end

  it "is invalid with a duplicate email address" do
    FactoryGirl.create(:user, email: "aaron@example.com")
    duplicate_email_user = FactoryGirl.build(:user, email: "aaron@example.com")
    expect(duplicate_email_user).should_not be_valid
  end

  it "is invalid without a password" do
    FactoryGirl.build(:user, password: nil).should_not be_valid
  end

end

