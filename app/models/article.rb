class Article < ActiveRecord::Base
	self.table_name  = 'tables.table_article'
	self.primary_key = 'article_id'
end