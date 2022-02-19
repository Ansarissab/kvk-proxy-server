require 'net/http'
class HomeController < ApplicationController
  before_action :base_url

  def index; end

  def sync
    number = 90_005_368
    url = "#{@url}?kvkNumber=#{number}"
    uri = URI(url)
    @response = Net::HTTP.get(uri)
    @response = @response.to_json
    respond_to do |format|
      format.js
    end
    # render json: response.to_json
  end

  def sync_with_kvk_numbers
    # params =
  end

  private

  def base_url
    @url = 'https://developers.kvk.nl/api/v2/search/companies'
  end
end
