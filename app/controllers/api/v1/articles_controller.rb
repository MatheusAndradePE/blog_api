class Api::V1::ArticlesController < ApplicationController
  def index
    @articles = Article.all

    render json: @articles
  end

  def create
    @article = Article.new article_params

    if @article.save
      render json: @article, status: :created
    else
      render json: {error: "Nao foi possivel criar"}, status: :not_found
    end
  end

  def update
    @article = Article.find_by(id: params[:id])

    if @article
      if @article.update article_params
        render json: @article
      else
        render json: {error: "Nao foi possivel alterar"}, status: :not_found
      end
    else
      render json: {error: "Artigo nao encontrado!"}, status: :not_found
    end
  end
  
  private
  def article_params
    params.permit(:title, :body)
  end
end
