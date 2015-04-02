require 'rails_helper'

RSpec.describe "ebay_connections/show", type: :view do
  before(:each) do
    @ebay_connection = assign(:ebay_connection, EbayConnection.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
