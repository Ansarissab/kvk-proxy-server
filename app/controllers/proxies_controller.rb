class ProxiesController < ApplicationController
  # before_action :set_proxy, only: %i[show edit update destroy]
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
    # respond_to do |_format|
    #   if @proxy.save
    #     # render :results
    #     # format.html { redirect_to proxy_url(@proxy), notice: 'Proxy was successfully created.' }
    #     format.json { render :results, status: :created }
    #   else

    #     # format.html { render :new, status: :unprocessable_entity }
    #     # format.json { render json: @proxy.errors, status: :unprocessable_entity }
    #   end
    # end
    render partial: 'results'
  end

  def results; end

  private

  def get_results(query)
    uri = URI(@url.concat(query.to_s))
    @results = Net::HTTP.get(uri)
    # @results = @results.to_json
  end

  def set_base_url
    @url = 'https://developers.kvk.nl/api/v2/search/companies?'
  end

  def proxy_params
    params.require(:proxy).permit(:kvk_number, :branch_number, :rsin, :street, :house_number, :trade_name,
                                  :include_former_trade_name, :include_inactive_registrations, :main_branch, :branch, :legal_person, :start_page, :site, :context, :q)
  end
end
