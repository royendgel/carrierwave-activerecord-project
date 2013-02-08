class ArticleFilesController < ApplicationController

  def file
    article = Article.find(params[:id])

    send_data(article.file.read, :filename => article.file.file.filename)
  end

end