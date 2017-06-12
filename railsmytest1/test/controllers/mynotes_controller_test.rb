require 'test_helper'

class MynotesControllerTest < ActionController::TestCase
  test "should get hoge" do
    get :hoge
    assert_response :success
  end

  test "should get hoge_res" do
    get :hoge_res
    assert_response :success
  end

  test "should get fuga" do
    get :fuga
    assert_response :success
  end

  test "should get fuga_res" do
    get :fuga_res
    assert_response :success
  end

  test "should get piyo" do
    get :piyo
    assert_response :success
  end

  test "should get piyo_res" do
    get :piyo_res
    assert_response :success
  end

end
