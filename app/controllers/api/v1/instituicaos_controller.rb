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

            def destroy
                begin
                    matricula = Matricula.find_by(instituicaos_id: params[:id])
                    matricula.destroy

                    instituicao = Instituicao.find(params[:id])

                    if instituicao.destroy
                        render json: {status: 'SUCCESS', message:'Insituição excluída', data: instituicao},status: :ok
                    else
                        render json: {status: 'ERROR', message:'Problema ao excluir', data: instituicao.errots},status: :ok
                    end
                  
                    rescue Exception => e
                        render json: {status: 'ERROR', message: e},status: :bad_request
                  end
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