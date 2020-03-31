# capybara-ruby
Curso com foco em automatizar testes para aplicações web com Ruby e Capybara.

Na pasta do projeto:

* Criar arquivo Gemfile
	- origem do repositório onde vai buscar as gems

Digitar os seguintes comandos na pasta do projeto
* bundle install
* rspec --init

OBS: Como utilizo o linux (Ubuntu), segue alguns comandos para colocar o driver do selenium nas varáveis de ambiente do sistema.

Após descompactar o driver, seguir os seguintes comandos.

• Driver do Chrome
	
	• sudo mv chromedriver /usr/bin/chromedriver
 	• sudo chown root:root /usr/bin/chromedriver
	• sudo chmod +x /usr/bin/chromedriver

• Driver do Firefox

	• chmod +x geckodriver
	• sudo mv geckodriver /usr/local/bin/
