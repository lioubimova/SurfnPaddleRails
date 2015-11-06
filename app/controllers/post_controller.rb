class PostController < ApplicationController
    def index

      @recent_post = Post.all.max_by{|p|p.created_at}
      @posts = Post.all.reject{|p| p == @recent_post}
    end

    def show

      @recent_post = Post.find(params[:id].to_i)
      @posts = Post.all.reject{|p| p == @recent_post}
    end
  end
