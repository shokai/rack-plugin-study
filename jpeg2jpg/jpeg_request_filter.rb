# -*- coding: utf-8 -*-
class JpegRequestFilter
  def initialize(app)
    @app = app
  end

  def call(env)
    # sinatraに処理させる前にrequestを書き換える
    if env["PATH_INFO"] =~ /.+\.jpeg$/i
      ["PATH_INFO", "REQUEST_PATH", "REQUEST_URI"].each do |k|
        env[k].gsub!(/\.jpeg$/i, ".jpg")
      end
    end
    res = @app.call env # sinatraに処理させる
  end
end
