require 'test_helper'

class AktuelleTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Aktuelle.new.valid?
  end
end
