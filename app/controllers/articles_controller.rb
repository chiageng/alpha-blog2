class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]
    def show
        set_article
    end 

    def index
        @articles = Article.all 
    end

    def new 
        @article = Article.new 
    end 

    def edit 
        set_article
    end 

    def update 
        set_article
        if @article.update(article_params)
            flash[:notice] = "The article was updated successsfully"
            redirect_to article_path(@article)
        else 
            render 'edit'
        end
    end

    def destroy
        set_article
        @article.destroy 
        redirect_to articles_path
    end


    def create 
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = 'The article has been saved successfully!'
            redirect_to article_path(@article)
        
        else
            render 'new' 
        end
    end

    private 
    def set_article
        @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title, :description)
    end
end
