require "application_system_test_case"

class CadastrosTest < ApplicationSystemTestCase
  setup do
    @cadastro = cadastros(:one)
  end

  test "visiting the index" do
    visit cadastros_url
    assert_selector "h1", text: "Cadastros"
  end

  test "should create cadastro" do
    visit cadastros_url
    click_on "New cadastro"

    fill_in "Bio", with: @cadastro.bio
    fill_in "Birth", with: @cadastro.birth
    fill_in "Created", with: @cadastro.created
    fill_in "Doc cpf", with: @cadastro.doc_cpf
    fill_in "Doc rg", with: @cadastro.doc_rg
    fill_in "Email", with: @cadastro.email
    fill_in "End date", with: @cadastro.end_date
    fill_in "Found", with: @cadastro.found
    fill_in "Goal", with: @cadastro.goal
    fill_in "Name", with: @cadastro.name
    fill_in "Phone", with: @cadastro.phone
    fill_in "Start date", with: @cadastro.start_date
    check "Status" if @cadastro.status
    click_on "Create Cadastro"

    assert_text "Cadastro was successfully created"
    click_on "Back"
  end

  test "should update Cadastro" do
    visit cadastro_url(@cadastro)
    click_on "Edit this cadastro", match: :first

    fill_in "Bio", with: @cadastro.bio
    fill_in "Birth", with: @cadastro.birth
    fill_in "Created", with: @cadastro.created
    fill_in "Doc cpf", with: @cadastro.doc_cpf
    fill_in "Doc rg", with: @cadastro.doc_rg
    fill_in "Email", with: @cadastro.email
    fill_in "End date", with: @cadastro.end_date
    fill_in "Found", with: @cadastro.found
    fill_in "Goal", with: @cadastro.goal
    fill_in "Name", with: @cadastro.name
    fill_in "Phone", with: @cadastro.phone
    fill_in "Start date", with: @cadastro.start_date
    check "Status" if @cadastro.status
    click_on "Update Cadastro"

    assert_text "Cadastro was successfully updated"
    click_on "Back"
  end

  test "should destroy Cadastro" do
    visit cadastro_url(@cadastro)
    click_on "Destroy this cadastro", match: :first

    assert_text "Cadastro was successfully destroyed"
  end
end
