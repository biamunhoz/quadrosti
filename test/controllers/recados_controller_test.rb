require 'test_helper'

class RecadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recado = recados(:one)
  end

  test "should get index" do
    get recados_url
    assert_response :success
  end

  test "should get new" do
    get new_recado_url
    assert_response :success
  end

  test "should create recado" do
    assert_difference('Recado.count') do
      post recados_url, params: { recado: { autor: @recado.autor, descricao: @recado.descricao } }
    end

    assert_redirected_to recado_url(Recado.last)
  end

  test "should show recado" do
    get recado_url(@recado)
    assert_response :success
  end

  test "should get edit" do
    get edit_recado_url(@recado)
    assert_response :success
  end

  test "should update recado" do
    patch recado_url(@recado), params: { recado: { autor: @recado.autor, descricao: @recado.descricao } }
    assert_redirected_to recado_url(@recado)
  end

  test "should destroy recado" do
    assert_difference('Recado.count', -1) do
      delete recado_url(@recado)
    end

    assert_redirected_to recados_url
  end
end
