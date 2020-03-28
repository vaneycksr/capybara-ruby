describe "Forms", :screen do
  it "login com sucesso" do
    visit "/login"

    # preencher um campo
    fill_in "username", with: "stark"
    fill_in "password", with: "jarvis!"

    # clicar no botao
    click_button "Login"

    # verificar se a mensagem de sucesso eh exibida
    expect(find("#flash").visible?).to be true

    # verificando se eh a mensagem esperada
    #expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"

    # capturando screenshot  caminho onde vai ser salvo
    # page.save_screenshot("log/login_com_sucesso.png")
  end

  it "senha incorreta", :temp do
    visit "/login"

    fill_in "userId", with: "stark"
    fill_in "password", with: "123Mudar"

    click_button "Login"

    expect(find("#flash")).to have_content "Senha é invalida!"
  end

  # |e| representa cada propriedade de um cenario
  # after(:each) do |e|

  # gsub() pega uma substring em ruby
  # /^A-Za-z0-9 ]/  -> expressao regular que substitui caracter especial por string vazia
  # tr(' ','_') -> substitui espacos em branco por _
  #  nome = e.description.gsub(/[^A-Za-z0-9 ]/, "").tr(" ", "_")

  # page.save_screenshot("log/" + nome + ".png")
  # end
end
