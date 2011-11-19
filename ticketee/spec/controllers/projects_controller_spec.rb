require 'spec_helper'

describe ProjectsController do
  let (:user) do
    user = Factory(:user)
    user.confirm!
    return user
  end

  context "standard users" do
    it "cannot access the new action" do
      sign_in(:user, user)
    end
  end

  it "displays an error for a missing project" do
    get :show, :id => "not-here"
    response.should redirect_to(projects_path)
    message = "The project you were looking for could not be found."
    flash[:alert].should eql(message)
  end

end
