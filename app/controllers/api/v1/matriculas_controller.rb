module Api
    module V1
        class MatriculasController < ApplicationController
            def index 
                types = Matricula.all;
                render json: {
                    status: 'success',
                    message: 'Listando todas as matriculas',
                    data: types
                }, status: :ok
            end
        end    
    end
end