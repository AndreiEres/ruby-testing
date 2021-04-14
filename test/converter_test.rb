require 'minitest/autorun'
require_relative '../converter'

class TestConverter < Minitest::Test
  def test_converting_from_in_to_cm
    assert_equal Converter.new.in_to_cm(1), 2.54
  end

  def test_converting_from_l_to_ml
    assert Converter.new.l_to_ml(1) == 1000
  end
end

describe Converter do
  describe 'in_to_cm' do
    it 'converts from in to cm' do
      assert_equal Converter.new.in_to_cm(1), 2.54
    end
  end

  describe 'l_to_ml' do
    it 'converts from l to ml' do
      assert Converter.new.l_to_ml(1) == 1000
    end
  end
end
