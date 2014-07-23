require 'geckoboard/version'
require 'digest/md5'
require 'json'

class Geckoboard
  def self.gecko_item(text, value, other_attributes = {})
    { text: text, value: value }.
      merge(other_attributes).
      reject { |_, attribute_value| attribute_value.nil? }
  end

  def self.trendline(text, value, trendline, gecko_item_attributes = {})
    widget item: [
      gecko_item(text, value, gecko_item_attributes),
      trendline
    ]
  end

  def self.number(text, value)
    widget item: [
      gecko_item(text, value)
    ]
  end

  def self.text(text_value, other_attributes = {})
    widget item: [
      gecko_item(text_value, nil, other_attributes)
    ]
  end

  def self.comparison(first, second)
    widget item: [
      gecko_item('', first),
      gecko_item('', second)
    ]
  end

  def self.list_item text, description, other_attributes = {}
    other_attributes.merge({title: { text: text }, description: description.to_s})
  end

  def self.rag(red, amber, green)
    widget item: [red, amber, green]
  end

  def self.pie pie_items
    widget item: pie_items
  end

  def self.pie_item(value, label, color = nil)
    gecko_item(nil, value, { label: label, color: color })
  end

  def self.geck_o_meter(value, max, min)
    widget item: value, max: max, min: min
  end

  def self.funnel(funnel_items, other_attributes = {})
    widget({item: funnel_items}.merge(other_attributes))
  end

  def self.funnel_item(label, value)
    gecko_item(nil, value, { label: label })
  end

  protected

  def self.widget(widget)
    widget.to_json
  end
end
