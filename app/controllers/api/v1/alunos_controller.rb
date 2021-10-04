module Api
    module V1
        class AlunosController < ApplicationController
            def index 
                types = Aluno.all;
                render json: {
                    status: 'success',
                    message: 'Listando todos os alunos',
                    data: types
                }, status: :ok
            end
        end    
    end
end