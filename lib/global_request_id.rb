require 'global_request_id/version'
require 'global_request_id/middleware'
require 'global_request_id/rails'

module GlobalRequestId
  def self.get
    RequestStore.store[:request_id]
  end
end
