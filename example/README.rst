Boost.Build TMS320C6000 Toolset Example
=======================================

Overview
--------

This directory contains an example project comprised of a ``Jamroot``
and a ``project-config.jam`` along with several source files.  It
builds several targets (``exe``, ``lib``, ``run``, etc.) to show the
functionality of the TMS320 toolsets.

Usage
-----

To run this example, run the following command.

::

   $ b2 toolset=tms320c6000 architecture=tms320c6000 instruction-set=tms320c64x+ link=static

Note that there is not currently any way to run the program on the
host system.
