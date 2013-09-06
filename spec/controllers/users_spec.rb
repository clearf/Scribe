require 'capybara/rspec'
require_relative '../spec_helper'
require 'faker'
require 'factory_girl'

describe UsersController do
  before do
    user = FactoryGirl.create(:user, :id => 1)
end

  describe "new" do
    it "renders new" do
      get :new
       expect(response).to render_template :new
    end
  end
end