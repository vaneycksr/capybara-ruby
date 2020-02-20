
describe 'Meu primeiro script' do

    it 'visitar a página' do

        # acessando o site  
        visit 'https://training-wheels-protocol.herokuapp.com'
        
        expect(page.title).to eql 'Training Wheels Protocol'
    end

end