# frozen_string_literal: true

require "url_builder"

RSpec.describe UrlBuilder do
  it "has a version number" do
    expect(UrlBuilder::VERSION).not_to be nil
  end
end
