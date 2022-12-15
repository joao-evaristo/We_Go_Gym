require "test_helper"

class UserGymAdminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_gym_admin = user_gym_admins(:one)
  end

  test "should get index" do
    get user_gym_admins_url
    assert_response :success
  end

  test "should get new" do
    get new_user_gym_admin_url
    assert_response :success
  end

  test "should create user_gym_admin" do
    assert_difference("UserGymAdmin.count") do
      post user_gym_admins_url, params: { user_gym_admin: { academium_id: @user_gym_admin.academium_id, active: @user_gym_admin.active, usuario_id: @user_gym_admin.usuario_id } }
    end

    assert_redirected_to user_gym_admin_url(UserGymAdmin.last)
  end

  test "should show user_gym_admin" do
    get user_gym_admin_url(@user_gym_admin)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_gym_admin_url(@user_gym_admin)
    assert_response :success
  end

  test "should update user_gym_admin" do
    patch user_gym_admin_url(@user_gym_admin), params: { user_gym_admin: { academium_id: @user_gym_admin.academium_id, active: @user_gym_admin.active, usuario_id: @user_gym_admin.usuario_id } }
    assert_redirected_to user_gym_admin_url(@user_gym_admin)
  end

  test "should destroy user_gym_admin" do
    assert_difference("UserGymAdmin.count", -1) do
      delete user_gym_admin_url(@user_gym_admin)
    end

    assert_redirected_to user_gym_admins_url
  end
end
