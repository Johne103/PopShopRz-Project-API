require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { address_line2: @user.address_line2, address_line: @user.address_line, country: @user.country, email: @user.email, first_name: @user.first_name, image: @user.image, is_store: @user.is_store, last_name: @user.last_name, password: @user.password, password_confirmation: @user.password_confirmation, password_digest: @user.password_digest, postcode: @user.postcode, town_city: @user.town_city, username: @user.username } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { address_line2: @user.address_line2, address_line: @user.address_line, country: @user.country, email: @user.email, first_name: @user.first_name, image: @user.image, is_store: @user.is_store, last_name: @user.last_name, password: @user.password, password_confirmation: @user.password_confirmation, password_digest: @user.password_digest, postcode: @user.postcode, town_city: @user.town_city, username: @user.username } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end