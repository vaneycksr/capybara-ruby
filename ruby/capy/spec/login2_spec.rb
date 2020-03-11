describe "Login 2", :login2 do
  before(:each) do
    visit "/login2"
  end

  it "com data de nascimento" do

    # dessa forma tambem preenche o campo com capybara
    find("#userId").set "stark"
    find("#passId").set "jarvis!"

    login_form = find("#login")

    # o case é como um switch case do java

    # quando no text do formulario tiver cada um dos atributos (dia, mes, ano)
    # eh preenchido de uma forma

    # $('#login').text() tras o texto do formulario de login (o que tem dentro do label)
    case login_form.text

    # quando tiver dentro de login_form a palavra dia...
    when /Dia/
      find("#day").set "29"
    when /Mês/
      find("#month").set "05"
    when /Ano/
      find("#year").set "1979"
    end

    click_button "Login"

    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end
end
