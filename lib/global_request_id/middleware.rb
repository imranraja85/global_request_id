require "request_store"

module GlobalRequestId
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      RequestStore.store[:request_id] = env['action_dispatch.request_id']

      code, headers, body = @app.call(env)
      [code, headers, body]
    end
  end
end
