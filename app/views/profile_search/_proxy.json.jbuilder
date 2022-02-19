json.extract! proxy, :id, :kvk_number, :branch_number, :rsin, :street, :house_number, :trade_name, :include_former_trade_name, :include_inactive_registrations, :main_branch, :branch, :legal_person, :start_page, :site, :context, :q, :created_at, :updated_at
json.url proxy_url(proxy, format: :json)
