class Fixnum
  def divisible_by?(first,*args)
    args += [first]
    args.each do |arg|
      return false unless Divisible.check(self, arg)
    end
    true
  end
end
