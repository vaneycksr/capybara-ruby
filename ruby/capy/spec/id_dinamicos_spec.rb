describe "IDs Dinâmicos", :ids_dinamicos do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/access"
  end

  # buscando elementos com ids dinamicos
  # $=  -> termina com
  # ^=  -> comeca com
  # *=  -> contem

  it "cadastro" do

    # busca pelo id dinamico e preenche o campo de login
    # find("#PortalTheme_wt10_block_wtcontent_holder_wt8_wtUsernameInput").set "vaneyck"
    find("input[id$=UsernameInput]").set "vaneyck"

    # busca pelo id dinamico e preenche o campo de senha
    # find("#PasswordInput_wt11_PortalTheme_wt7_block_wtcontent_holder_wt8_wt").set "123456"
    find("input[id^=PasswordInput]").set "123456"

    # busca pelo id dinamico e clica no botao de entrar
    # find("#PortalTheme_wt4_block_wtGetStartedButton_wtcontent_holder_OSCore_wt3_block").click
    find("a[id*=GetStartedButton]").click

    expect(page).to have_content "Dados enviados. Aguarde aprovação do seu cadastro!"
  end
end
