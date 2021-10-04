class MeioPagamento < ApplicationRecord
    validates :nome, 
        presence: true, 
        uniqueness: true
end
