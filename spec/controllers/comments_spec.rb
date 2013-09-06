require 'capybara/rspec'
require_relative '../spec_helper'
require 'faker'
require 'factory_girl'

describe CommentsController do
  before do
    @comment = FactoryGirl.create(:comment)
    @post = FactoryGirl.create(:post)
    # visit comment_path(@comment)
  end
  describe "index" do
    it "should have all the comments" do
      get :index
      expect(response).to render_template :index
    end
  end
  describe "show" do
    it "shows an individual comment" do
      get :show, :id => 1
       expect(response).to render_template :show
    end
  end
  describe "new" do
    it "renders new" do
      visit "/users/new"
       response.should render_template('users/new')
       @comment = Comment.new(description: 'validation')
       expect(@comment).to be_valid
    end
  end

  describe "edit" do
    it "edits an individual comment" do
      get :edit, :id => 1
       expect(response).to render_template :edit
    end
  end
  describe "create" do
    it "creates a new comment" do

    end
  end
  describe "update" do
    it "updates a comment" do
      put :update, :id => 1
     expect(response).to render_template @comment
    end
  end
  describe "destroy" do
    it "destroys a comment" do
      delete :destroy, :id => 1
       expect(response).to render_template @comment
    end
  end
end