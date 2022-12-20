class CepSearchService


  def call(cep)
    find_cep(cep)
  end
  


  private

  def find_cep(cep)
    require 'rest-client'
    require 'json'
    
    if cep.present?
      url = "viacep.com.br/ws/#{cep}/json/"
    else
      url = "viacep.com.br/ws/07175140/json/"
    end

    resp = RestClient.get "#{url}"

    JSON.parse(resp.body)
  end
end