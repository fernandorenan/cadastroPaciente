require "test_helper"

class CadastrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cadastro = cadastros(:one)
  end

  test "should get index" do
    get cadastros_url
    assert_response :success
  end

  test "should get new" do
    get new_cadastro_url
    assert_response :success
  end

  test "should create cadastro" do
    assert_difference("Cadastro.count") do
      post cadastros_url, params: { cadastro: { bio: @cadastro.bio, birth: @cadastro.birth, created: @cadastro.created, doc_cpf: @cadastro.doc_cpf, doc_rg: @cadastro.doc_rg, email: @cadastro.email, end_date: @cadastro.end_date, found: @cadastro.found, goal: @cadastro.goal, name: @cadastro.name, phone: @cadastro.phone, start_date: @cadastro.start_date, status: @cadastro.status } }
    end

    assert_redirected_to cadastro_url(Cadastro.last)
  end

  test "should show cadastro" do
    get cadastro_url(@cadastro)
    assert_response :success
  end

  test "should get edit" do
    get edit_cadastro_url(@cadastro)
    assert_response :success
  end

  test "should update cadastro" do
    patch cadastro_url(@cadastro), params: { cadastro: { bio: @cadastro.bio, birth: @cadastro.birth, created: @cadastro.created, doc_cpf: @cadastro.doc_cpf, doc_rg: @cadastro.doc_rg, email: @cadastro.email, end_date: @cadastro.end_date, found: @cadastro.found, goal: @cadastro.goal, name: @cadastro.name, phone: @cadastro.phone, start_date: @cadastro.start_date, status: @cadastro.status } }
    assert_redirected_to cadastro_url(@cadastro)
  end

  test "should destroy cadastro" do
    assert_difference("Cadastro.count", -1) do
      delete cadastro_url(@cadastro)
    end

    assert_redirected_to cadastros_url
  end
end
