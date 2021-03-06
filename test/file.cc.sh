#! /bin/sh

echo "TESTING \f option: "

cp -f "$DIR/file.cc.in" file.cc

echo "forward test:"
$MSRP -f -d "[$]ID[$]" "\\f" file.cc

cmp --quiet file.cc "$DIR/file.cc.out" || exit 1

echo "PASSED!"

echo "backward test:"
$MSRP -f -d "\f" "\$ID\$" file.cc

cmp --quiet file.cc "$DIR/file.cc.in" || exit 1

echo "PASSED!"

rm file.cc



