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

To run this example for the TMS320C6000 TMS320C64x+ processing
defaulting the rest of the build parameters, run the following
command.

::

   $ b2 toolset=tms320c6000 architecture=tms320c6000 instruction-set=tms320c64x+ link=static

To run all the supported toolsets, architectures, and instruction sets
against the main build parameters, run the following command.  This
will attempt to build a very simple project varying the variant
(debug, release), linking (static, shared), exception handling (off,
on), and RTTI (off, on).

::

   $ ./build.sh

Note that there is not currently any way to run the resulting programs
on the host system since Texas Instruments does not generally provide
a simulator.
