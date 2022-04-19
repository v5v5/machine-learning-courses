# run this script from wanted directory

create_readme () {
    # ls > README.md
    ls -p | grep -v / > README.md
    # delete line README.md from file
    sed -i "/^README\.md$/d" README.md
    # add "![](./" to start of line and ")" to end of line
    sed -i 's/^\(.\+\)$/![](\.\/\1)/g' README.md
    # change " " to "%20"
    sed -i 's/\s/%20/g' README.md
}

root=`pwd`
echo "$root"
for d in */ ; do
    cd "$d"
    pwd

    create_readme

    cd "$root"
    pwd
done

create_readme
