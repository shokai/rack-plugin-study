require 'rack'
require 'sinatra'
require File.expand_path 'kuma_response_filter', File.dirname(__FILE__)
use KumaResponseFilter

require File.expand_path 'main', File.dirname(__FILE__)

run Sinatra::Application
