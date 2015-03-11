require 'helper'

class Arelastic::Filters::NotTest < Minitest::Test
  def test_as_elastic
    expected = {"not" => { "foo" => "bar" }}

    assert_equal expected, Arelastic::Filters::Not.new('foo' => 'bar').as_elastic
  end
end