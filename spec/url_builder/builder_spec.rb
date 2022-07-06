# frozen_string_literal: true

require "url_builder"

RSpec.describe UrlBuilder::Builder do
  describe "#new" do
    it "throws an error if no base_url is given" do
      expect { UrlBuilder::Builder.new }.to raise_error(ArgumentError)
    end
  end

  context "separators" do
    it "uses '/' as the default separator" do
      builder = UrlBuilder::Builder.new(base_url: "base")
      builder.add_segment("foo")
      expect(builder.to_s).to include("/")
    end

    it "allows a custom separator to be used" do
      builder = UrlBuilder::Builder.new(base_url: "base", separator: "-")
      builder.add_segment("foo")
      expect(builder.to_s).to include("-")
    end
  end

  describe "#add_segment" do
    it "adds segments to a base url" do
      builder = UrlBuilder::Builder.new(base_url: "www.example.com")
      builder.add_segment("foo")
      builder.add_segment("bar")
      expect(builder.to_s).to eq("www.example.com/foo/bar")
    end
  end

  describe "#add_query_param" do
    let(:builder) { UrlBuilder::Builder.new(base_url: "www.example.com") }
    it "adds query params to the url" do
      builder.add_query_param(key: "foo", value: "bar")
      expect(builder.to_s).to eq("www.example.com?foo=bar")
    end
  end
end
