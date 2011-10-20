# encoding: UTF-8

require_relative '../spec_helper'

module Piquant describe View do

  describe '.[]' do

    it 'retieves the given (Dataset- and View-idef-keyed) View' do
      view = View[1, 1]
      view.idef.must_equal 1
      view.long_description.must_be_nil
      view.name.must_equal 'Budżet środków europejskich w układzie zadaniowym'
      view.description.must_equal 'Wydatki środków europejskich wpisane w strukturę budżetu zadaniowego'
    end
  end

  describe '#issues' do

    it 'returns an Array with this View’s issues' do
      View[1, 1].issues.must_equal ['2011', '2012']
    end

  end

end end
