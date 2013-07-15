require 'test_helper'

class HomeCatsControllerTest < ActionController::TestCase
  setup do
    @home_cat = home_cats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:home_cats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home_cat" do
    assert_difference('HomeCat.count') do
      post :create, home_cat: { name: @home_cat.name }
    end

    assert_redirected_to home_cat_path(assigns(:home_cat))
  end

  test "should show home_cat" do
    get :show, id: @home_cat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @home_cat
    assert_response :success
  end

  test "should update home_cat" do
    put :update, id: @home_cat, home_cat: { name: @home_cat.name }
    assert_redirected_to home_cat_path(assigns(:home_cat))
  end

  test "should destroy home_cat" do
    assert_difference('HomeCat.count', -1) do
      delete :destroy, id: @home_cat
    end

    assert_redirected_to home_cats_path
  end
end
