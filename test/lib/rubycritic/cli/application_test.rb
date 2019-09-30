# frozen_string_literal: true

require 'test_helper'
require 'rubycritic/cli/application'

describe RubyCritic::Configuration do
  describe '#root' do
    it 'run with defaults' do
      RubyCritic::Cli::Application.new([]).execute.must_equal 0
    end

    it 'run with branch "-b" option' do
      RubyCritic::Cli::Application.new(['-b', 'master']).execute.must_equal 0
    end
  end
end
