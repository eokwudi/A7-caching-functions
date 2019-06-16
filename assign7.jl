answer = 0
number = false

function make_cache(fun)
     a = Int64[]
     b = Int64[]
     function eval(x)
       if length(a) == 0
          answer = fun(x)
          push!(a, x)
          push!(b, answer)
          return answer
       else
        for i in a
          count = 0
          count = count + 1
          if i == x
             cache = b[count]
             return cache
          end
        end
       end
        answer = fun(x)
        push!(a, x)
        push!(b, answer)
        return answer
     end
     function check(x)
      if length(a) == 0
        return false
      else
        for i in a
          if i == x
             number = true
             return number
          end
        end
      end
      return number
     end
  return eval, check
end
