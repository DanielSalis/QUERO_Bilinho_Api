class TipoGenero < ApplicationRecord
    validates :nome, 
        presence: true, 
        uniqueness: true
end
