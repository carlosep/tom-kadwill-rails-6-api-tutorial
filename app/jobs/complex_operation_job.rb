class ComplexOperationJob < ApplicationJob
  queue_as :default

  def perform
    Book.complex_operation
  end
end
