# encoding: UTF-8

require_relative 'spec_helper'

describe Piquant do

  describe '.datasets' do

    it 'returns a Hash of dataset info about datasets available at the given URL' do
      Piquant.datasets.must_equal({
        0 => 'Budżet centralny',
        1 => 'Budżet Środków Europejskich',
        2 => 'Fundusze celowe i agencje narodowe',
        3 => 'Narodowy Fundusz Zdrowia',
        4 => 'Europejski Fundusz Rozwoju Regionalnego',
      })
    end

  end

end
