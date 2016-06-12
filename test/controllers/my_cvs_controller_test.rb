require 'test_helper'

class MyCvsControllerTest < ActionController::TestCase
  setup do
    @my_cv = my_cvs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_cvs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_cv" do
    assert_difference('MyCv.count') do
      post :create, my_cv: {  }
    end

    assert_redirected_to my_cv_path(assigns(:my_cv))
  end

  test "should show my_cv" do
    get :show, id: @my_cv
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_cv
    assert_response :success
  end

  test "should update my_cv" do
    patch :update, id: @my_cv, my_cv: {  }
    assert_redirected_to my_cv_path(assigns(:my_cv))
  end

  test "should destroy my_cv" do
    assert_difference('MyCv.count', -1) do
      delete :destroy, id: @my_cv
    end

    assert_redirected_to my_cvs_path
  end
end
