require 'sinatra'
require 'sqlite3'
require 'bcrypt'
require 'json'
require 'sinatra/cross_origin'
enable :sessions

configure do
    enable :cross_origin
  end
before do
    response.headers['Access-Control-Allow-Origin'] = '*'
  end
# session[:db] = SQLite3::Database.new('database/database.db')
# db.results_as_hash = true 

get('/')do
content_type :json
db = SQLite3::Database.new('database/database.db')
db.results_as_hash = true 
result = db.execute("SELECT * FROM users")
return result.to_json
    
end

post ('/clothing') do
    result = db.execute("SELECT title, text, id FROM posts WHERE posts.userId = (?)", session[:user_id])
    result_reverse = result.reverse
    db.execute("INSERT INTO posts (text, title, userId) VALUES (?,?,?)",text,title, session[:user_id])
    
    # redirect till get
   
    redirect('/profile/:userId')
end