require 'test_helper'

class AutoCatsControllerTest < ActionController::TestCase
  setup do
    @auto_cat = auto_cats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auto_cats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auto_cat" do
    assert_difference('AutoCat.count') do
      post :create, auto_cat: { name: @auto_cat.name, parent: @auto_cat.parent }
    end

    assert_redirected_to auto_cat_path(assigns(:auto_cat))
  end

  test "should show auto_cat" do
    get :show, id: @auto_cat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auto_cat
    assert_response :success
  end

  test "should update auto_cat" do
    put :update, id: @auto_cat, auto_cat: { name: @auto_cat.name, parent: @auto_cat.parent }
    assert_redirected_to auto_cat_path(assigns(:auto_cat))
  end

  test "should destroy auto_cat" do
    assert_difference('AutoCat.count', -1) do
      delete :destroy, id: @auto_cat
    end

    assert_redirected_to auto_cats_path
  end
end
