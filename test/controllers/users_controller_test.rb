require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: { correo: @user.correo, documento: @user.documento, fecha_emision_del_documento: @user.fecha_emision_del_documento, fecha_vencimiento_del_documento: @user.fecha_vencimiento_del_documento, nombre: @user.nombre, tel1: @user.tel1, tel2: @user.tel2, tipo_persona: @user.tipo_persona } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { correo: @user.correo, documento: @user.documento, fecha_emision_del_documento: @user.fecha_emision_del_documento, fecha_vencimiento_del_documento: @user.fecha_vencimiento_del_documento, nombre: @user.nombre, tel1: @user.tel1, tel2: @user.tel2, tipo_persona: @user.tipo_persona } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
