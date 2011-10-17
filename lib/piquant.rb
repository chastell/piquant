# encoding: UTF-8

require 'json'
require 'open-uri'

module Piquant

  def self.datasets_at url
    Hash[JSON.parse(open(url).read)['data'].map { |ds| [ds['idef'], ds['name']] }]
  end

end
