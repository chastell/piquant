# encoding: UTF-8

require 'json'
require 'open-uri'
require 'ostruct'

require_relative 'piquant/configuration'
require_relative 'piquant/dataset'
require_relative 'piquant/view'

module Piquant

  def self.datasets
    Hash[JSON.parse(open(Configuration.api_root).read)['data'].map { |ds| [ds['idef'], ds['name']] }]
  end

  Configuration.api_root = 'http://cecyf.megivps.pl/api/json/'

end
