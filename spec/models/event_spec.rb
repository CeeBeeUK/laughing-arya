require 'rails_helper'

RSpec.describe Event do
  describe 'validation' do
    subject(:event) { described_class.new(date: Time.zone.today, city: 'Vienna', country:) }

    let(:country) { Country.build(name: 'Austria', flag_name: 'austria') }

    context 'when created with valid attributes' do
      it 'is valid' do
        expect(event).to be_valid
      end

      it 'defaults the state to setup' do
        expect(event.status).to eq 'setup'
      end
    end
  end
end
