class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    def new
        @article = Article.new
    end

    def create
        # fail #halts the request allowing you to examine the request parameters
        @article = Article.new(params[:article])
        @article.save
        redirect_to article_path(@article)
    end
end
