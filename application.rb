require File.dirname(__FILE__) + '/environment'
require 'sinatra'

get '/' do
  erb :home
end

get '/styles.css' do
  sass :styles
end