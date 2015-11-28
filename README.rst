Boost.Build Toolset for Texas Instruments Code Generation Tools
===============================================================

.. contents::

Overview
--------

This directory contains a Boost.Build toolset for the Texas
Instruments Code Generation Tools and documentation for those
toolsets.

Note that this project currently includes only the TMS320 family of
processors.

Toolset
-------

See the `TMS320-family documentation <tms320.rst>`__ for a description
of how to use the TMS320 tools.

See the implementation files for each toolset for implementation
details.

* `TMS320C2000 <tms320c2000.jam>`__
* `TMS320C5400 <tms320c5400.jam>`__
* `TMS320C5500 <tms320c5500.jam>`__
* `TMS320C6000 <tms320c6000.jam>`__

Testing
-------

This project can be tested using the `Boost.Build Toolset Tester
<https://github.com/tee3/boost-build-toolset-tester>`__.  There is a
branch ``devel-ti``, which configures the toolsets.

.. code:: sh

   $ b2 --test-config=user-config.jam \
         toolset=tms320c2000 \
         toolset=tms320c5400 \
         toolset=tms320c5500 \
         toolset=tms320c6000 \
         link=static
