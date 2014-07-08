# Geckoboard

A little gem to expose data nicely to [Geckoboard](http://www.geckoboard.com/).

## Install

Install with Rubygems:

    gem install geckoboard

If you use bundler, add it to your Gemfile:

    gem 'geckoboard'

## Usage

### [Number](https://developer.geckoboard.com/#number-and-secondary-stat)
```ruby
Geckoboard.number('text', 2) # text and value
```

### List item

```ruby
Geckoboard.list_item('text', 'description')
```

### Trendline

```ruby
Geckoboard.trendline(
  'Text',
  10, # value
  [1,2,4,7,10] # trendline values
)
```

### Comparison

```ruby
Geckoboard.comparison(10, 20) # first and second value to compare
```

### Rag

```ruby
Geckoboard.rag(
  Geckoboard.gecko_item('Red', 10),
  Geckoboard.gecko_item('Amber', 20),
  Geckoboard.gecko_item('Green', 30),
)
```

### Geck-o-Meter

```ruby
Geckoboard.geck_o_meter(
  80,
  Geckoboard.gecko_item('Max value', 100),
  Geckoboard.gecko_item('Min value', 0)
)
```

### Pie

```ruby
Geckoboard.pie([
  Geckoboard.pie_item(70, '70 percents label', 'FFFF10AA'),
  Geckoboard.pie_item(30, '30 percents label', 'FFAA0AAA')
])
```

### Funnel

```ruby
Geckoboard.funnel([
  Geckoboard.funnel_item('Top funnel part', 100),
  Geckoboard.funnel_item('Bottom funnel part', 50)
])
```

### Helper Methods

#### Gecko Item
```ruby
  other_attributes = { label: 'label', type: 0 }
  Geckoboard.gecko_item('text', 'value', other_attributes) # other_attributes are optional
```

#### Pie Item
```ruby
  Geckoboard.pie_item('value', 'label', 'FFFF10') # color is optional
```

## License

MIT License

Copyright (C) 2014 by Nayeem Syed

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
