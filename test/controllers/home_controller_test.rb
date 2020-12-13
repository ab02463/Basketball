require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success

    assert_select 'title', 'Basketball'
    assert_select 'h1','My Courts'
  end


  test "should post request contact but no email" do
    post request_contact_url

    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "should post request request contact" do
    post request_contact_url,params: {name: "Matthew",email: "matt@loc.com",message:"hi"}

    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:alert]
  end


end
