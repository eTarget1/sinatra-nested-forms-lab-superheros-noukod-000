require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])

      params[:teams][:super_heroes].each do |details|
        SUPERHEROES.new(details)
      end

      @super_heroes = SUPERHEROES.all
      erb :teams
end
