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

            def create
            instituicao = Instituicao.new(instituicaos_params)

                if instituicao.save
                    render json: {
                        status: 'Success',
                        message: 'Instituição criada com sucesso',
                        data: instituicao
                    }, status: :ok
                else
                    render json: {
                        status: 'ERROR',
                        message:'Instituição não foi criada',
                        data: instituicao.errors.details}, status: :unprocessable_entity
				end
			end

            private
            def instituicaos_params
                params.permit(:nome, :cnpj, :tipo_instituicaos_id)
            end
        end    
    end
end