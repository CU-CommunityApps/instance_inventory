require File.dirname(__FILE__) + '/environment'
require 'sinatra'

set :port, 80

get '/' do
  erb :home
end

get '/styles.css' do
  sass :styles
end