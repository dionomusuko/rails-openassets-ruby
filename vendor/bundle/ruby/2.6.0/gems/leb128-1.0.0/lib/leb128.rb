require 'stringio'

# Includes a set of functions to encode and decode the LEB128 integer compression type.
module LEB128
  # Encode an unsigned integer into LEB128-compressed data.
  #
  # @param value [Integer]
  # @return [StringIO]
  #
  # @example
  #   LEB128.encode_unsigned(0x2bc1) #=> #<StringIO:0x00000000000000>

  def self.encode_unsigned(value)
    if value < 0
      raise(ArgumentError,
            'Cannot encode a negative integer to an unsigned LEB128')
    end
    io = StringIO.new
    loop do
      byte = value & 0x7F
      value >>= 7
      byte |= 0x80 if value != 0
      io.putc(byte)
      break if value == 0
    end
    io.pos = 0
    io
  end

  # Encode a signed integer into LEB128-compressed data.
  #
  # @param value [Integer]
  # @return [StringIO]
  #
  # @example
  #   LEB128.encode_signed(-0x143f) #=> #<StringIO:0x00000000000000>

  def self.encode_signed(value)
    io = StringIO.new
    loop do
      byte = value & 0x7F
      value >>= 7
      byte |= 0x80 unless (value == 0 && byte & 0x40 == 0) ||
                          (value == -1 && byte & 0x40 != 0)
      io.putc(byte)
      break if byte & 0x80 == 0
    end
    io.pos = 0
    io
  end

  # Decode unsigned LEB128-compressed data into an integer.
  #
  # @param io [StringIO]
  # @param index [Integer]
  # @return [Integer]
  #
  # @example
  #   sio = StringIO.new
  #   sio.putc(0xc1)
  #   sio.putc(0x57)
  #   LEB128.decode_unsigned(sio) #=> 11201

  def self.decode_unsigned(io, index = 0)
    io.pos = index
    raise(EOFError) if io.eof?
    value = 0
    offset = 0
    loop do
      byte = io.read(1).unpack('C')[0]
      value |= (byte & 0x7F) << offset
      break if byte & 0x80 == 0
      offset += 7
    end
    value
  end

  # Decode signed LEB128-compressed data into an integer.
  #
  # @param io [StringIO]
  # @param index [Integer]
  # @return [Integer]
  #
  # @example
  #   sio = StringIO.new
  #   sio.putc(0xc1)
  #   sio.putc(0x57)
  #   LEB128.decode_signed(sio) #=> -5183

  def self.decode_signed(io, index = 0)
    io.pos = index
    raise(EOFError) if io.eof?
    value = 0
    offset = 0
    loop do
      byte = io.read(1).unpack('C')[0]
      value |= (byte & 0x7F) << offset
      offset += 7
      if byte & 0x80 == 0
        value |= -(1 << offset) unless byte & 0x40 == 0
        break
      end
    end
    value
  end
end
