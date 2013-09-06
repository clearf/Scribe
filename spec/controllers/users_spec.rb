require_relative '../spec_helper'

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