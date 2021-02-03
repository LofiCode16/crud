class PostsController < ApplicationController

    def index
        @posts = Post.all # SELECT * FROM posts;
    end

    def show
        @post = Post.find(params[:id]) # SELECT * FROM posts WHERE id = ? ;
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(title: params[:post][:title], content: params[:post][:content])

        @post.save

        redirect_to posts_index_path
    end
end