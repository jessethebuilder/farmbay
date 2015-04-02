require 'savon'
require "httpclient"

HTTPI.adapter = :httpclient

class EbayConnection < ActiveRecord::Base
  EBAY_WSDL_URL = 'http://developer.ebay.com/webservices/latest/ebaySvc.wsdl'

  def client
    @client ||= Savon::Client.new(wsdl: EBAY_WSDL_URL)
  end

  def session_id
    client.call(:get_session_id)
  end

end
