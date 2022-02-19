require "application_system_test_case"

class ProxiesTest < ApplicationSystemTestCase
  setup do
    @proxy = proxies(:one)
  end

  test "visiting the index" do
    visit proxies_url
    assert_selector "h1", text: "Proxies"
  end

  test "creating a Proxy" do
    visit proxies_url
    click_on "New Proxy"

    check "Branch" if @proxy.branch
    fill_in "Branch number", with: @proxy.branch_number
    fill_in "Context", with: @proxy.context
    fill_in "House number", with: @proxy.house_number
    check "Include former trade name" if @proxy.include_former_trade_name
    check "Include inactive registrations" if @proxy.include_inactive_registrations
    fill_in "Kvk number", with: @proxy.kvk_number
    check "Legal person" if @proxy.legal_person
    check "Main branch" if @proxy.main_branch
    fill_in "Q", with: @proxy.q
    fill_in "Rsin", with: @proxy.rsin
    fill_in "Site", with: @proxy.site
    fill_in "Start page", with: @proxy.start_page
    fill_in "Street", with: @proxy.street
    fill_in "Trade name", with: @proxy.trade_name
    click_on "Create Proxy"

    assert_text "Proxy was successfully created"
    click_on "Back"
  end

  test "updating a Proxy" do
    visit proxies_url
    click_on "Edit", match: :first

    check "Branch" if @proxy.branch
    fill_in "Branch number", with: @proxy.branch_number
    fill_in "Context", with: @proxy.context
    fill_in "House number", with: @proxy.house_number
    check "Include former trade name" if @proxy.include_former_trade_name
    check "Include inactive registrations" if @proxy.include_inactive_registrations
    fill_in "Kvk number", with: @proxy.kvk_number
    check "Legal person" if @proxy.legal_person
    check "Main branch" if @proxy.main_branch
    fill_in "Q", with: @proxy.q
    fill_in "Rsin", with: @proxy.rsin
    fill_in "Site", with: @proxy.site
    fill_in "Start page", with: @proxy.start_page
    fill_in "Street", with: @proxy.street
    fill_in "Trade name", with: @proxy.trade_name
    click_on "Update Proxy"

    assert_text "Proxy was successfully updated"
    click_on "Back"
  end

  test "destroying a Proxy" do
    visit proxies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Proxy was successfully destroyed"
  end
end
