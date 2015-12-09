require 'test_helper'

class OrderdisplaysControllerTest < ActionController::TestCase
  setup do
    @orderdisplay = orderdisplays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orderdisplays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orderdisplay" do
    assert_difference('Orderdisplay.count') do
      post :create, orderdisplay: {  }
    end

    assert_redirected_to orderdisplay_path(assigns(:orderdisplay))
  end

  test "should show orderdisplay" do
    get :show, id: @orderdisplay
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orderdisplay
    assert_response :success
  end

  test "should update orderdisplay" do
    patch :update, id: @orderdisplay, orderdisplay: {  }
    assert_redirected_to orderdisplay_path(assigns(:orderdisplay))
  end

  test "should destroy orderdisplay" do
    assert_difference('Orderdisplay.count', -1) do
      delete :destroy, id: @orderdisplay
    end

    assert_redirected_to orderdisplays_path
  end
end
