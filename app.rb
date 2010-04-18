require 'rubygems'
require 'sinatra'
require 'rest_client'
require 'nokogiri'

get '/' do
  "hello world"
end

get '/location' do
  content_type "text/xml", :charset=>'utf-8'
  RestClient.log = "stdout"
  results = RestClient.get "http://api.wunderground.com/auto/wui/geo/GeoLookupXML/index.xml?query=" + params[:postal_code]
end