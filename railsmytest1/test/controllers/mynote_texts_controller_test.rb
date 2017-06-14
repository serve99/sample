require 'test_helper'

class MynoteTextsControllerTest < ActionController::TestCase
  setup do
    @mynote_text = mynote_texts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mynote_texts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mynote_text" do
    assert_difference('MynoteText.count') do
      post :create, mynote_text: { keyword1: @mynote_text.keyword1, keyword2: @mynote_text.keyword2 }
    end

    assert_redirected_to mynote_text_path(assigns(:mynote_text))
  end

  test "should show mynote_text" do
    get :show, id: @mynote_text
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mynote_text
    assert_response :success
  end

  test "should update mynote_text" do
    patch :update, id: @mynote_text, mynote_text: { keyword1: @mynote_text.keyword1, keyword2: @mynote_text.keyword2 }
    assert_redirected_to mynote_text_path(assigns(:mynote_text))
  end

  test "should destroy mynote_text" do
    assert_difference('MynoteText.count', -1) do
      delete :destroy, id: @mynote_text
    end

    assert_redirected_to mynote_texts_path
  end
end
