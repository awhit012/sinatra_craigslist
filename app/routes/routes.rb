 get '/' do
  @categories = Category.all
  erb :index
end

get '/posts/new_post' do
  unless request.xhr?
    erb :new_post
  else
    erb :new_post, layout: false
  end
end

get "/categories/:id" do
  # TODO fix this pass statement to not break if url has no letters
  pass if params[:id] =~ /[a-z]/
  @this_category = Category.find(params[:id])
  @posts = Post.where category_id: params[:id]
  unless request.xhr?
    erb :category_template
  else
    erb :category_template, layout: false
  end
end

post '/posts/new_post' do
  params[:url] = (1..1000000).to_a.sample.to_s(16)
  @post = Post.create(params)
  redirect :/
end

get '/posts/:id' do
  pass if params[:id] =~ /[a-z]/
  @post = Post.find(params[:id])
  unless request.xhr?
    erb :post_template
  else
    erb :post_template, layout: false
  end
end

get '/posts/:post_url' do
  @my_post = Post.find_by! url: params[:post_url]
  p @my_post
  erb :my_post_template
end

get '/posts/:post_url/edit' do
  "whatupbitcheses"
end



