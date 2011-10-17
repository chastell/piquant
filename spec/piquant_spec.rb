# encoding: UTF-8

require_relative 'spec_helper'

describe Piquant do

  describe '.datasets_at' do

    it 'returns a Hash of dataset info about datasets available at the given URL' do
      Piquant.datasets_at('http://cecyf.megivps.pl/api/json/').must_equal({
        0 => 'Budżet centralny',
        1 => 'Środki europejskie',
        2 => 'Fundusze celowe i agencje narodowe',
        3 => 'Narodowy Fundusz Zdrowia',
        4 => 'Europejski Fundusz Rozwoju Regionalnego',
      })
    end

  end

end
