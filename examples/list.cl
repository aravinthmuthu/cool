(*
-- Objective : create a list of strings and display the concat
-- version 1 with string concat display 
class Main inherits IO{
    main(): Object {

        let hello: String <- "Hello ",
            world: String <- "World!",
            newline: String <- "\n"
        in
            out_string(hello.concat(world).concat(newline))  
    
    };
};
*)


-- version 2 with list creation

class List{
    item: String ;
    next: List ;

    init(i: String, l: List): List {
        {
            item <- i;
            next <- l;
            self;
        }
    };

    flatten(): String {
        if (isvoid next) then 
            item
        else
            item.concat(next.flatten())
        fi  
    };
};


class Main inherits IO{
    main(): Object {
        let hello: String <- "Hello ",
            world: String <- "World!",
            newline: String <- "\n",
            nil: List,
            list: List <- (new List).init(hello, 
                                (new List).init(world, 
                                    (new List).init(newline, 
                                        nil)))
        in 
            out_string(list.flatten())
    };
};