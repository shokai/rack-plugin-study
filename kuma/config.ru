require 'rack'
require 'sinatra'
$:.unshift File.dirname(__FILE__)
require 'kuma_response_filter'
require 'main'
use KumaResponseFilter

run Sinatra::Application
