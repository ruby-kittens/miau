
require 'test_helper'

class CatTest < ActiveSupport::TestCase

  test "should not save cat without name" do
    cat = Cat.new(owner:'gloria', age: 8)
    assert_not cat.save
  end

  test "should not save cat without age" do
    cat = Cat.new(name:'m', owner:'gloria')
    assert_not cat.save
  end

  test "should not save cat if the color is blue" do
    cat = Cat.new(name:'n', age: 8, owner:'gloria', color:'blue')
    assert_not cat.save
  end

  test "should not save cat without owner" do
    cat = Cat.new(name:'o', age: 8)
    assert_not cat.save
  end

  test "should not save cat with an owner without 3 charaters" do
    cat = Cat.new(name:'p', age: 8, owner:'mi')
    assert_not cat.save
  end

end
