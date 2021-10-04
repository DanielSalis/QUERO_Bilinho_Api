# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

TipoInstituicao.create!(nome: 'Universidade')
TipoInstituicao.create!(nome: 'Escola')
TipoInstituicao.create!(nome: 'Creche')

TipoGenero.create!(nome: 'M')
TipoGenero.create!(nome: 'F')

MeioPagamento.create!(nome: 'Boleto')
MeioPagamento.create!(nome: 'Cartao')