require 'spec_helper'

describe Admin::UsersController do

  let(:user) { create_user! }

  context "standard users" do
    before do
      sign_in(:user, user)
    end

    it "are not able to access the index action" do
      get 'index'
      response.should redirect_to (root_path)
      flash[:alert].should eql ( you_must_be_admin_msg )
    end
  end
end
