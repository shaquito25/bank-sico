require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit users_url
    click_on "New user"

    fill_in "Correo", with: @user.correo
    fill_in "Documento", with: @user.documento
    fill_in "Fecha emision del documento", with: @user.fecha_emision_del_documento
    fill_in "Fecha vencimiento del documento", with: @user.fecha_vencimiento_del_documento
    fill_in "Nombre", with: @user.nombre
    fill_in "Tel1", with: @user.tel1
    fill_in "Tel2", with: @user.tel2
    fill_in "Tipo persona", with: @user.tipo_persona
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    fill_in "Correo", with: @user.correo
    fill_in "Documento", with: @user.documento
    fill_in "Fecha emision del documento", with: @user.fecha_emision_del_documento
    fill_in "Fecha vencimiento del documento", with: @user.fecha_vencimiento_del_documento
    fill_in "Nombre", with: @user.nombre
    fill_in "Tel1", with: @user.tel1
    fill_in "Tel2", with: @user.tel2
    fill_in "Tipo persona", with: @user.tipo_persona
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit user_url(@user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
