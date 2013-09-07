require 'rack'
require 'sinatra'
require File.expand_path 'jpeg_request_filter', File.dirname(__FILE__)
use JpegRequestFilter

require File.expand_path 'main', File.dirname(__FILE__)

run Sinatra::Application
