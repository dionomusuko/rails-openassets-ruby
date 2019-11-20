# LEB128

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/cl8n/leb128/master/LICENSE.md) [![Build Status](https://travis-ci.org/cl8n/leb128.svg?branch=master)](https://travis-ci.org/cl8n/leb128) [![Documentation](https://img.shields.io/badge/docs-rubydoc.info-orange.svg)](http://www.rubydoc.info/gems/leb128)

This gem is a set of utility functions for encoding and decoding LEB128-compressed integers.

As a visual example, this is an excerpt from the [LEB128 Wikipedia page](https://en.wikipedia.org/wiki/LEB128) describing how an integer is encoded into an unsigned LEB128:

```
      10011000011101100101  In raw binary
     010011000011101100101  Padded to a multiple of 7 bits
 0100110  0001110  1100101  Split into 7-bit groups
00100110 10001110 11100101  Add high 1 bits on all but last group to form bytes
    0x26     0x8E     0xE5  In hexadecimal
0xE5 0x8E 0x26              Output stream
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'leb128'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install leb128

## Usage

Require the Gem:

```ruby
require 'leb128'
```

### Encoding and Decoding

Encode integers into LEB128-compressed data by using the `encode_unsigned` and `encode_signed` methods. The functions take one argument, being the integer to encode. The following encodes the given integer and returns a new StringIO containing it:

```ruby
LEB128.encode_signed(-0x143f)
#=> #<StringIO:0x00000000000000>
```

Decode LEB128-compressed data into integers by using the `decode_unsigned` and `decode_signed` methods. The functions take two arguments: a StringIO containing the LEB128-compressed data, and an optional integer that sets the position of the StringIO (default is 0). The following decodes the given StringIO and returns a new integer containing it:

```ruby
sio = StringIO.new
sio.putc(0xc1)
sio.putc(0x57)
LEB128.decode_unsigned(sio)
#=> 11201
```

## License

This gem is available as open source under the terms of the MIT License. See [LICENSE.md](https://github.com/cl8n/leb128/blob/master/LICENSE.md) and <https://opensource.org/licenses/MIT>.
