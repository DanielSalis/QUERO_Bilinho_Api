class Matricula < ApplicationRecord
    validates :valor, 
        presence: true  
    validates :quantidade_faturas, 
        presence: true
    validates :dia_vencimento, 
        presence: true

    has_one :Instituicao
    has_one :Aluno
end
