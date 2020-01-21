
require 'test_helper'

class CatTest < ActiveSupport::TestCase

  test "should not save cat without name" do
    cat = Cat.new
    assert_not cat.save
  end

  test "should not save cat without age" do
    cat = Cat.new(name:'m')
    assert_not cat.save
  end

end
