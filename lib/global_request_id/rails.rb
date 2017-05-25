module GlobalRequestId
  class Rails < ::Rails::Engine
    initializer 'global_request_id' do |app|
      app.middleware.use GlobalRequestId::Middleware
    end
  end if defined?(::Rails)
end
