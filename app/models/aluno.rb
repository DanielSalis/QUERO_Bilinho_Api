class Aluno < ApplicationRecord
    validates :nome, 
        presence: true, 
        uniqueness: true
    validades :cpf, 
        presence: true,
        uniqueness: true,
        length: {is: 11},
        numericality: { only_integer: true }
    validades :data_nascimento,
        allow_blank: true
    validades :telefone_celular
        allow_blank: true
    
    has_one :TipoGenero
    has_one :MeioPagamento 
end
