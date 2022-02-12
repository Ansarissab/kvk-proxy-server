require 'net/http'
class HomeController < ApplicationController
  def index; end

  def sync
    number = 90_005_368
    url = "https://developers.kvk.nl/api/v2/search/companies?kvkNumber=#{number}"
    uri = URI(url)
    @response = Net::HTTP.get(uri)
    @response = @response.to_json
    respond_to do |format|
      format.js
    end
    # render json: response.to_json
  end
end
