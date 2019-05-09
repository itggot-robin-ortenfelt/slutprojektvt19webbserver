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

# Creates a global variable of the database
#  
def connect()
  db = SQLite3::Database.new('database/database.db')
  db.results_as_hash = true 
  return db
end

# Display landing page
# 
get('/')do
  db = connect()
content_type :json
result = db.execute("SELECT * FROM clothing")
return result.to_json  
end

# Registers a user
# 
# @param [string] :username, the users username
# @param [string] :password, the users password
post ('/api/register') do 
  db = connect()
  db.execute("INSERT INTO users(username, password,) VALUES(?, ?)",regUsername, regPassword)
  redirect('/')
end 

# Checks if username and password insterted by user mathces the ones in database
# 
# @param [string] :username, the users username
# @param [string] :password, the users password
# @param [integer] :userId, the users id
post ('/api/login') do
  db = connect()
  result = db.execute("SELECT username, password, userId FROM users WHERE users.username = (?)",params[:username])
  array = result[0] 
  password =  params[:password]
  db_password = array[1]
  if array == nil
      redirect('/')
  end
  userId = array[2]
  if params[:username] == array[0] && BCrypt::Password.new(db_password) == password
          # session[:loggedin] = true   
          # session[:user_id] = userId   
          # redirect("/profile/#{userId}")
          redirect("/")
  else
      redirect('/noInlogg')
  end
  
end

