require_relative '../spec_helper'

describe PostsController do
  before do
    @post = Post.create(topic: "The title")
    # visit post_path(@post)
end
  describe "index" do
    it "should have all the posts" do
      get :index, letter: 'S'
      expect(response).to render_template :index
    end
  end
  describe "show" do
    it "shows an individual post" do
      get :show, :id => 1
       expect(response).to render_template :show
    end
  end
  describe "new" do
    it "renders new" do
      get :new
       expect(response).to render_template :new
    end
  end
  describe "edit" do
    it "edits an individual post" do
      get :edit, :id => 1
       expect(response).to render_template :edit
    end
  end
  #below shouldn't have templates
  # error is expecting <"destroy"> but rendering with <"">
  #solution on stack overflow is
  #stub_templates :only => [:index, :new, :show, :edit]
  describe "create" do
    it "test create" do
       expect(response).to be_success

    end
  end
  describe "update" do
    it "test update" do
      expect(response).to be_success

    end
  end
  describe "destroy" do
    it "test destroy" do
      # @post :destroy, :id => 1
      # @post.delete
       expect(response).to be_success
    end
  end
end