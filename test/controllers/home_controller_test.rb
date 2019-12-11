require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
    assert_select 'title', 'A Day\'s Work'
    assert_select 'h1', 'A Day\'s Work'
    assert_select 'p', 'Hello, good sire'
  end

end
