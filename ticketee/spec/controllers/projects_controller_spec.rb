require 'spec_helper'

describe ProjectsController do
  let (:user) do
    user = Factory(:user)
    user.confirm!
    user
  end

  let (:project) { Factory(:project) }

  let admin_level_flash_alert = "You must be an admin to perform the requested action."

  context "standard users" do
    it "cannot access the new action" do
      sign_in(:user, user)
      get :new
      response.should redirect_to(root_path)
      flash[:alert].should eql(admin_level_flash_alert)
    end

    {
      "new"     =>  "get",
      "create"  =>  "post",
      "edit"    =>  "get",
      "update"  =>  "put",
      "destroy" =>  "delete",
    }.each do |action, method|
      it "cannot access the #{action} action" do
        sign_in(:user, user)
        send(method, action.dup, :id => project.id)
        response.should redirect_to(root_path)
        flash[:alert].should eql(admin_level_flash_alert)
      end
    end
  end

  it "displays an error for a missing project" do
    get :show, :id => "not-here"
    response.should redirect_to(projects_path)
    message = "The project you were looking for could not be found."
    flash[:alert].should eql(message)
  end

end
