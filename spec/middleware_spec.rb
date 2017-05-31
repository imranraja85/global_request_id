require "spec_helper"

RSpec.describe GlobalRequestId::Middleware do
  let(:app) { ->(env) { [200, env, "app"] } }
  let(:middleware) { described_class.new(app) }
  let(:request_id) { "abc123" }
  let(:env) { { 'action_dispatch.request_id' => request_id } }

  describe '#call' do
    context 'within a request id set by action dispatch' do
      it 'returns the code, headers and body' do
        expect(middleware.call(env)).to eq([200, env, "app"])
      end

      it 'sets the request id' do
        middleware.call(env)

        expect(GlobalRequestId.get).to eq(request_id)
      end
    end
  end
end
