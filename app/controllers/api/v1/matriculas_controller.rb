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

            def destroy
                begin
                    matricula = Matricula.find(params[:id])

                    if matricula.destroy
                        render json: {status: 'SUCCESS', message:'Matrícula excluída', data: matricula},status: :ok
                    else
                        render json: {status: 'ERROR', message:'Problema ao excluir', data: matricula.errots},status: :ok
                    end
                  
                    rescue Exception => e
                        render json: {status: 'ERROR', message: e},status: :bad_request
                  end
			end
            
            def create
                matricula = Matricula.new(matricula_params)
    
                    if matricula.save
                        render json: {
                            status: 'Success',
                            message: 'Matrícula criada com sucesso',
                            data: matricula
                        }, status: :ok
                    else
                        render json: {
                            status: 'ERROR',
                            message:'Matrícula não foi criada',
                            data: matricula.errors.details}, status: :unprocessable_entity
                    end
                end
    
            private
            def matricula_params
                params.permit(:valor, :quantidade_faturas, :dia_vencimento, :instituicaos_id, :alunos_id)
            end
        end    
    end
end