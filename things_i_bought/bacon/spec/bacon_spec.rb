require "bacon"
require "rspec"

describe Bacon do

  subject { Bacon.new }

  #it "should be edible" do
  its(:edible?) { should be_true }
  #end

  it "should have expired! when it stays for too long" do
    subject.expired!
    subject.should_not be_edible
  end
end