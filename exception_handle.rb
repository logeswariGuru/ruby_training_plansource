# exception list
# NoMemoryError
# ScriptError
# LoadError
# NotImplementedError
# SyntaxError
# SecurityError
# SignalException
# Interrupt
# StandardError
# ArgumentError
# UncaughtThrowError
# EncodingError
# CompatibilityError
# ConverterNotFoundError
# InvalidByteSequenceError
# UndefinedConversionError
# FiberError
# IOError
# EOFError
# IndexError
# KeyError
# StopIteration
# LocalJumpError
# NameError
# NoMethodError
# RangeError
# FloatDomainError
# RegexpError
# RuntimeError
# SystemCallError
# ThreadError
# TypeError
# ZeroDivisionError
# SystemExit
# SystemStackError
# fatal – impossible to rescue


class ExceptionHandle
  def test
    begin
      # n= 0
      # 10/n
      #
      # raise
      # raise
      # raise with message
      # raise "here it is exception raised"
      # raise with exception class and message
      # raise ZeroDivisionError, "test the exp"
    rescue ZeroDivisionError => e
      p "ZeroDivisionError is #{e} from class name is #{e.class}"
    rescue Exception => e
      p "generic exception is #{e} from class name is #{e.class}"
    else
      p "everything is good"
    ensure
      p "ensuring"
    end
  end
end


# custom exception
#
class FileSaveError < StandardError
  attr_reader :reason

  def initialize(reason)
    p "reason is #{reason}"
    @reason = reason
  end
end

def text_custom_exception
  begin
    raise FileSaveError, "here it is"
  rescue FileSaveError => e
    p "Exception from custom #{e}"
    p e.class
  rescue  Exception => e
    p "Exception #{e}"
  end
end

# Create a custom DivisionError ruby class and raise the exception for this class while dividing a number with 0
class DivisionError < StandardError
  attr_reader :reason

  def initialize(reason)
    p "reason is #{reason}"
    @reason = reason
  end
end

def divid_num
  begin
    n = 0
    value = 5
    raise DivisionError, "dont divide number by 0" if n == 0
    value/n
  rescue DivisionError => e
    p "rescue from DivisionError, exception msg is #{e}, class name is #{e.class}"
  rescue  Exception => e
    p "Exception #{e}class is #{e.class}"
  end
end
