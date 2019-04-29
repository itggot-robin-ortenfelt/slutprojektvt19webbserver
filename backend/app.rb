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
result = db.execute("SELECT * FROM clothing")
return result.to_json
    
end

post ('/regNew') do 
  db = SQLite3::Database.new('db/bloggDatabase.db')
  db.results_as_hash = true 
  db.execute("INSERT INTO Users(username, password,) VALUES(?, ?)",params[:reg_username], params[:reg_password], params[:reg_email], params[:reg_parti])
  redirect('/')
end

post ('/login') do
  db = SQLite3::Database.new('db/database.db')
  db.results_as_hash = true
  result = db.execute("SELECT username, password, userId FROM Users WHERE users.username = (?)",params[:username])
  array = result[0] 
  password =  params[:password]
  db_password = array[1]
  if array == nil
      redirect('/')
  end
  userId = array[2]
  if params[:username] == array[0] && BCrypt::Password.new(db_password) == password
          session[:loggedin] = true   
          session[:user_id] = userId   
          redirect("/profile/#{userId}")
  else
      redirect('/nono')
  end
  
end

