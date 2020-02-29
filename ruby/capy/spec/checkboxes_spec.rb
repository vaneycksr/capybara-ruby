describe "Caixas de Seleção", :checkbox do

  # para todos os cenarios, ira passar por esse hook antes
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/checkboxes"
  end

  it "marcando uma opção" do

    #marca pelo id do campo
    check("thor")
  end

  it "desmarcando uma opção" do
    uncheck("antman")
  end

  it "marcando com find set true" do
    find("input[value=cap]").set(true)
  end

  it "desmarcando com find set false" do
    find("input[value=guardians]").set(false)
  end

  # ao termino de cada cenario, aguarda 3 segundos
  after(:each) do
    sleep 3
  end
end
