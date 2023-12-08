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
      current_dir = Dir.pwd
      parent_dir = File.dirname(current_dir)

      # Requesting confirmation
      puts "Are you sure you want to delete the directory: #{current_dir}? [y/N]"
      response = gets.chomp.downcase
      unless response == "y"
        puts "Deletion aborted."
        return
      end

      # Proceeding with deletion
      puts "Changing directory to the parent directory..."
      Dir.chdir(parent_dir)

      puts "Deleting the directory: #{current_dir}"
      FileUtils.rm_rf(current_dir)

      puts "#{current_dir} has been deleted."
    end
  end

  # Your code goes here...
end
