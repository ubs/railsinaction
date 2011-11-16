Given /^there is a project called "([^"]*)"$/ do |name|
  #puts "In given block name is #{name}"
  @project = Factory(:project, :name => name)
end
