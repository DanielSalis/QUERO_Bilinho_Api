class TipoGenero < ApplicationRecord
    validades :nome, 
        presence: true, 
        uniqueness: true
end
