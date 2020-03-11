describe "Login com Cadastro", :login3 do
  before(:each) do
    visit "/access"
  end

  # escopo serve para restringir busca de elementos em uma pagina, evitando
  # elementos ambiguos
  it "login com sucesso" do

    # pega o elemento pai do input username
    login_form = find("#login")

    # faz a busca apenas no escopo do login por esses campos
    #login_form.find("input[name=username]").set "stark"
    #login_form.find("input[name=password]").set "jarvis!"

    # outra forma de trabalhar com escopos
    # dentro do elemento login, busca os elementos
    within("#login") do
      find("input[name=username]").set "stark"
      find("input[name=password]").set "jarvis!"
      click_button "Entrar"
    end

    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end

  it "cadastro com sucesso" do

    # outra forma de trabalhar com escopos
    # dentro do elemento login, busca os elementos
    within("#signup") do
      find("input[name=username]").set "vaneyck"
      find("input[name=password]").set "123456"
      click_link "Criar Conta"
    end

    expect(page).to have_content "Dados enviados. Aguarde aprovação do seu cadastro!"
  end
end
