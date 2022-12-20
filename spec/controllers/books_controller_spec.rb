require 'rails_helper'

RSpec.describe Api::V1::BooksController, type: :controller do
  describe 'index' do
    it 'returns a subset of 100 maximum' do
      expect(Book).to receive(:limit).with(100).and_call_original

      get :index, params: { limit: 999 }
    end
  end

  describe 'create' do
    it 'calls complex operation job' do
      expect(ComplexOperationJob).to receive(:perform_later)

      post :create, params: {
        author: { first_name: 'JK', last_name: 'Rowling', age: 99 },
        book: { title: 'Harry Potter' }
      }
    end
  end
end
