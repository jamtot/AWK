# called with 'awk -f regex.awk sample.txt'
# or 'echo "string to play with" | awk -f regex.awk'
BEGIN   { print "Hello."; }
        { 
            print match($0, "[[:lower:]]");
            print toupper($0);
            print tolower($0); 
            sub("[a-c]", "a", $0);#changes first found 
            b = gensub("[o]", "OH!", 3, $0);#can return the string unchanged
                                            # and select which match to change
            print b;# or print gensub(...)
            print gensub("[[:punct:]]", "", "goodlord")#as long as it starts with g
            print gensub("[aeiou]", "[AEIOU]", "g")
                                                       #it will do all
            gsub("[i]", "I", $0);#changes all found
            print $0
            exit; }
END     { print "See ya!"; }
