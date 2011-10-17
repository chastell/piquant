# encoding: UTF-8

require 'json'
require 'open-uri'

require_relative 'piquant/configuration'

module Piquant

  def self.datasets_at url
    Hash[JSON.parse(open(url).read)['data'].map { |ds| [ds['idef'], ds['name']] }]
  end

  Configuration.api_root = 'http://cecyf.megivps.pl/api/json/'

end
