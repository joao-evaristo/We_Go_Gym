require "test_helper"

class GymsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gym = gyms(:one)
  end

  test "should get index" do
    get gyms_url
    assert_response :success
  end

  test "should get new" do
    get new_gym_url
    assert_response :success
  end

  test "should create gym" do
    assert_difference("Gym.count") do
      post gyms_url, params: { gym: { address: @gym.address, cnpj: @gym.cnpj, facebook: @gym.facebook, instagram: @gym.instagram, montlhy_fee: @gym.montlhy_fee, name: @gym.name, phone_number: @gym.phone_number, registration_fee: @gym.registration_fee, site: @gym.site } }
    end

    assert_redirected_to gym_url(Gym.last)
  end

  test "should show gym" do
    get gym_url(@gym)
    assert_response :success
  end

  test "should get edit" do
    get edit_gym_url(@gym)
    assert_response :success
  end

  test "should update gym" do
    patch gym_url(@gym), params: { gym: { address: @gym.address, cnpj: @gym.cnpj, facebook: @gym.facebook, instagram: @gym.instagram, montlhy_fee: @gym.montlhy_fee, name: @gym.name, phone_number: @gym.phone_number, registration_fee: @gym.registration_fee, site: @gym.site } }
    assert_redirected_to gym_url(@gym)
  end

  test "should destroy gym" do
    assert_difference("Gym.count", -1) do
      delete gym_url(@gym)
    end

    assert_redirected_to gyms_url
  end
end
