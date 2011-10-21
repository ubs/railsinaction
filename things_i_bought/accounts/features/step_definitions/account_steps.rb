Given /^I have an account$/ do
  @account = Account.new
end

Given /^it has a balance of (\d+)$/ do |amount|
  @account.balance = amount
end

When /^I withdraw (\d+)$/ do |amount|
  @account.withdraw amount
end

Then /^my balance should be (\d+)$/ do |amount|
  @account.balance.should eql(amount.to_f)
end
