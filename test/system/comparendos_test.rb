require "application_system_test_case"

class ComparendosTest < ApplicationSystemTestCase
  setup do
    @comparendo = comparendos(:one)
  end

  test "visiting the index" do
    visit comparendos_url
    assert_selector "h1", text: "Comparendos"
  end

  test "creating a Comparendo" do
    visit comparendos_url
    click_on "New Comparendo"

    fill_in "Prestamo", with: @comparendo.Prestamo_id
    check "Estado" if @comparendo.estado
    fill_in "Fecha", with: @comparendo.fecha
    fill_in "Valor", with: @comparendo.valor
    click_on "Create Comparendo"

    assert_text "Comparendo was successfully created"
    click_on "Back"
  end

  test "updating a Comparendo" do
    visit comparendos_url
    click_on "Edit", match: :first

    fill_in "Prestamo", with: @comparendo.Prestamo_id
    check "Estado" if @comparendo.estado
    fill_in "Fecha", with: @comparendo.fecha
    fill_in "Valor", with: @comparendo.valor
    click_on "Update Comparendo"

    assert_text "Comparendo was successfully updated"
    click_on "Back"
  end

  test "destroying a Comparendo" do
    visit comparendos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comparendo was successfully destroyed"
  end
end
