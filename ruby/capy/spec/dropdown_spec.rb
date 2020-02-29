describe "Caixa de opções", :dropdown do
  it "item especifico simples" do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"

    # select('Opção',from: 'elemento'), quando o dropdown possui um id
    select("Loki", from: "dropdown")

    sleep 3
  end

  it "item especifico com o find" do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"

    #buscar dentro dessa classe
    drop = find(".avenger-list")

    # cuja a opcao tenha esse texto
    drop.find("option", text: "Scott Lang").select_option

    sleep 3
  end

  it "qualquer item", :sample do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"

    drop = find(".avenger-list")

    # funcao sample do ruby, pega qualquer elemento dentro de um array
    # funcao all, retorna todos os elementos
    drop.all("option").sample.select_option

    sleep 3
  end
end
