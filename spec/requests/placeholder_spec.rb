require 'rails_helper'

RSpec.describe 'Placeholders' do
  describe 'GET /index' do
    subject(:request) { get root_path }

    it 'renders successfully' do
      request
      expect(response).to have_http_status(:ok)
    end
  end
end
