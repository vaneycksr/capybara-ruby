
describe 'Forms' do

    it 'login com sucesso' do

        visit 'https://training-wheels-protocol.herokuapp.com/login'

        # preencher um campo
        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        # clicar no botao
        click_button 'Login'

        # verificar se a mensagem de sucesso eh exibida
        expect(find('#flash').visible?).to be true

        # verificando se eh a mensagem esperada
        #expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

    end

end