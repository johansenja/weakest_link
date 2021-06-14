# frozen_string_literal: true

class Object
  def £
    NilClass.__method_chaining__ = !NilClass.__method_chaining__
    self
  end
end
