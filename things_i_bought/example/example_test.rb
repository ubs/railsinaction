require 'test/unit'

class ExampleTest < Test::Unit::TestCase
  def test_saved
    assert Bacon.saved?
  end
end