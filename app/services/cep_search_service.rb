class CepSearchService


  def call(cep)
    find_cep(cep)
  end


  private

  def find_cep(cep)
    require 'rest-client'
    require 'json'
 
    url = "viacep.com.br/ws/#{cep}/json/"

    resp = RestClient.get "#{url}"

    puts JSON.parse(resp.body)
  end
end