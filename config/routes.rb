Rails.application.routes.draw do
  namespace 'api' do
  	namespace 'v1' do
  		resources :tipo_instituicaos, :tipo_generos, :meio_pagamentos, :instituicaos, :alunos, :matriculas
  	end
  end
end