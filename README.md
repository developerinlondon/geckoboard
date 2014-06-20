# Sinatra Geckoboard

A little gem to expose data nicely to [Geckoboard](http://www.geckoboard.com/).

## Install

Install with Rubygems:

    gem install geckoboard

If you use bundler, add it to your Gemfile:

    gem 'geckoboard',

## Usage

```ruby
require 'sinatra/base'
require 'sinatra/geckoboard'

class App < Sinatra::Base
  register Sinatra::Geckoboard

  get '/pie_graph' do
    pie_chart [ { "label" => "Chuck Norris",
                  "value" => 3,
                  "colour" => "#ff9900" },
                { "label" => "Bruce Lee",
                  "value" => 0,
                  "colour" => "#ef9900" }
              ]
  end

  get '/line_chart' do
    line_chart [1, 3], ["value1", "value2"], ["top1", "top2"], "#ff9900"
  end
end
```

### Pie Chart

Render a pie chart widget. You should pass an array of `Hash`. If the key `colour` is ommited, a colour will be generated with the `label` key.

```ruby
pie_chart(values)
```

### Line Chart

Render a line_chart widget.

```ruby
line_chart(values, axisx, axisy, colour)
```

### Geck-O-Meter

Render a Geck-O-Meter widget.

```ruby
geck_o_meter(number, max, min)
```

### RAG

Render a RAG widget.

```ruby
red   = {value: 4, text: 'Plop'}
amber = {value: 4, text: 'Plop'}
green = {value: 4, text: 'Plop'}
rag(red, amber, green)
```

### Number + optional secondary stat

Render a Number widget.

```ruby
number1 = {value: 4, text: 'Plop'}
number2 = {value: 5, text: 'Plop'}
number(number1[, number2])
```

## License

MIT License

Copyright (C) 2014 by Nayeem Syed

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
