require_relative '../spec_helper'

describe PostsController do
  before do
    @post = Post.create(topic: "The title")
    visit post_path(@post)
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
  # describe "create" do
  #   it "creates an individual post" do
  #     post :create, :id => 1
  #      expect(response).to render_template :create
  #   end
  # end
  # describe "update" do
  #   it "updates an individual post" do
  #     post :update, :id => 1
  #      expect(response).to render_template :update
  #   end
  # end
  # describe "destroy" do
  #   it "destroy an individual post" do
  #     post :destroy, :id => 1
  #      expect(response).to render_template :destroy
  #   end
  # end
end