class PostsController < ApplicationController
  def index
    post = Struct.new(:title, :body)
    @posts = []
    10.times do |i|
     @posts << post.new(title: "title#{i}", body: "body#{i}")
    end
    render json: @posts
  end
end
