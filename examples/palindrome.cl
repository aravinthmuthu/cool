class Main inherits IO{

    pal : String;

    main(): Object {
        {
            
            out_string("Enter a string\n");
            if pal_check(in_string()) then
                out_string("It is a palindrome\n")
            else 
                out_string("It is not a palindrome\n")
            fi;
        }
    };

    pal_check(s: String) : Bool {
        
        if (s.length()=0) then
            true
        else if (s.length()=1) then
            true
        else if (s.substr(0,1) = s.substr(s.length()-1,1)) then
            pal_check(s.substr(1,s.length()-2))
        else false
        fi fi fi
    } ;
};