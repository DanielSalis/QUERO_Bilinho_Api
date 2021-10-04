module Api
    module V1
        class TipoGenerosController < ApplicationController
            def index 
                types = TipoGenero.all;
                render json: {
                    status: 'success',
                    message: 'Listando todos os tipos de tipos de gêneros',
                    data: types
                }, status: :ok
            end
        end    
    end
end