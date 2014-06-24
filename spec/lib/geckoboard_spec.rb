require 'spec_helper'

describe Geckoboard do
  it 'should contain VERSION' do
    expect(Geckoboard::VERSION).not_to eq be_nil
  end

  describe '.gecko_item' do
    context 'with all arguments' do
      let(:text) { 'text' }
      let(:value) { 2 }
      let(:attributes) { { label: 0 } }
      let(:gecko_item) { Geckoboard.gecko_item(text, value, attributes) }

      it 'should have text' do
        expect(gecko_item[:text]).to eq text
      end

      it 'should have value' do
        expect(gecko_item[:value]).to eq value
      end

      it 'should have label' do
        expect(gecko_item[:label]).to eq attributes[:label]
      end
    end

    context 'with empty arguments' do
      let(:text) { nil }
      let(:value) { nil }
      let(:attributes) { { label: 0 } }
      let(:gecko_item) { Geckoboard.gecko_item(text, value, attributes) }

      it 'should not have text' do
        expect(gecko_item[:text]).to eq text
      end

      it 'should not have value' do
        expect(gecko_item[:value]).to eq value
      end

      it 'should have label' do
        expect(gecko_item[:label]).to eq attributes[:label]
      end
    end
  end


  describe '.trendline' do
    context 'with arguments' do
      let(:text) { 'text' }
      let(:value) { 2 }
      let(:trendline_array) { [1, 2] }
      let(:trendline) { Geckoboard.trendline(text, value, trendline_array) }
      let(:parsed_trendline) { JSON.parse(trendline) }

      it 'should have text' do
        expect(parsed_trendline['item'].first['text']).to eq text
      end

      it 'should have value' do
        expect(parsed_trendline['item'].first['value']).to eq value
      end

      it 'should have trendline array' do
        expect(parsed_trendline['item'].last).to eq trendline_array
      end
    end
  end

  describe '.comparison' do
    context 'with arguments' do
      let(:first) { 1 }
      let(:second) { 2 }
      let(:comparison) { Geckoboard.comparison(first, second) }
      let(:parsed_comparison) { JSON.parse(comparison) }

      it 'should have first value' do
        expect(parsed_comparison['item'].first['value']).to eq first
      end

      it 'should have second value' do
        expect(parsed_comparison['item'][1]['value']).to eq second
      end
    end
  end

  describe '.list_item' do
    context 'with arguments' do
      let(:text) { 'text' }
      let(:description) { 'description' }
      let(:list_item) { Geckoboard.list_item(text, description) }

      it 'should have text' do
        expect(list_item[:title][:text]).to eq text
      end

      it 'should have description' do
        expect(list_item[:description]).to eq description
      end
    end
  end

  describe '.rag' do
    context 'with arguments' do
      let(:red) { 1 }
      let(:amber) { 2 }
      let(:green) { 3 }
      let(:rag) { Geckoboard.rag(red, amber, green) }
      let(:parsed_rag) { JSON.parse(rag) }

      it 'should have items' do
        expect(parsed_rag['item']).to eq [red, amber, green]
      end
    end
  end

  describe '.pie' do
    context 'with argument' do
      let(:pie_items) { [1, 2, 3] }
      let(:pie) { Geckoboard.pie(pie_items) }
      let(:parsed_pie) { JSON.parse(pie) }

      it 'should have pie item' do
        expect(parsed_pie['item']).to eq pie_items
      end
    end
  end

  describe '.pie_item' do
    context 'with argument' do
      let(:value) { 10 }
      let(:label) { 'label' }
      let(:color) { '#ffffff' }
      let(:pie_item) { Geckoboard.pie_item(value, label, color) }

      it 'should have value' do
        expect(pie_item[:value]).to eq value
      end

      it 'should have label' do
        expect(pie_item[:label]).to eq label
      end

      it 'should have color' do
        expect(pie_item[:color]).to eq color
      end
    end
  end

  describe '.geck_o_meter' do
    context 'with all arguments' do
      let(:value) { 'value' }
      let(:max) { 2 }
      let(:min) { 1 }
      let(:geck_o_meter) { Geckoboard.geck_o_meter(value, max, min) }
      let(:parsed_geck_o_meter) { JSON.parse(geck_o_meter) }

      it 'should have value' do
        expect(parsed_geck_o_meter['item']).to eq value
      end

      it 'should have max' do
        expect(parsed_geck_o_meter['max']).to eq max
      end

      it 'should have min' do
        expect(parsed_geck_o_meter['min']).to eq min
      end
    end
  end
end
