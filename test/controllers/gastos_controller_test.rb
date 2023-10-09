require "test_helper"

class GastosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gasto = gastos(:one)
  end

  test "should get index" do
    get gastos_url, as: :json
    assert_response :success
  end

  test "should create gasto" do
    assert_difference("Gasto.count") do
      post gastos_url, params: { gasto: { ano_registro: @gasto.ano_registro, descricao: @gasto.descricao, dia_registro: @gasto.dia_registro, forma_pgto: @gasto.forma_pgto, hora: @gasto.hora, mes_regsitro: @gasto.mes_regsitro, min: @gasto.min, valor: @gasto.valor } }, as: :json
    end

    assert_response :created
  end

  test "should show gasto" do
    get gasto_url(@gasto), as: :json
    assert_response :success
  end

  test "should update gasto" do
    patch gasto_url(@gasto), params: { gasto: { ano_registro: @gasto.ano_registro, descricao: @gasto.descricao, dia_registro: @gasto.dia_registro, forma_pgto: @gasto.forma_pgto, hora: @gasto.hora, mes_regsitro: @gasto.mes_regsitro, min: @gasto.min, valor: @gasto.valor } }, as: :json
    assert_response :success
  end

  test "should destroy gasto" do
    assert_difference("Gasto.count", -1) do
      delete gasto_url(@gasto), as: :json
    end

    assert_response :no_content
  end
end
