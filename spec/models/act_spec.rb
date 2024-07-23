require 'rails_helper'

RSpec.describe Act do
  describe 'validation' do
    subject(:act) { described_class.new(event:, country:, real_final_score: nil, home_final_score: nil, order: 1) }

    let(:event) { Event.build(date: Time.zone.today, city: 'Vienna', country:) }
    let(:country) { Country.build(name: 'Austria', flag_name: 'austria') }

    context 'when created with valid attributes' do
      it 'is valid' do
        expect(event).to be_valid
      end
    end

    context 'when created with invalid attributes' do
      let(:country) { nil }

      it 'is invalid' do
        expect(event).not_to be_valid
      end
    end
  end
end
