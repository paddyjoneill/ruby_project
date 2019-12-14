require 'sinatra'
require 'sinatra/contrib/all'
require 'pg'
require 'pry'

require_relative('controllers/transactions_controller')
require_relative('controllers/merchants_controller')
require_relative('controllers/categories_controller')

require_relative ('./models/category')
require_relative ('./models/merchant')
require_relative ('./models/transaction')
require_relative ('./models/budget')
also_reload('./models/*')

get '/' do
  erb(:index)
end
