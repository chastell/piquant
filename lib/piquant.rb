# encoding: UTF-8

require 'json'
require 'open-uri'

class Piquant

  def initialize api_root
    @api_root = api_root
  end

  def datasets
    Hash[JSON.parse(open(@api_root).read)['data'].map { |ds| [ds['idef'], ds['name']] }]
  end

end
