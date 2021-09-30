class TipoInstituicao < ApplicationRecord
    validades :nome, 
        presence: true, 
        uniqueness: true
end
