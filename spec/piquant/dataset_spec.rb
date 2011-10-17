# encoding: UTF-8

require_relative '../spec_helper'

module Piquant describe Dataset do

  describe '.[]' do

    it 'retieves the given (idef-keyed) Dataset' do
      dataset = Dataset[1]
      dataset.idef.must_equal 1
      dataset.long_description.must_be_nil
      dataset.name.must_equal 'Środki europejskie'
      dataset.description.must_equal 'Udział środków europejskich w budżecie centralnym Polski'
    end
  end

end end
