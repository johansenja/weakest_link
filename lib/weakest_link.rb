# frozen_string_literal: true

require_relative "weakest_link/version"
require_relative "core_ext/nil"
require_relative "core_ext/object"

module WeakestLink
  def self.aliases= others
    others.each do |m|
      Object.alias_method m, :£
    end
  end
end
