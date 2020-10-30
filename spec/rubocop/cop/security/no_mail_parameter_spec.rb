# frozen_string_literal: true

RSpec.describe RuboCop::Cop::Security::NoMailParameter do
  include CopHelper

  let(:cop) { described_class.new }

  context 'with the code being in a controller file' do
    before do
      allow(cop).to receive(:in_controller?).and_return(true)
    end

    it 'registers an offense for params[:email]' do
      inspect_source 'params[:email]'
      expect(cop.offenses.size).to eq 1
    end

    it 'does not register an offense for params[:token]' do
      inspect_source 'params[:token]'
      expect(cop.offenses.size).to eq 0
    end

    it 'does not register an offense for flash[:email]' do
      inspect_source 'flash[:email]'
      expect(cop.offenses.size).to eq 0
    end
  end

  context 'with the code not being in a controller file' do
    before do
      allow(cop).to receive(:in_controller?).and_return(false)
    end

    it 'does not register an offense for params[:email]' do
      inspect_source 'params[:email]'
      expect(cop.offenses.size).to eq 0
    end
  end
end
