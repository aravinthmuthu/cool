class Main inherits A2I{
  
    x : Int

	test(): Int {
		let x: Int <- 1+2 ;
	};

	
	main(): IO {
		{	
			--io.out_string(i2a(fact(a2i(io.in_string()))).concat("\n"));
			(new IO).out_string(i2a(test()))
		}
	};
};
