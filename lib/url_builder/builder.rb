# frozen_string_literal: true
require 'active_support'
require 'active_support/core_ext'

module UrlBuilder
  # A builder class to construct a url with path segments and query params
  class Builder
    # @param [String] base_url the base url to use. Must include the protocol
    # @param [String] separator - optional path segment separator to use, defaults to '/'
    # @param [Hash] query_params - optional query params to use
    def initialize(base_url: , separator: "/", query_params: {})
      @base_url = base_url
      @separator = separator
      @query_params = query_params.with_indifferent_access
      @path_segments = []
    end

    # Add a path segment to the url
    # @param [String] segment the path segment to add
    # @return [void]
    def add_segment(segment)
      @path_segments << segment
    end

    # Add a query param to the url
    # @param [String] key the key of the query param
    # @param [String] value the value of the query param
    # @return [void]
    def add_query_param(key: "", value: "")
      @query_params[key] = value
    end

    # Build the url to a string
    # @return [String] the url
    def to_s
      path = @path_segments.filter(&:present?).join(@separator)
      query_string = @query_params.filter { |k, v| k.present? && v.present? }.map { |k, v| "#{k}=#{v}" }.join("&")
      url = @base_url
      url += @separator + path if path.present?
      url += "?#{query_string}" if query_string.present?
      url
    end
  end
end
