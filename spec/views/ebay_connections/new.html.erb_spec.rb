require 'rails_helper'

RSpec.describe "ebay_connections/new", type: :view do
  before(:each) do
    assign(:ebay_connection, EbayConnection.new())
  end

  it "renders new ebay_connection form" do
    render

    assert_select "form[action=?][method=?]", ebay_connections_path, "post" do
    end
  end
end
