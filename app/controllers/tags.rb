get "/tag" do
  @tags = Tag.get_list
  erb :tags
end
