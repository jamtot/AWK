BEGIN {
    print "type a number";
}
{
    total = 0
    for (i=1; i <= $1; i++){
        print "The square of ", i, " is ", i*i;
        total+=i*i
    }
    print "The total is ", total;
    #print "type another number";
}
END {
    print "Done"
}
