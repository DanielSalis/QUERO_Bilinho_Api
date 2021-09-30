class Matricula < ApplicationRecord
    validates :valor, 
        presence: true  
    validates :quantidade_faturas, 
        presence: true
    validates :dia_vencimento, 
        presence: true

    belongs_to :TipoInstituicao
    belongs_to :Aluno
end
