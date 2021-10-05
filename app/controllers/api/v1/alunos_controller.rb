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

            def create
                aluno = Aluno.new(alunos_params)

                if aluno.save
                    render json: {
                        status: 'Success',
                        message: 'Aluno criado com sucesso',
                        data: aluno
                    }, status: :ok
                else
                    render json: {
                        status: 'ERROR',
                        message:'Aluno não pode ser criado',
                        data:aluno.errors.details}, status: :unprocessable_entity
				end
			end
            
            private
            def alunos_params
                params.permit(:nome, :cpf, :data_nascimento, :telefone_celular, :tipo_generos_id, :meio_pagamentos_id)
            end
        end    
    end
end