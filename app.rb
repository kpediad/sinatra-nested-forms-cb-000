require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :new
    end

    post '/pirates' do
      #process user provided data here

      erb :show
    end

  end
end
