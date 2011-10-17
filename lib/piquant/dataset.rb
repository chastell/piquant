module Piquant class Dataset < OpenStruct

  def self.[] idef
    new JSON.parse(open(Configuration.api_root).read)['data'].find { |h| h['idef'] == idef }
  end

end end
