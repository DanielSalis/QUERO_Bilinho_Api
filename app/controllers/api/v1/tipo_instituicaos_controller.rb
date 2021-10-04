module Api 
    module V1
        class TipoInstituicaosController < ApplicationController
            def index 
                types = TipoInstituicao.all;
                render json: {
                    status: 'success',
                    message: 'Listando todos os tipos de instituições',
                    data: types
                }, status: :ok
            end
        end
    end
end