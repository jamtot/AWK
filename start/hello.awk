#! /bin/awk -f

BEGIN   { print "Hello, World.";}
        { print "Uh-oh, time to go.";exit;}
END     { print "Bye bye!";}
