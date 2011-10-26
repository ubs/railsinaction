Given /^there is a project called "([^"]*)"$/ do |name|
  #puts "In given block name is #{name}"
  Factory(:project, :name => name)
end
