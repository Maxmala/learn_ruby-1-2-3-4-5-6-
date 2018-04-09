
def ftoc(f)
  offset = f - 32
  (offset * 0.555).ceil.to_i
end

def ctof(c)
  (c * 1.8 + 32.0)
end
