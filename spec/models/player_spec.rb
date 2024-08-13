require 'rails_helper'

RSpec.describe Player do
  subject(:player) { described_class.new(event:, user:) }

  let(:event) { Event.create(date: Time.zone.today, city: 'Vienna', country:) }
  let(:country) { Country.find_or_create_by(name: 'Austria', flag_name: 'austria') }
  let(:user) { User.create(username: 'Test', email: 'test@example.com') }

  context 'when created with valid attributes' do
    it 'is valid' do
      expect(player).to be_valid
    end
  end

  it 'allows setting of the predicted UK score' do
    player.predicted_score = 30
    expect(player).to be_valid
  end
end
