require 'test_helper'

class ArquivosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arquivo = arquivos(:one)
  end

  test "should get index" do
    get arquivos_url, as: :json
    assert_response :success
  end

  test "should create arquivo" do
    assert_difference('Arquivo.count') do
      post arquivos_url, params: { arquivo: { file: @arquivo.file } }, as: :json
    end

    assert_response 201
  end

  test "should show arquivo" do
    get arquivo_url(@arquivo), as: :json
    assert_response :success
  end

  test "should update arquivo" do
    patch arquivo_url(@arquivo), params: { arquivo: { file: @arquivo.file } }, as: :json
    assert_response 200
  end

  test "should destroy arquivo" do
    assert_difference('Arquivo.count', -1) do
      delete arquivo_url(@arquivo), as: :json
    end

    assert_response 204
  end
end
