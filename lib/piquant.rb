# encoding: UTF-8

require 'json'
require 'open-uri'

require_relative 'piquant/configuration'

module Piquant

  def self.datasets
    Hash[JSON.parse(open(Configuration.api_root).read)['data'].map { |ds| [ds['idef'], ds['name']] }]
  end

  Configuration.api_root = 'http://cecyf.megivps.pl/api/json/'

end
