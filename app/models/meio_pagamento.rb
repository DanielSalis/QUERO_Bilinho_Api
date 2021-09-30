class MeioPagamento < ApplicationRecord
    validades :nome, 
        presence: true, 
        uniqueness: true
end
