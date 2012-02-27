class Fixnum
  def divisible_by?(first,*args)
    args += [first]
    args.each do |arg|
      return false unless Divisible.check(self, arg)
    end
    true
  end
  
  # <b>DEPRECATED:</b> Please use <tt>divisible_by?</tt> instead.
  def divisible_by(*args)
    warn "[DEPRECATION] `divisible_by` is deprecated.  Please use `divisible_by?` instead."
    divisible_by?(*args)
  end
end
