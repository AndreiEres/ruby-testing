require_relative '../converter'

# example do |result|
#   expect(subject).to eq result
# end

RSpec.describe Converter do
  describe 'in_to_cm' do
    subject(:result) { Converter.new.in_to_cm(value) }

    context 'when value is 1' do
      let(:value) { 1 }

      it { is_expected.to eq 2.54 }
    end

    context 'when value is 10' do
      let(:value) { 10 }

      it { is_expected.to eq 25.4 }
    end
    # it 'converts from in to cm' do
    #   expect(converter.in_to_cm(1)).to eq(2.54)
    # end
  end

  describe 'l_to_ml' do
    it 'converts from l to ml' do
      expect(Converter.new.l_to_ml(1)).to eq(1000)
    end
  end
end
