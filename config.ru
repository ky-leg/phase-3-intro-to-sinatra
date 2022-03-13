require 'sinatra'

class App < Sinatra::Base

  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end

  get '/potato' do
    "<p>Boil 'em, mash 'em, stick 'em in a stew</p>"
  end

  get '/nope' do 
    "hello world"
  end

  get '/dice' do
    dice_roll = rand(1..6)
    { roll: dice_roll }.to_json
  end

  
end

run App
