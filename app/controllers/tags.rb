get "/tag" do
  @tags = Tag.get_list
  erb :tags
end

get '/tag/:tag_id' do
  @posts = Tag.posts_with_tag(params[:tag_id])
  erb :index
end