require 'net/http'

class HomeController < ApplicationController
  def index
    url = request.base_url + "/continents.json"
    uri = URI(url)
    @response = Net::HTTP.get(uri)
  end
end
