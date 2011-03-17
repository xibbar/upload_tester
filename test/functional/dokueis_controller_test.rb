require 'test_helper'

class DokueisControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dokueis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dokuei" do
    assert_difference('Dokuei.count') do
      post :create, :dokuei => { }
    end

    assert_redirected_to dokuei_path(assigns(:dokuei))
  end

  test "should show dokuei" do
    get :show, :id => dokueis(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => dokueis(:one).to_param
    assert_response :success
  end

  test "should update dokuei" do
    put :update, :id => dokueis(:one).to_param, :dokuei => { }
    assert_redirected_to dokuei_path(assigns(:dokuei))
  end

  test "should destroy dokuei" do
    assert_difference('Dokuei.count', -1) do
      delete :destroy, :id => dokueis(:one).to_param
    end

    assert_redirected_to dokueis_path
  end
end
