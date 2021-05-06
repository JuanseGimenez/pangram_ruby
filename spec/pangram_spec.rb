require 'spec_helper'
require_relative '../pangram'

describe '#Pangram phrase' do
  let(:params) { '' }
  let(:pangram) { Pangram.new(params) }

  context 'when phrase is pangram' do
    before do
      pangram.phrase = 'Jived fox nymph grabs quick waltz'
    end

    it 'should be return true' do
      expect(pangram.is_pangram?).to be_truthy
    end

    it 'should be return empty' do
      expect(pangram.missing_letters).to be_empty
    end
  end

  context 'when phrase is not pangram' do
    let(:expected_array) do
      ['a', 'c', 'd', 'f', 'g', 'h', 'j', 'k',
       'm', 'n', 'p', 'q', 's', 't', 'w', 'x', 'z']
    end

    before do
      pangram.phrase = 'I love Ruby'
    end

    it 'should be return false' do
      expect(pangram.is_pangram?).to be false
    end

    it 'should be return missing letters' do
      expect(pangram.missing_letters).to eq(expected_array)
    end
  end

  context 'when phrase is empty' do
    let(:expected_array) do
      ('a'..'z').to_a
    end

    it 'should be return false' do
      expect(pangram.is_pangram?).to be false
    end

    it 'should be return missing letters' do
      expect(pangram.missing_letters).to eq(expected_array)
    end
  end
end
