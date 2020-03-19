# frozen_string_literal: true

require 'utils/constant'
require 'services/user'


class ApiCreateUser
  include HTTParty
  base_uri Constant::Url
  headers 'Content-Type' => 'application/json'

  def self.post_CadastrarUsuario(token, nomeCompleto, cpf, email)
    headers['Authorization'] = token

    @createUser = {
      "obj": {
        "nomeCompleto": nomeCompleto,
        "dataNascimento": '1997-01-01T00:00:00-03:00',
        "cpf": cpf,
        "email": email,
        "aceitaReceberMensagemDeMarketingPorEmail": false,
        "aceitaOsTermosECondicoesDeUso": true,
        "cdPromocaoUsuario": nil,
        "senha": '1234',
        "metodo_de_cadastro": 'email'
      }
    }
    post('/Usuario/CadastrarUsuario', body: @createUser.to_json)
  end

  def self.post_ValidarDadosUsuarioCriacao(token, nomeCompleto, cpf, email)
    headers['Authorization'] = token

    @validarUser = {
      "obj": {
        "nomeCompleto": nomeCompleto,
        "email": email,
        "cpf": cpf
      },
      "atualPagina": 0,
      "tamanhoPagina": 0
    }
    post('/Usuario/ValidarDadosUsuarioCriacao', body: @validarUser.to_json)
  end

  def self.post_AlterarDadosUsuario(token, email, cpf)
    headers['Authorization'] = token

    @alterarDadosUsuario = {
      "obj": {
        "apelido": 'grazi',
        "nomeCompleto": 'grazi a',
        "email": email,
        "cpf": cpf,
        "idNacionalidade": 32,
        "sexo": 3,
        "telefoneDDD": '11',
        "telefoneNumero": '23456789',
        "cep": '06160000',
        "dataNascimento": '1995-01-01T00:00:00-02:00',
        "enderecoLogradouro": 'Avenida Benedito Alves Turíbio',
        "enderecoNumero": '7777',
        "enderecoComplemento": 'até 501/502',
        "enderecoBairro": 'Padroeira',
        "enderecoCidade": 'Osasco',
        "enderecoEstado": 'SP',
        "PEP": false,
        "nmPEP": '',
        "cargoPEP": '',
        "parentescoPEP": ''
      },
      "atualPagina": 0,
      "tamanhoPagina": 0
    }
    post('/Usuario/AlterarDadosUsuario', body: @alterarDadosUsuario.to_json)
  end

  def self.get_buscarDadosUsuario(token)
    headers['Authorization'] = token
    get('/Usuario/BuscarDadosUsuario', body: @buscarDadosUsuario.to_json)
  end
end
