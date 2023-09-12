require "application_system_test_case"

class RecadosTest < ApplicationSystemTestCase
  setup do
    @recado = recados(:one)
  end

  test "visiting the index" do
    visit recados_url
    assert_selector "h1", text: "Recados"
  end

  test "creating a Recado" do
    visit recados_url
    click_on "New Recado"

    fill_in "Autor", with: @recado.autor
    fill_in "Descricao", with: @recado.descricao
    click_on "Create Recado"

    assert_text "Recado was successfully created"
    click_on "Back"
  end

  test "updating a Recado" do
    visit recados_url
    click_on "Edit", match: :first

    fill_in "Autor", with: @recado.autor
    fill_in "Descricao", with: @recado.descricao
    click_on "Update Recado"

    assert_text "Recado was successfully updated"
    click_on "Back"
  end

  test "destroying a Recado" do
    visit recados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recado was successfully destroyed"
  end
end
