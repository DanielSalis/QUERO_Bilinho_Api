module Api
    module V1
        class InstituicaosController < ApplicationController
            def index 
                types = Instituicao.all;
                render json: {
                    status: 'success',
                    message: 'Listando todas as instituições',
                    data: types
                }, status: :ok
            end
        end    
    end
end