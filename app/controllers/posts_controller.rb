class PostsController < ApplicationController
  helper_method :filter_options, :current_filter, :fix_n_plus_one_queries?

  def index
    @posts = Post.where(comments_count: current_filter)

    if fix_n_plus_one_queries?
      @posts = @posts.preload(:comments)
    end
  end

  private

  def filter_options
    [5, 10, 50, 100, 1000, 10_000]
  end

  def current_filter
    params[:filter] || 5
  end

  def fix_n_plus_one_queries?
    params[:fix_n_plus_one_queries] == "1"
  end
end
