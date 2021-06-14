# frozen_string_literal: true

class NilClass
  class << self
    attr_accessor :__method_chaining__
  end

  def method_missing meth, *args, **kw, &blk
    super unless self.class.__method_chaining__
  end
end
