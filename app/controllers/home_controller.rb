require 'net/http'

class HomeController < ApplicationController
  def index
    url = 'http://localhost:3000/continents.json'
    uri = URI(url)
    @response = Net::HTTP.get(uri)
  end
end
