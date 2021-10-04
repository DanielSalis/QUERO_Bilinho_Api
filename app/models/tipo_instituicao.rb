class TipoInstituicao < ApplicationRecord
    validates :nome, 
        presence: true, 
        uniqueness: true
end
