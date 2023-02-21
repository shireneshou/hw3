class PostsController < ApplicationController

    def index
      @posts = Post.all
    end
  
    def new
      @post = Post.new
    end
  
    def create
      @post = Post.new
      @post["title"] = params["post"]["title"]
      @post["description"] = params["post"]["description"]
      @post["date"] = params["post"]["date"]
      @post.save
      redirect_to "/posts"
    end
  
  end
  