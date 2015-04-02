require 'rails_helper'

RSpec.describe "ebay_connections/index", type: :view do
  before(:each) do
    assign(:ebay_connections, [
      EbayConnection.create!(),
      EbayConnection.create!()
    ])
  end

  it "renders a list of ebay_connections" do
    render
  end
end
