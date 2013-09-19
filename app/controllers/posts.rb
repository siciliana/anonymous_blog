
#=========GET==================

# Show me a particular post

get '/post' do
  erb :post
end 

# Show me all posts

get '/posts' do
  erb :posts
end 

# Edit an existing post

get '/post/:id/edit' do
  @post = Post.find(params[:id])
  erb :edit_post
end 

# Delete an existing post
get '/post/:id/delete' do
  @post = Post.find(params[:id])
  @post.destroy
  redirect '/'
end 


#=========POST==================

# Create a new post
post '/post' do 
  #enter stuff here 
  erb :posts
end 
