class HomeController < ApplicationController
	def index
		@articles = Article.order(article_date_parution: :desc).all
	end
end
