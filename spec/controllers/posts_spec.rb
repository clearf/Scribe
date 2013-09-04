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
#     it "is an array" do
#       post = create(:post, topic: 'twitter')
# get :index, letter: 't'
# expect(assigns(:posts)).to match_array([post])
#     end
  end
  describe "show" do
    it "shows an individual post" do
      get :show, :id => 1
       expect(response).to render_template :show
    end
    it "assigns :post to a variable post" do
      post = create(:post)
      get :show, id: post
      expect(assigns(:post)).to eq post
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
      post :create
      expect(response).to render_template @post

    end
  end
  describe "update" do
    it "test update" do
    put :update, :id => 1
    # message: FactoryGirl.attributes_for(:post)
    # , post: attributes_for(:post)
    flash[:notice].should eq('Post was successfully updated.')
     expect(response).to render_template @post

    end
  end
  describe "destroy" do
    it "test destroy" do
      delete :destroy, :id => 1
      # @post :destroy, :id => 1
      # @post.delete
      expect(response).to render_template @post
    end
  end
end