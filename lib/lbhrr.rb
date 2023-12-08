# frozen_string_literal: true

require "yaml"
require "thor"
require "yaml"
require "tempfile"
require "fileutils"
require_relative "lbhrr/version"

module Lbhrr
  class Error < StandardError; end

  class SelfDelete
    def delete_current_directory
    end
  end

  # Your code goes here...
end
