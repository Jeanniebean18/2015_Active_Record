get "/home" do
  erb :home
end

get "/create_photographer" do
  erb :create_photographer
end

get "/save_photographer" do
  @p = Photographer.new({name: params["name"]})
  @p.save
  erb :photographer_added
end

get "/show_photographers" do
  erb :all_photographers
end

get "/delete_photographer/:x" do
  if params["decision"] == "yes"
    @p = Photographer.find(params[:x])
    @p.delete
    @p.name "deleted"
  else
    redirect "/show_photographers"
  end
end





