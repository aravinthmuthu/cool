class Main inherits A2I{
    io : IO <- new IO ;

	fact(n : Int): Int {
	    (*  -- rescursive
		if n = 0 then 
			1 
		else 
			fact(n-1) * n 
		fi 
		*)

		-- iterative version
		let fact : Int <- 1 in {
			while (not (n = 0)) loop {
				fact <- fact * n;
				n <- n - 1 ;
			}
			pool;     -- semicolon because we are inside statement block of let	
			fact;
		}

	};

	test(): Int {
		{
			let x: Int <- 1+2;
			x;
		}
	};


	
	main(): IO {
		{	
			--io.out_string(i2a(fact(a2i(io.in_string()))).concat("\n"));
			io.out_string(i2a(test()))
		}
	};
};
