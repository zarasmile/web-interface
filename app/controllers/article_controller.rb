class ArticleController < ApplicationController
  def index
    url = 'http://localhost:3000/article_json'
    if params[:search]
      request_path = url + '?search=' + params[:search]
      response = HTTParty.get(request_path)
    else
      response = HTTParty.get(url)
    end
    @articles = JSON.parse(response.body)
  end
end
