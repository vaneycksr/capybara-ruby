describe "Teclado", :key do
  before(:each) do
    visit "/key_presses"
  end

  it "enviando teclas" do

    # array de simbolos
    teclas = %i[tab escape space enter shift control alt]

    # foreach no ruby
    teclas.each do |t|

      #simulando envio de teclas
      find("#campo-id").send_keys t

      # to_s converte para string
      expect(page).to have_content "You entered: " + t.to_s.upcase
    end
  end

  it "enviando letras" do
    letras = %w[a s d f g j k l]

    letras.each do |l|
      find("#campo-id").send_keys l

      expect(page).to have_content "You entered: " + l.upcase
    end
  end
end
