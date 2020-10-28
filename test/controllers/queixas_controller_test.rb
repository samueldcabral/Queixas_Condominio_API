require 'test_helper'

class QueixasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @queixa = queixas(:one)
  end

  test "should get index" do
    get queixas_url, as: :json
    assert_response :success
  end

  test "should create queixa" do
    assert_difference('Queixa.count') do
      post queixas_url, params: { queixa: { arquivos: @queixa.arquivos, comentarios: @queixa.comentarios, descricao: @queixa.descricao, gravidade: @queixa.gravidade, privacidade: @queixa.privacidade, status: @queixa.status, tipo: @queixa.tipo, titulo: @queixa.titulo, usuario_id: @queixa.usuario_id, usuarioid: @queixa.usuarioid } }, as: :json
    end

    assert_response 201
  end

  test "should show queixa" do
    get queixa_url(@queixa), as: :json
    assert_response :success
  end

  test "should update queixa" do
    patch queixa_url(@queixa), params: { queixa: { arquivos: @queixa.arquivos, comentarios: @queixa.comentarios, descricao: @queixa.descricao, gravidade: @queixa.gravidade, privacidade: @queixa.privacidade, status: @queixa.status, tipo: @queixa.tipo, titulo: @queixa.titulo, usuario_id: @queixa.usuario_id, usuarioid: @queixa.usuarioid } }, as: :json
    assert_response 200
  end

  test "should destroy queixa" do
    assert_difference('Queixa.count', -1) do
      delete queixa_url(@queixa), as: :json
    end

    assert_response 204
  end
end
