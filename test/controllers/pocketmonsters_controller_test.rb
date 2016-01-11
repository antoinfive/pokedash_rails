require 'test_helper'

class PocketmonstersControllerTest < ActionController::TestCase
  setup do
    @pocketmonster = pocketmonsters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pocketmonsters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pocketmonster" do
    assert_difference('Pocketmonster.count') do
      post :create, pocketmonster: { image_url: @pocketmonster.image_url, name: @pocketmonster.name }
    end

    assert_redirected_to pocketmonster_path(assigns(:pocketmonster))
  end

  test "should show pocketmonster" do
    get :show, id: @pocketmonster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pocketmonster
    assert_response :success
  end

  test "should update pocketmonster" do
    patch :update, id: @pocketmonster, pocketmonster: { image_url: @pocketmonster.image_url, name: @pocketmonster.name }
    assert_redirected_to pocketmonster_path(assigns(:pocketmonster))
  end

  test "should destroy pocketmonster" do
    assert_difference('Pocketmonster.count', -1) do
      delete :destroy, id: @pocketmonster
    end

    assert_redirected_to pocketmonsters_path
  end
end
