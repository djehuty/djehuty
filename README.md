Djehuty
=======

Djehuty is a set of programming interfaces that are platform and language
agnostic published as close to the public domain as possible. (WTFPL)

Getting Started on Linux
------------------------

You may try out djehuty and its associated buildtools on a linux platform.

First, install the D compiler, LDC.

Second, pull all djehuty repos (specifically: seshat, maat, ibis and djehuty)
into the same path. Run the build.sh script from within seshat's directory.

Getting Started on Windows
--------------------------

You may try out djehuty and its associated buildtools on a windows platform.

First, pull all djehuty repos (specifically: seshat, maat, ibis and djehuty)
into the same path.

Second, install the D compiler with the tango bundle here by extracting this zip.
You will want to put the dmd compiler in your PATH if you want to use it in the future.
You will want to run a bash shell on windows by installing the tools along with the Git for Windows package. Run the bash executable. Navigate to the seshat directory and build the buildtool by:

    export PATH=$PATH:/path/to/dmd
    sh win-build.sh

You may omit the export step if dmd is in your path.

Building Your Project on Any Platform
-------------------------------------

Start a new project from the same master directory as the three djehuty projects.
Use seshat to build: (Assuming main.d is your root source file)

    ../seshat/seshat main.d ../djehuty ../ibis

This will compile all files and dependencies of your main.d with the interfaces
found in the djehuty/ directories and the implementations found in the
ibis path. It will produce a main.d executable. Add a -d flag to compile a
debugging version. Use -o to specify an alternative executable output.
