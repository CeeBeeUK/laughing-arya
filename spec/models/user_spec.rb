require 'rails_helper'

RSpec.describe User do
  it { expect(described_class).to respond_to(:from_omniauth) }

  describe '#from_omniauth' do
    subject(:from_omniauth) { described_class.from_omniauth(response) }

    let(:response) do
      {
        provider: 'google_oauth2',
        uid: '1234567890',
        info: {
          name: 'test user',
          email: 'testuser@gmail.com',
          unverified_email: 'testuser@gmail.com',
          email_verified: true,
          first_name: 'test',
          last_name: 'user'
        }
      }
    end

    context "when the use doesn't exist" do
      it 'creates a new user' do
        expect { from_omniauth }.to change(described_class, :count).by(1)
      end
    end
  end
end
