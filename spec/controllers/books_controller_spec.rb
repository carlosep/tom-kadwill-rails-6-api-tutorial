require 'rails_helper'

RSpec.describe Api::V1::BooksController, type: :controller do
  describe 'index' do
    it 'returns a subset of 100 maximum' do
      expect(Book).to receive(:limit).with(100).and_call_original

      get :index, params: { limit: 999 }
    end
  end

  describe 'create' do
    let(:book_name) { 'Harry Potter' }
    let(:user) { FactoryBot.create(:user, password: 'pass') }

    context 'authorization header is present' do
      before do
        allow(AuthenticationTokenService).to receive(:decode).and_return(user.id)
      end
      it 'calls complex operation job' do
        expect(ComplexOperationJob).to receive(:perform_later)

        post :create, params: {
          author: { first_name: 'JK', last_name: 'Rowling', age: 99 },
          book: { title: book_name }
        }
      end
    end

    context 'missing authorization header' do
      it 'returns a 401' do
        post :create, params: {}

        expect(response).to have_http_status(:unauthorized)
      end
    end
  end

  describe 'destroy' do
    context 'missing authorization header' do
      it 'returns a 401' do
        delete :destroy, params: { id: 1 }

        expect(response).to have_http_status(:unauthorized)
      end
    end
  end
end
