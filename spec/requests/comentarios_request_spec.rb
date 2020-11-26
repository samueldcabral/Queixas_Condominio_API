# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ComentariosRequest', :type => :request do
  context 'Requests de Comentário'

  # it 'return all comentarios' do
  #   # request.headers["X-Usuario-Email"] = "adriano@admin.com"
  #   # request.headers["X-Usuario-Token"] = "UxQUfrH28eZrrkQ6zooH"
  #   # request.headers["ACCEPT"] = "application/json"
  #   # get "/comentarios"
  #   # headers = {"X-Usuario-Email" => "adriano@admin.com", "X-Usuario-Token" => "UxQUfrH28eZrrkQ6zooH"}
  #   headers = { "ACCEPT" => "application/json", "X-Usuario-Email" => "adriano@admin.com", "X-Usuario-Token" => "UxQUfrH28eZrrkQ6zooH"}
  #   post '/comentarios', :params => { :comentario => {:descricao => "minha descrição"}}, :headers => headers
  #   expect(response).to have_http_status(:success)
  # end




  # it 'return all comentarios' do
  #     request.headers["X-Usuario-Email"] = "adriano@admin.com"
  #     request.headers["X-Usuario-Token"] = "UxQUfrH28eZrrkQ6zooH"
  #     request.headers["ACCEPT"] = "application/json"
  #     post '/comentarios', :params => { :comentario => {:descricao => "minha descrição"}}
  #     expect(response).to have_http_status(:success) #undefined method `headers' for nil:NilClass
  # end
  #
  # it 'return all comentarios' do
  #     headers = { "ACCEPT" => "application/json", "X-Usuario-Email" => "adriano@admin.com", "X-Usuario-Token" => "UxQUfrH28eZrrkQ6zooH"}
  #     post '/comentarios', :params => { :comentario => {:descricao => "minha descrição"}}, :headers => headers
  #     expect(response).to have_http_status(:success) #can't modify frozen String: "adriano@admin.com"
  # end
  #
  # it 'return all comentarios' do
  #     headers = { "ACCEPT" => "application/json"}
  #     post '/comentarios', :params => { :comentario => {:descricao => "minha descrição"}}, :headers => headers
  #     expect(response).to have_http_status(:success) # retorna 401
  # end
  #
  # it 'return all comentarios' do
  #   get '/comentarios'
  #   expect(response).to have_http_status(:success) # retorna 302
  # end

  context 'Comentário inválido' do
    it 'possui valores nulos' do
      comentario = Comentario.new
      expect(comentario.valid?).to be_falsey
    end
  end
end
