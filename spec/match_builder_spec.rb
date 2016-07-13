require 'spec_helper'

describe WireMockMapper::MatchBuilder do
  describe 'containing' do
    it 'returns a hash of { contains => value }' do
      builder = WireMockMapper::MatchBuilder.new(nil)
      builder.containing 'foo'
      expect(builder.to_hash).to eq(contains: 'foo')
    end
  end

  describe 'equal_to' do
    it 'returns a hash of { equalTo => value }' do
      builder = WireMockMapper::MatchBuilder.new(nil)
      builder.equal_to 'foo'
      expect(builder.to_hash).to eq(equalTo: 'foo')
    end
  end

  describe 'equal_to_json' do
    it 'returns a hash of { equalToJson => value }' do
      builder = WireMockMapper::MatchBuilder.new(nil)
      builder.equal_to_json 'foo'
      expect(builder.to_hash).to eq(equalToJson: 'foo')
    end
  end

  describe 'equal_to_xml' do
    it 'returns a hash of { equalToXml => value }' do
      builder = WireMockMapper::MatchBuilder.new(nil)
      builder.equal_to_xml 'foo'
      expect(builder.to_hash).to eq(equalToXml: 'foo')
    end
  end

  describe 'matching' do
    it 'returns a hash of { matches => value }' do
      builder = WireMockMapper::MatchBuilder.new(nil)
      builder.matching 'foo'
      expect(builder.to_hash).to eq(matches: 'foo')
    end
  end

  describe 'matching_xpath' do
    it 'returns a hash of { matchesXPath => value }' do
      builder = WireMockMapper::MatchBuilder.new(nil)
      builder.matching_xpath 'foo'
      expect(builder.to_hash).to eq(matchesXPath: 'foo')
    end
  end

  describe 'not_matching' do
    it 'returns a hash of { doesNotMatch => value }' do
      builder = WireMockMapper::MatchBuilder.new(nil)
      builder.not_matching 'foo'
      expect(builder.to_hash).to eq(doesNotMatch: 'foo')
    end
  end
end