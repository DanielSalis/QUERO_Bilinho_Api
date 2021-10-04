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

Instituicao.create!(nome: 'Instituiçao01', cnpj: '37091010000190', tipo_instituicaos_id: 1)
Instituicao.create!(nome: 'Instituiçao02', cnpj: '37091010000192', tipo_instituicaos_id: 2)
Instituicao.create!(nome: 'Instituiçao03', cnpj: '37091010000193', tipo_instituicaos_id: 3)

Aluno.create!(nome: 'Aluno01', cpf: '11122233355', data_nascimento: '14-10-1998', telefone_celular: 99998888, tipo_generos_id: 1, meio_pagamentos_id: 1)
Aluno.create!(nome: 'Aluno02', cpf: '11122233356', data_nascimento: '14-01-1998', telefone_celular: 99997777, tipo_generos_id: 1, meio_pagamentos_id: 2)
Aluno.create!(nome: 'Aluno03', cpf: '11122233357', data_nascimento: '14-02-1998', telefone_celular: 99996666, tipo_generos_id: 2, meio_pagamentos_id: 1)
Aluno.create!(nome: 'Aluno04', cpf: '11122233358', data_nascimento: '14-03-1998', telefone_celular: 99995555, tipo_generos_id: 2, meio_pagamentos_id: 2)

Matricula.create!(valor: 200, quantidade_faturas: 12, dia_vencimento: 20, instituicaos_id: 1, alunos_id: 1)
Matricula.create!(valor: 200, quantidade_faturas: 10, dia_vencimento: 12, instituicaos_id: 1, alunos_id: 2)
Matricula.create!(valor: 350.90, quantidade_faturas: 24, dia_vencimento: 2, instituicaos_id: 2, alunos_id: 3)