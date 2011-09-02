require 'test_helper'

class SecurityProfilesControllerTest < ActionController::TestCase
  setup do
    @security_profile = security_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:security_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create security_profile" do
    assert_difference('SecurityProfile.count') do
      post :create, :security_profile => @security_profile.attributes
    end

    assert_redirected_to security_profile_path(assigns(:security_profile))
  end

  test "should show security_profile" do
    get :show, :id => @security_profile.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @security_profile.to_param
    assert_response :success
  end

  test "should update security_profile" do
    put :update, :id => @security_profile.to_param, :security_profile => @security_profile.attributes
    assert_redirected_to security_profile_path(assigns(:security_profile))
  end

  test "should destroy security_profile" do
    assert_difference('SecurityProfile.count', -1) do
      delete :destroy, :id => @security_profile.to_param
    end

    assert_redirected_to security_profiles_path
  end
end
