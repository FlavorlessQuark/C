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
Looks like I'll have 
