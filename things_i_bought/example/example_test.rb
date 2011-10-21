require 'test/unit'

class Bacon
  def self.saved?
    true
  end
end

class ExampleTest < Test::Unit::TestCase
  def test_saved
    assert Bacon.saved?
  end
end