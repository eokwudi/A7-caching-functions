# A7-caching-functions
Using Julia to cache functions using free variables

Write a function called make_cache that takes as its input a function with a single integer parameter that returns a single integer parameter.  For example it might take a fibonacci or factorial function.

make_cache is to create two new functions: eval and check.  Both take the parameter from the function.

eval returns the value that would be returned by the function, but also maintains a list of previously computed values so that it can return a cached value rather than recomputing it.

check returns a boolean indicating whether a specific value is in the cache.  

Assuming that functions fib (fibonacci) and fact (factorial) are defined, the following is a sample of calls and results.  Results are shown with => but are intended to simply be a number or a boolean.

(fibeval,fibcheck) = make_cache(fib)
(facteval,factcheck) = make_cache(fact)
fibcheck(5)
=>false
fibeval(5)
=>5
fibcheck(5)
=>true
fibeval(5)
=>5
factcheck(5)
=>false
facteval(5)
=>120
factcheck(5)
=>true
facteval(5)
=>120

Can look at raw version for original format
source: https://docs.google.com/document/d/1wX8dAVTUIvgS3HY9iHWa6tIqPhFEH_Tun3zOQVEO2WE/edit
