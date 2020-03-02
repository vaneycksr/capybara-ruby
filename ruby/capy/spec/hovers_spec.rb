describe "Mouse Hover", :hovers do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/hovers"
  end

  it "quando passo o mouse sobre o blade" do
    card = find("img[alt=Blade]")

    # metodo houver faz a função de passar o mouse pela imagem
    card.hover

    # verifica se ao passar o mouse na imagem, eh exibido uma frase
    expect(page).to have_content "Nome: Blade"
  end

  it "quando passo o mouse sobre o pantera negra" do
    card = find('img[alt="Pantera Negra"]')

    card.hover

    expect(page).to have_content "Nome: Pantera Negra"
  end

  it "quando passo a mouse sobre o homem aranha" do
    card = find('img[alt="Homem Aranha"]')

    card.hover

    expect(page).to have_content "Nome: Homem Aranha"
  end
end
