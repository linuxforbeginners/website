class HomeController < ApplicationController
  def index
    @article = Article.order(Arel.sql('RANDOM()')).first
  end
end
