get '/' do
  @posts = Post.get_list
  erb :index
end

