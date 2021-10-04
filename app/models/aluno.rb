class Aluno < ApplicationRecord
    validates :nome, 
        presence: true, 
        uniqueness: true
    validates :cpf, 
        presence: true,
        uniqueness: true,
        length: {is: 11},
        numericality: { only_integer: true }
    
    has_one :TipoGenero
    has_one :MeioPagamento 
end
