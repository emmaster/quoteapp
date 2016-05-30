require 'test_helper'

class MyquotesControllerTest < ActionController::TestCase
  setup do
    @myquote = myquotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myquotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myquote" do
    assert_difference('Myquote.count') do
      post :create, myquote: {  }
    end

    assert_redirected_to myquote_path(assigns(:myquote))
  end

  test "should show myquote" do
    get :show, id: @myquote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myquote
    assert_response :success
  end

  test "should update myquote" do
    patch :update, id: @myquote, myquote: {  }
    assert_redirected_to myquote_path(assigns(:myquote))
  end

  test "should destroy myquote" do
    assert_difference('Myquote.count', -1) do
      delete :destroy, id: @myquote
    end

    assert_redirected_to myquotes_path
  end
end
