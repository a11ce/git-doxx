- To install, `make`. This will download, build, and install [get-location](https://github.com/lindes/get-location). It will also **globally set your git init template directory** to a newly created one containing the git-doxx commit-msg hook. If you instead want to integrate git-doxx into your existing template (why?) check the makefile.

- Run `git init` (within an existing repo or to create a new one) to install the hook.

- `make remove` will remove the hook from your global git init template. It will not set the template directory to its previous value. It will also not remove the hook from any repos it's installed in.
