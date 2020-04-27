def solution(str)
  str << '_' if str.size.odd?
  str.scan(/\w{2}/)
end
