require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
    assert_select 'title', 'A Day\'s Work'
    assert_select 'h1', 'A Day\'s Work'
    assert_select 'p', 'Hello, good sire'
  end

  test "should get contact" do
    get contact_url
    assert_response :success


    assert_template layout: 'application'

    assert_select 'title', 'A Day\'s Work'
    assert_select 'h1', 'Contact Us!'
    assert_select 'p', 'Let us know what\'s on your mind.'
  end

  test "should post request contact but no email" do
    post request_contact_url

    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "should post request contact" do
    post request_contact_url, params: {name: "Grace",email: "grace@fakemail.com",telephone: "07854416777", message: "This is a test!"}
    assert_response :redirect
      assert_nil flash[:alert]
      assert_not_empty flash[:notice]
  end
  
end
