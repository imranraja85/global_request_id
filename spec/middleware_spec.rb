require "spec_helper"

RSpec.describe GlobalRequestId::Middleware do
  let(:app) { ->(env) { [200, env, "app"] } }

  let(:middleware) { described_class.new(app) }

  let(:request_id) { "abc123" }

  let(:env) { { 'action_dispatch.request_id' => request_id } }

  it 'sets the reqest id' do
    middleware.call(env)

    expect(GlobalRequestId.get).to eq(request_id)
  end
end
