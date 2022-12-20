require 'rails_helper'

RSpec.describe ComplexOperationJob, type: :job do
  it 'executes complex operation' do
    expect(Book).to receive(:complex_operation).and_return(10)
    described_class.perform_now
  end
end
