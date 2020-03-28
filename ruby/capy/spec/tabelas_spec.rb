describe "Tabelas", :tabs, :smoke do
  before(:each) do
    visit "/tables"
  end

  it "deve exibir o salario do stark" do

    # funcao all retorna todos os elementos
    # funcao find apenas retorna 1 elemento
    atores = all("table tbody tr")

    # funcao detect eh como um foreach, percorre por todos os elementos da tr
    # funcao include eh como se fosse um contain... ou seja verifica pra cada texto da tr se eh o Robert
    stark = atores.detect { |ator| ator.text.include?("Robert Downey Jr") }

    # verifica se no texto da tr stark, contem 10.000.000
    expect(stark.text).to include "10.000.000"
  end

  it "deve exibir o salario do Vin Diesel" do

    # busca a tr que tenha o valor passado no text:
    diesel = find("table tbody tr", text: "@vindiesel")
    expect(diesel).to have_content "10.000.000"
  end

  it "deve exibir o filme velozes" do
    diesel = find("table tbody tr", text: "@vindiesel")

    # traz todas as td, mas salva na variavel apenas a que esta na terceira posicao
    movie = diesel.all("td")[2].text

    expect(movie).to eql "Fast & Furious"
  end

  it "deve exibir o insta do Chris Evans" do
    evans = find("table tbody tr", text: "Chris Evans")
    insta = evans.all("td")[4].text

    expect(insta).to eql "@teamcevans"
  end

  it "deve selecionar Chris Pratt para remoção" do
    prat = find("table tbody tr", text: "Chris Pratt")
    prat.find("a", text: "delete").click

    # pega o texto que eh exibido no alert
    msg = page.driver.browser.switch_to.alert.text

    expect(msg).to eql "Chris Pratt foi selecionado para remoção!"
  end

  it "deve selecionar Chris Pratt para edição" do
    prat = find("table tbody tr", text: "Chris Pratt")
    prat.find("a", text: "edit").click

    # pega o texto que eh exibido no alert
    msg = page.driver.browser.switch_to.alert.text

    expect(msg).to eql "Chris Pratt foi selecionado para edição!"
  end
end
