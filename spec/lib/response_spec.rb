require 'spec_helper'

describe Phearb::Response do
  context '#from_json' do
    subject { described_class.from_json({ foo: 'bar' }.to_json)  }

    it 'creates an object' do
      expect(subject).to be_an_instance_of described_class
    end

    context 'properly setup an open struct object' do
      it 'by accessing attrs by dot notation' do
        expect(subject.foo).to eq('bar')
      end

      it 'by modifing attrs by dot notation' do
        subject.foo = 'hi'
        expect(subject.foo).to eq('hi')
      end
    end
  end
end
