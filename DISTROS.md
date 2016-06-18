Distribution Options
====================
Because different distributions put fortune files in different places, the Makefile requires you to specify your distribution.

For example, you must run the following command to install on Debian:

    $ sudo make install distro=debian

Here are the currently supported distributions. If you want your distribution supported, please file an issue along with the name of the directory for fortune files on that distribution.

- debian: works for Debian and Ubuntu-based distributions.
- fedora: works for Fedora-based distributions.
