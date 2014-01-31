get "/post/:post_id" do
  @post = Post.get_single_post(params[:post_id])
  @tags = @post.tags.map { |tag| tag.name }.join ","
  erb :post
end

get "/post/add/" do
  @url= "/"
  @post= Post.new
  erb :save
end

get "/post/edit/:post_id" do
  @post = Post.get_single_post(params[:post_id])
  @tags = @post.tags.map { |tag| tag.name }.join ","
  @url= "/post/" + @post.id.to_s
  erb :save
end

post "/post/save" do
  @post_data = params[:post]
  # return @post_data["title"]
  Post.save_post(@post_data)
  redirect "/"
end

get "/post/delete/:post_id" do
  Post.delete_post(params[:post_id])
  redirect "/"
end