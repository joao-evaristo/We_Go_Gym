require "test_helper"

class AcademiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @academium = academia(:one)
  end

  test "should get index" do
    get academia_url
    assert_response :success
  end

  test "should get new" do
    get new_academium_url
    assert_response :success
  end

  test "should create academium" do
    assert_difference("Academium.count") do
      post academia_url, params: { academium: { cnpj: @academium.cnpj, endereco: @academium.endereco, facebook: @academium.facebook, instagram: @academium.instagram, nome: @academium.nome, precoMatricula: @academium.precoMatricula, precoMensalidade: @academium.precoMensalidade, site: @academium.site, telefone: @academium.telefone } }
    end

    assert_redirected_to academium_url(Academium.last)
  end

  test "should show academium" do
    get academium_url(@academium)
    assert_response :success
  end

  test "should get edit" do
    get edit_academium_url(@academium)
    assert_response :success
  end

  test "should update academium" do
    patch academium_url(@academium), params: { academium: { cnpj: @academium.cnpj, endereco: @academium.endereco, facebook: @academium.facebook, instagram: @academium.instagram, nome: @academium.nome, precoMatricula: @academium.precoMatricula, precoMensalidade: @academium.precoMensalidade, site: @academium.site, telefone: @academium.telefone } }
    assert_redirected_to academium_url(@academium)
  end

  test "should destroy academium" do
    assert_difference("Academium.count", -1) do
      delete academium_url(@academium)
    end

    assert_redirected_to academia_url
  end
end
