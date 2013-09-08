require 'rack'
require 'sinatra'
require File.expand_path '../kuma/kuma_response_filter', File.dirname(__FILE__)
require File.expand_path 'image_glitch', File.dirname(__FILE__)

use KumaResponseFilter
use Rack::ImageGlitch

require File.expand_path 'main', File.dirname(__FILE__)

run Sinatra::Application
