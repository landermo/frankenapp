class PagesController < ApplicationController
  def home
  end

  def dashboard
    @favorites = []
    dashboard = Post.all
    dashboard.each do |i|
    if i.is_favorited?(current_user.id)
      @favorites.push i
    end

  end
  end
  end
