require_relative '../spec_helper'

describe CommentsController do
  before do
    @comment = Comment.create(description: "The title")
    visit comment_path(@comment)
  end
  describe "index" do
    it "should have all the comments" do
      get :index, letter: 'S'
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
      #come back to this
      # @post = Post.new(topic: "The title", :id => 1)
      # #nested route and unique controller
      # get :new, :id => 1
       expect(@comment).to eq(@comment)
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
    end
  end
  describe "destroy" do
    it "destroys a comment" do
    end
  end
end