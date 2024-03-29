require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  render_views

  describe 'GET #show' do
    let!(:items) { create_list :item, 5 }

    before { get :index }

    it 'returns items' do
      is_expected.to render_template :index
      expect(assigns(:items)).to match_array(items)

    end
  end


  describe 'DELETE #destroy' do


  end
  end