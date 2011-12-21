# -*- coding: utf-8 -*-
=begin
require 'spec_helper'

describe ArticleImageController, :type => :controller do
  before do
    enable_ext(:article_image)
  end

  it "success" do
    get :index
    response.should be_success
  end
end
=end
