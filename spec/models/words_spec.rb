require 'spec_helper'

describe Word do
  describe 'word' do
    it { should validate_presence_of :word }
    it { should validate_presence_of :translation }
  end
end