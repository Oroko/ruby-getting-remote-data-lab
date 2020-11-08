# frozen_string_literal: true

# Write your code here

require 'net/http'
require 'open-uri'
require 'json'
require 'pry'
class GetRequester
  attr_accessor :url
  def initialize(url)
    @url = url
  end

  def get_response_body
    url = @url
    url = URI.parse(url)
    response = Net::HTTP.get_response(url)
    response.body
  end

  def parse_json 
    JSON.parse(get_response_body)
  end
end
