#!/bin/sh
# $Id$

if [ "$1" = "--force" ];
then
    FORCE=--force
    NOFORCE=
    FORCE_MISSING=--force-missing
else
    FORCE=
    NOFORCE=--no-force
    FORCE_MISSING=
fi

if [ "$(uname)" = "Darwin" ]; then
    # MAC OS
    glibtoolize --copy $FORCE 2>&1 | sed '/^You should/d' || {
        echo "libtoolize failed!"
        exit 1
    }
else
    # Others
    libtoolize --copy $FORCE 2>&1 | sed '/^You should/d' || {
        echo "libtoolize failed!"
        exit 1
    }
fi

aclocal $FORCE || {
    echo "aclocal failed!"
    exit 1
}

autoheader $FORCE || {
    echo "autoheader failed!"
    exit 1
}

automake -a -c $NOFORCE || {
    echo "automake failed!"
    exit 1
}

autoconf $FORCE || {
    echo "autoconf failed!"
    exit 1
}
