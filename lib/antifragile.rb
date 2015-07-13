class Antifragile < Sinatra::Base
  set :views, File.dirname(__FILE__) + '/../views'

  get '/' do
    erb :content
  end
end
