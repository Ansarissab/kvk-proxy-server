class CreateProxies < ActiveRecord::Migration[6.0]
  def change
    create_table :proxies do |t|
      t.string :kvk_number, min: 8, max: 8, default: ''
      t.string :branch_number, min: 12, max: 12, default: ''
      t.string :rsin, default: ''
      t.string :street, default: ''
      t.string :house_number, default: ''
      t.string :trade_name, default: ''
      t.boolean :include_former_trade_name, default: false
      t.boolean :include_inactive_registrations, default: false
      t.boolean :main_branch, default: false
      t.boolean :branch, default: false
      t.boolean :legal_person, default: false
      t.string :start_page, default: '1'
      t.string :site, default: ''
      t.string :context, default: ''
      t.string :q, default: ''

      t.timestamps
    end
  end
end
