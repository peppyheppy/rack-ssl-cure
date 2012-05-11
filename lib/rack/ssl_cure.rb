module Rack
  class SSLCure
    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, response = @app.call(env)
      headers.merge!('Strict-Transport-Security' => 'max-age=0')
      [status, headers, response]
    end
  end
end
