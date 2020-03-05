describe "Teclado", :key do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/key_presses"
  end

  it "enviando teclas" do

    #simulando envio de teclas
    find("#campo-id").send_keys :space

    expect(page).to have_content "You entered: SPACE"
  end
end
