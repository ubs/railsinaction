module SeedHelpers
  def create_user!(attributes={})
    user = Factory(:user, attributes)
    user.confirm!
    user
  end

  def you_must_be_admin_msg
    you_must_be_admin_msg = "You must be an admin to perform the requested action."
  end
end

RSpec.configure do |config|
  config.include SeedHelpers
end