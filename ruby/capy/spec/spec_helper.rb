# importando as bibliotecas necessarias
require "capybara"
require "capybara/rspec"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.include Capybara::DSL
end

# configurando o capybara
Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  #config.default_driver = :selenium

  # tempo maximo que o capybara aguarda ate um determinado elemento ser exibido na tela
  config.default_max_wait_time = 5

  # configurando url padrao
  config.app_host = "https://training-wheels-protocol.herokuapp.com"
end
