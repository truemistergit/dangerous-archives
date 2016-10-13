class ArticlesController < ApplicationController
	def new
		@article= Article.new
		@articles = Article.order(article_id: :desc).first(2)
		render 'form_article'		
	end

	def create
		id=1;
		while(true)
			a = Article.find_by(article_id: id)
			break if(a.nil?)
			id+=1
		end

		a=Article.new(
			article_id:id,
			article_titre:params[:article][:titre],
			article_date_parution:params[:article][:date_parution],
			article_texte:params[:article][:texte]
			)
		a.save

		redirect_to controller: 'articles', action:'new'
	end
end
