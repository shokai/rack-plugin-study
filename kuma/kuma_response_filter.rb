# -*- coding: utf-8 -*-
class KumaResponseFilter
  def initialize(app)
    @app = app
  end

  def call(env)
    res = @app.call env # sinatraに処理させる
    if res[1]["Content-Type"] =~ /^text\/.+/
      res[2] = res[2].map{|body_part|
        body_part.gsub(/([。！？])/){|s| "クマ#{s}"}
      }
      res[1]["Content-Length"] = res[2].map{|body_part| body_part.bytesize }.inject{|a,b| a+b }.to_s
    end
    res
  end
end
