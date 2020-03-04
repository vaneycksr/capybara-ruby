describe "Drag and Drop", :drop do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/drag_and_drop"
  end

  it "homem aranha pertence ao time stark" do

    # buscando div dropavel para onde quero mandar a imagem
    stark = find(".team-stark .column")
    cap = find(".team-cap .column")

    # identificando elemento que quero mover
    spiderman = find('img[alt$="Aranha"]')

    # movendo a imagem para a outra drag
    spiderman.drag_to stark

    # validando se a div de destino realmente tem a imagem
    expect(stark).to have_css 'img[alt$="Aranha"]'

    # validando se a imagem nao esta mais na div original
    expect(cap).not_to have_css 'img[alt$="Aranha"]'

    sleep 5
  end
end
