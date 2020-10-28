>.<

On the trouble with the _Array define:

This define is more complicated than it seems. Due to the fact that it will most likely be a fairly often used macro, I'm trying to make it as concise as can be so that any function where it is used does not contain too many lines.]

However, and perhaps becuase I wish to do a lot wiht this macro, it seems that it will not be possible.
The problem is that, this should :
	- Allocate an empty array (that is its primary function)
	- Copy fetch_obj if no fetch_cond is provided [a condition is useless without a body]
	- Fetch_obj might be a different type than Array and then we need to call the right conversion...
	{This can either  be done with nested generic (not a fan) or we require a conversion function to be passed
	 THis is also an issue if fetch_obj is a list type object, the iteration will be different...}
	Potentially weird things can happen if fetch_obj is also array but given the appropriate checks this shouldnt be a problem¡

---
^ the above requires a lookup table, however that will be quite difficult to make , at least based on type;

It will probably best best to have one generic then a few if else statements, though if this were to be truly generalized, it might be better to instead thake a a convert function. Not sure yet which is best.

On one hand, automatization assures virtually no mistakes will occur when converting, at the cost of some  more processing but getting a function as input leaves the possibility for user error....
-------

Thinking more about this, I think a convert function will be best, at least until I eithr find a way that is not a) nested generics b) generic + if else statements. c) only if else statements

Primitive _ARRAY building macro done, still need to make the conversion functions and some array reallocation funcs

One of the major problems with this is that, the array is allocated when we don't know the size of the resulting array after applying condition. But I think that can be solved by just reallocating to size _n + 1 . After thinking about it, it may be the best solution....

Another is if we don't actually wan a condition... Not sure if condition can be NULL? if it is a snippet of code, checking if it is NULL might yield some errors
