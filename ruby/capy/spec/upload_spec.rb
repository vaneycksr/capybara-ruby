describe "Upload", :upload do
  before(:each) do
    visit "/upload"

    # retorna o caminho relativo da pasta do projeto (serve para qualquer sistema operacional)
    # a variavel com o @ eh uma variavel de instancia
    @arquivo = Dir.pwd + "/spec/fixtures/arquivo.txt"

    @imagem = Dir.pwd + "/spec/fixtures/ruby.png"
  end

  it "upload com arquivo de texto" do

    # metodo usado pra anexar o arquivo
    # entre parenteses -> (identificador do elemento (botao), arquivo)
    attach_file("file-upload", @arquivo)

    click_button "Upload"

    div_arquivo = find("#uploaded-file")
    expect(div_arquivo.text).to eql "arquivo.txt"
  end

  it "upload de imagem", :upload_imagem do
    attach_file("file-upload", @imagem)

    click_button "Upload"

    #buscar elemento da imagem
    img = find("#new-image")

    # como a variavel eh um elemento do capybara, posso acessar qualquer atributo desse elemento
    expect(img[:src]).to include "/uploads/ruby.png"

    #div_imagem = find("#uploaded-file")
    #expect(div_imagem.text).to eql "ruby.png"
  end

  after(:each) do
    sleep 3
  end
end
