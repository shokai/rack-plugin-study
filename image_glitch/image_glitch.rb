# -*- coding: utf-8 -*-

module Rack
  class ImageGlitch
    def initialize(app)
      @app = app
    end

    def call(env)
      res = @app.call env # sinatraに処理させる
      if res[1]["Content-Type"] == "image/jpeg"
        body = []
        res[2].each do |i|
          body.push i.gsub('a', 'b')
        end
        res[2] = body
      end
      res
    end
  end
end
