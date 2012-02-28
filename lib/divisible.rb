require "divisible/version"
require "divisible/core_ext"

module Divisible
  class << self
    def check(n, d)
      n % d == 0
    end
  end
end
