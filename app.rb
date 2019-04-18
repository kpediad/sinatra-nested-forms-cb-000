require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end
    
    get '/new' do
      erb :new
    end

    post '/pirates' do
      #process user provided data here
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ship].each do |ship|
        Ship.new(ship)
      end
      @ships = Ship.all

      erb :show
    end

  end
end
