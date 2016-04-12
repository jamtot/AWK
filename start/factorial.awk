BEGIN {
    print "type a number";
}
{
    print factorial($1);
    exit;
}
END { print "Done."; }

function factorial( n ){
    if (n == 1){
        return 1;
    }
    else {
        return n * factorial(n-1);
    }
}
