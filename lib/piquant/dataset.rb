module Piquant class Dataset < OpenStruct

  def self.[] idef
    new JSON.parse(open(Configuration.api_root).read)['data'].find { |h| h['idef'] == idef }
  end

  def views
    Hash[JSON.parse(open("#{Configuration.api_root}/dataset/#{idef}/").read)['data'].map { |v| [v['idef'], v['name']] }]
  end

end end
