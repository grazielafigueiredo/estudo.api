# frozen_string_literal: true

# require 'blabla'
require 'cpf_faker'
require 'date'
require 'faker'
require 'factory_bot'
require 'httparty'
require 'json'
require 'rspec'
require 'tiny_tds'
require 'timeout'

require_relative 'services/aplicap'
require_relative 'databases/carrinhoDb'
require_relative 'databases/credito_lottocapDb'
require_relative 'databases/create_user_DB'
require_relative 'databases/database'
require_relative 'databases/pre_vendaDb'
require_relative 'databases/titulo_matrizDb'
require_relative 'databases/titulo_matrizDbDEV'
require_relative 'factories/boleto_factory'
require_relative 'factories/cart_factory'
require_relative 'factories/user_factory'
require_relative 'services/boleto'
require_relative 'services/carrinho'
require_relative 'services/criarUser'
require_relative 'services/cartaoCredito'
require_relative 'services/creditoLottocap'
require_relative 'services/landing'
require_relative 'services/preVenda'
require_relative 'services/producao'
require_relative 'services/resgate'
require_relative 'services/ranking'
require_relative 'services/transferencia'
require_relative 'services/titulos'
require_relative 'services/user'


RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include FactoryBot::Syntax::Methods

  timeout = default_max_wait_time = 5
end


RSpec.configure do |config|
  config.example_status_persistence_file_path = 'some_file.txt'
end