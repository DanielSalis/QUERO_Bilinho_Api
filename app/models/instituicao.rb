class Instituicao < ApplicationRecord
    validates :nome, 
        presence: true,
        uniqueness: true
    validates :cnpj,
        uniqueness: true,
        length: {is: 14},
        allow_blank: true, 
        numericality: { only_integer: true }

    has_one :TipoInstituicao
end
