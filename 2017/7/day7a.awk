 {
    gsub(/,/, "");
    parents[$1] = $1;
    # Skip over "fwft (72) ->" to get to "ktlj cntj xhth"
    for (i = 4; i <= NF; i++)
        children[$i] = $i;
}

END {
    for(r in parents)
    {
        if (r in children)
            continue;
        print r;
    }
}
