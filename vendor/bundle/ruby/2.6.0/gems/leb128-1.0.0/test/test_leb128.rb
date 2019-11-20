require 'minitest/autorun'
require 'leb128'

class LEB128Test < Minitest::Test
  def test_decode_signed_negative_leb128
    buffer = StringIO.new
    buffer.putc(0xc1)
    buffer.putc(0x57)
    actual = LEB128.decode_signed(buffer)
    expected = -0x143f
    assert_equal(expected, actual)
  end

  def test_decode_signed_positive_leb128
    buffer = StringIO.new
    buffer.putc(0x8e)
    buffer.putc(0x32)
    actual = LEB128.decode_signed(buffer)
    expected = 0x190e
    assert_equal(expected, actual)
  end

  def test_decode_unsigned_leb128
    buffer = StringIO.new
    buffer.putc(0xc1)
    buffer.putc(0x57)
    actual = LEB128.decode_unsigned(buffer)
    expected = 0x2bc1
    assert_equal(expected, actual)
  end

  def test_decode_eoferror
    assert_raises(EOFError) do
      buffer = StringIO.new
      buffer.putc(0x01)
      LEB128.decode_unsigned(buffer, 1)
    end
  end

  def test_encode_signed_negative_int
    buffer = StringIO.new
    buffer.putc(0xc1)
    buffer.putc(0x57)
    actual = LEB128.encode_signed(-0x143f).string
    expected = buffer.string
    assert_equal(expected, actual)
  end

  def test_encode_signed_positive_int
    buffer = StringIO.new
    buffer.putc(0x8e)
    buffer.putc(0x32)
    actual = LEB128.encode_signed(0x190e).string
    expected = buffer.string
    assert_equal(expected, actual)
  end

  def test_encode_unsigned_negative_int_argumenterror
    exception = assert_raises(ArgumentError) do
      LEB128.encode_unsigned(-0x01)
    end
    assert_equal('Cannot encode a negative integer to an unsigned LEB128', exception.message)
  end

  def test_encode_unsigned_positive_int
    buffer = StringIO.new
    buffer.putc(0xc1)
    buffer.putc(0x57)
    actual = LEB128.encode_unsigned(0x2bc1).string
    expected = buffer.string
    assert_equal(expected, actual)
  end
end
