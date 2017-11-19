# frozen_string_literal: true

require 'rails_helper'

RSpec.describe KruMembersController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/mango_kru').to route_to('kru_members#index')
    end

    it 'routes to #new' do
      expect(get: '/mango_kru/new').to route_to('kru_members#new')
    end

    it 'routes to #show' do
      expect(get: '/mango_kru/1').to route_to('kru_members#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/mango_kru/1/edit').to route_to('kru_members#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/mango_kru').to route_to('kru_members#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/mango_kru/1').to route_to('kru_members#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/mango_kru/1').to route_to('kru_members#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/mango_kru/1').to route_to('kru_members#destroy', id: '1')
    end
  end
end
