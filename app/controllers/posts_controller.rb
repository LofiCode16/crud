class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]

    def index
        @posts = Post.all # SELECT * FROM posts;
    end

    def show # SELECT * FROM posts WHERE id = ? ;
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)

        @post.save

        redirect_to posts_index_path
    end

    def edit
    end

    def update
        @post.update(post_params)

        redirect_to posts_index_path
    end

    def destroy
        @post.destroy

        redirect_to posts_index_path
    end

    private
    def set_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:title, :content)
    end

end

