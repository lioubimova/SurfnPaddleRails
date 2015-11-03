class PostController < ApplicationController
    def index

      @recent_post = Post.all.max_by{|p|p.created_at}
      @posts = Post.all.reject{|p| p == @recent_post}
    end

    def show
      @posts = Post.all
      @recent_post = Post.find(params[:id])
    end
  end
