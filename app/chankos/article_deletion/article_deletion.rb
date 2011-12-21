module ArticleDeletion
  include Chanko::Unit

  active_if do |context, options|
    true
  end

  scope(:view) do
    callback(:button) do
      content_tag :div, :class => "delete_button" do
        button_to :delete, article_path(article), :method => :delete, :confirm => 'Are you sure?'
      end
    end
  end

  scope("ArticlesController") do
    callback(:destroy) do
      if article = Article.find_by_id(params[:id])
        article.destroy
      end
      redirect_to top_path
    end
  end

end
