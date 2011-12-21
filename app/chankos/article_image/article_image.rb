module ArticleImage
  include Chanko::Unit

  active_if do |context, options|
    true
  end

  scope(:controller) do
    callback(:show) do
    end
  end

  scope(:view) do
    callback(:multipart) do
      form_for(:article, :url => articles_path, :html => {:method => 'post', :multipart => true}, &form)
    end

    callback(:input) do
      form.file_field :image
    end

    callback(:image) do
      next unless article.image.file?
      image_tag article.image.url(:medium)
    end
  end
end
