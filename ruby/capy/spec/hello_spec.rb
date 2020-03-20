describe "Meu primeiro script", :smoke, :hello do
  it "visitar a página" do

    # acessando o site
    visit "/"

    expect(page.title).to eql "Training Wheels Protocol"
  end
end
