# encoding: UTF-8

require_relative '../spec_helper'

module Piquant describe Configuration do

  describe '.api_root, .api_root=' do
    it 'allows reading and setting the API root (defaulting to CCLab’s)' do
      Configuration.api_root.must_equal 'http://cecyf.megivps.pl/api/json/'
      begin
        Configuration.api_root = 'http://some.other/url'
        Configuration.api_root.must_equal 'http://some.other/url'
      ensure
        Configuration.api_root = 'http://cecyf.megivps.pl/api/json/'
      end
    end
  end

end end
