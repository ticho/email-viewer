require 'test_helper'

class IndexTest < ActionDispatch::IntegrationTest
  def setup
    get root_path
  end

  test "should have a container" do
    assert_select ".container"
  end

  test "should have an email-list" do
    assert_select ".email-list"
  end

  test "should have an email-view" do
    assert_select ".email-view"
  end

  test "should have a mark all read button" do
    assert_select "li#read-all"
  end

  test "should have a mark none read button" do
    assert_select "li#read-none"
  end


end