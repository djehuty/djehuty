Djehuty
=======

Djehuty is a set of programming interfaces that are platform and language
agnostic published as close to the public domain as possible. (WTFPL)

Getting Started
---------------

You may try out djehuty and its associated buildtools on a linux platform.

First, install the D compiler, LDC.

Second, pull all djehuty repos (specifically: seshat, maat, ibis and djehuty)
into the same path. Run the build.sh script from within seshat's directory.

Start a new project from the same master directory as the three djehuty projects.
Use seshat to build: (Assuming main.d is your root source file)

    ../seshat/seshat main.d ../djehuty ../ibis

This will compile all files and dependencies of your main.d with the interfaces
found in the djehuty/ directories and the implementations found in the
ibis path. It will produce a main.d executable. Add a -d flag to compile a
debugging version. Use -o to specify an alternative executable output.
