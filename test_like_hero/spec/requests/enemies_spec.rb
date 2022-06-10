require 'rails_helper'

RSpec.describe 'Enemies', type: :request do
  describe 'PUT /enemies/:id' do
    let(:enemy) { create(:enemy) }
    let(:enemy_attributes) { attributes_for(:enemy) }
    let(:update) { put "/enemies/#{enemy.id}", params: enemy_attributes }

    context 'when enemy exists' do
      it 'returns status code 200' do
        update
        expect(response).to have_http_status(200)
      end
      it 'updates the enemy' do
        update
        expect(enemy.reload).to have_attributes(enemy_attributes)
      end
      it 'returns the enemy updated' do
        update
        json_response = JSON.parse(response.body)
        expect(enemy.reload).to have_attributes(json_response.except('created_at', 'updated_at'))
      end
    end

    context 'when enemy not exists' do
      it 'returns status code 404' do
        put '/enemies/0', params: enemy_attributes
        expect(response).to have_http_status(404)
      end
      it 'returns a not found message' do
        put '/enemies/0', params: enemy_attributes
        expect(response.body).to match(/Couldn't find Enemy/)
      end
    end
  end

  describe 'DELETE /enemies/:id' do
    let(:enemy) { create(:enemy) }
    let(:destroy) { delete "/enemies/#{enemy.id}"}

    context 'when the enemy exists' do
      it 'returns status code 200' do
        destroy
        expect(response).to have_http_status(204)
      end
      it 'destroy the record' do
        destroy
        expect { enemy.reload }.to raise_error ActiveRecord::RecordNotFound
      end
    end

    context 'when the enemy does not exist' do
      it 'returns the status code 404'do
        delete '/enemies/0'
        expect(response).to have_http_status(404)
      end
      it 'returns a not found message' do
        delete '/enemies/0'
        expect(response.body).to match(/{\"message\":\"Couldn't find Enemy with 'id'=0\"}/)
      end
    end
  end
end
