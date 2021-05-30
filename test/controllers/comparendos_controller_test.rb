require "test_helper"

class ComparendosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comparendo = comparendos(:one)
  end

  test "should get index" do
    get comparendos_url
    assert_response :success
  end

  test "should get new" do
    get new_comparendo_url
    assert_response :success
  end

  test "should create comparendo" do
    assert_difference('Comparendo.count') do
      post comparendos_url, params: { comparendo: { Prestamo_id: @comparendo.Prestamo_id, estado: @comparendo.estado, fecha: @comparendo.fecha, valor: @comparendo.valor } }
    end

    assert_redirected_to comparendo_url(Comparendo.last)
  end

  test "should show comparendo" do
    get comparendo_url(@comparendo)
    assert_response :success
  end

  test "should get edit" do
    get edit_comparendo_url(@comparendo)
    assert_response :success
  end

  test "should update comparendo" do
    patch comparendo_url(@comparendo), params: { comparendo: { Prestamo_id: @comparendo.Prestamo_id, estado: @comparendo.estado, fecha: @comparendo.fecha, valor: @comparendo.valor } }
    assert_redirected_to comparendo_url(@comparendo)
  end

  test "should destroy comparendo" do
    assert_difference('Comparendo.count', -1) do
      delete comparendo_url(@comparendo)
    end

    assert_redirected_to comparendos_url
  end
end
