class ProfileSearchController < ApplicationController
  before_action :set_base_url

  def new
    @proxy = Proxy.new
  end

  def create
    @proxy = Proxy.new(proxy_params)
    proxy_params = params[:proxy].transform_keys { |key| key.to_s.camelize(:lower) }

    query = ''
    proxy_params = proxy_params.select { |_k, v| !v.empty? && !v.eql?('0') }
    proxy_params.each { |k, v| query += k.dup.concat("=#{v}&") }
    get_results(query)
    render partial: 'results'
  end

  def results; end

  private

  def get_results(query)
    uri = URI(@url.concat(query.to_s))
    @results = Net::HTTP.get(uri)
  end

  def set_base_url
    @url = 'https://developers.kvk.nl/api/v2/profile/companies?'
  end

  def proxy_params
    params.require(:proxy).permit(:kvk_number, :branch_number, :rsin, :street, :house_number, :trade_name,
                                  :restrict_to_main_branch, :include_former_trade_name, :include_inactive_registrations,
                                  :main_branch, :branch, :legal_person, :start_page, :site, :context, :q)
  end
end
