get_data = RestClient.get('https://dadosabertos.camara.leg.br/api/v2/deputados?')

data = JSON.parse(get_data)

data.each["dados"] do |politician|
  Politician.create(

  )
end