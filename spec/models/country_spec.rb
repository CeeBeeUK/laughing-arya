require 'rails_helper'

RSpec.describe Country do
  let(:country) { described_class.new(name:, flag_name:) }

  describe 'validations' do
    subject(:valid) { country.valid? }

    let(:name) { 'Italy' }
    let(:flag_name) { 'italy' }

    context 'when the name is present' do
      it { is_expected.to be true }
    end

    context 'when the name is blank' do
      let(:name) { '' }

      it { is_expected.to be false }
    end

    context 'when the name is not unique' do
      let(:name) { 'Italy' }

      before { described_class.create(name: 'Italy', flag_name: 'italy') }

      it { is_expected.to be false }
    end

    context 'when the flag_name is present' do
      let(:flag_name) { 'italy' }

      it { is_expected.to be true }
    end

    context 'when the flag_name is blank' do
      let(:flag_name) { '' }

      it { is_expected.to be false }
    end

    context 'when the flag_name is not unique' do
      let(:flag_name) { 'Italy' }

      before { described_class.create(name: 'Italy', flag_name: 'italy') }

      it { is_expected.to be false }
    end
  end
end
