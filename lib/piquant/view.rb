module Piquant class View < OpenStruct

  def self.[] ds_idef, v_idef
    view = new JSON.parse(open("#{Configuration.api_root}/dataset/#{ds_idef}/").read)['data'].find { |h| h['idef'] == v_idef }
    view.ds_idef = ds_idef
    view
  end

  def issues
    JSON.parse(open("#{Configuration.api_root}/dataset/#{ds_idef}/view/#{idef}/").read)['data']
  end

end end
