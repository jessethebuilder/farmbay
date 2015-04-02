require 'rails_helper'

RSpec.describe "ebay_connections/edit", type: :view do
  before(:each) do
    @ebay_connection = assign(:ebay_connection, EbayConnection.create!())
  end

  it "renders the edit ebay_connection form" do
    render

    assert_select "form[action=?][method=?]", ebay_connection_path(@ebay_connection), "post" do
    end
  end
end
