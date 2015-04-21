gem 'minitest'
require 'minitest/autorun'
require_relative 'word_rotation'

class WordrotateTest < Minitest::Test
  attr_reader :wordrotate
  def setup
    @wordrotate = Wordrotate.new
  end

  def test_it_can_rotate_2_letters_and_check_equality
    assert_equal true, wordrotate.check("ap", "ap")
    assert_equal true, wordrotate.check("ap", "pa")
    assert_equal false, wordrotate.check("ap", "ca")
    assert_equal false, wordrotate.check("aa", "cc")
  end

  def test_it_can_rotate_3_letters_and_check_equality
    assert_equal true, wordrotate.check("app", "ppa")
    assert_equal false, wordrotate.check("pap", "cac")
  end

  def test_it_can_rotate_any_amount_of_letters_and_check_equality
    assert_equal true, wordrotate.check("apple", "apple")
    assert_equal true, wordrotate.check("apple", "pplea")
    assert_equal true, wordrotate.check("pleap", "apple")
    assert_equal false, wordrotate.check("paple", "apple")
    assert_equal false, wordrotate.check("elppa", "apple")
  end
end