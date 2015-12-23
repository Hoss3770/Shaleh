require 'test_helper'

class ShalehsControllerTest < ActionController::TestCase
  setup do
    @shaleh = shalehs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shalehs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shaleh" do
    assert_difference('Shaleh.count') do
      post :create, shaleh: { address: @shaleh.address, aircon: @shaleh.aircon, description: @shaleh.description, references: @shaleh.references, rooms: @shaleh.rooms }
    end

    assert_redirected_to shaleh_path(assigns(:shaleh))
  end

  test "should show shaleh" do
    get :show, id: @shaleh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shaleh
    assert_response :success
  end

  test "should update shaleh" do
    patch :update, id: @shaleh, shaleh: { address: @shaleh.address, aircon: @shaleh.aircon, description: @shaleh.description, references: @shaleh.references, rooms: @shaleh.rooms }
    assert_redirected_to shaleh_path(assigns(:shaleh))
  end

  test "should destroy shaleh" do
    assert_difference('Shaleh.count', -1) do
      delete :destroy, id: @shaleh
    end

    assert_redirected_to shalehs_path
  end
end
