# encoding: UTF-8

require_relative 'spec_helper'

describe Piquant do

  describe '#datasets' do

    it 'returns the available datasets' do
      Piquant.new('http://cecyf.megivps.pl/api/json/').datasets.must_equal({
        0 => 'Budżet centralny',
        1 => 'Środki europejskie',
        2 => 'Fundusze celowe i agencje narodowe',
        3 => 'Narodowy Fundusz Zdrowia',
        4 => 'Europejski Fundusz Rozwoju Regionalnego',
      })
    end

  end

end
