Then /^I should see the "([^"]*)" link$/ do |text|
  page.should(have_css("a", :text => text), "Expected to see #{text.inspect}  link, but did not.")
end

Then /^I should not see the "([^"]*)" link$/ do |text|
  page.should_not(have_css("a", :text => text), "Expected to not see #{text.inspect}  link, but did.")
end