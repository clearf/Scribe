require_relative '../spec_helper'

describe PostsController do
  describe "index" do
    it "should have all the posts" do
      get :index, letter: 'S'
      expect(response).to render_template :index
    end
  end
end