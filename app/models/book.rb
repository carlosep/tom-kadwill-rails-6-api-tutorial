class Book < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3 }

  belongs_to :author

  # Simulation of a complex operation that takes 10 seconds to run
  def self.complex_operation
    sleep(10)
  end
end
