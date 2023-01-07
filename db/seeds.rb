# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

all_gyms = JSON.parse(File.read(Rails.root.join('db/academias.json')))

all_gyms.each do |gym|
  if gym['Site'].include? "instagram"
    instagram = gym['Site']
    site = ''
    facebook = ''
  elsif gym['Site'].include? "facebook"
    instagram = ''
    site = ''
    facebook = gym['Site']
  else
    instagram = ''
    site = gym['Site']
    facebook = ''
  end
  Academium.create(
    nome: gym['Nome'],
    cnpj: '',
    telefone: gym['Telefone'],
    endereco: gym['Endereco'],
    precoMatricula: '',
    precoMensalidade: '',
    site: site,
    instagram: instagram,
    facebook: facebook
  )
<<<<<<< HEAD
end
=======
end
>>>>>>> 6df8c126e9851aab01cf35ea9fcda808906eaea2
