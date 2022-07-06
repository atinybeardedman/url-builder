# frozen_string_literal: true

require "url_builder"

RSpec.describe UrlBuilder::Builder do
  it "adds segments to a base url" do
    builder = UrlBuilder::Builder.new(base_url: "www.example.com")
    builder.add_segment("foo")
    builder.add_segment("bar")
    expect(builder.to_s).to eq("www.example.com/foo/bar")
  end
end
