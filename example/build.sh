#!/bin/sh

b2="bjam"

iterate_toolset_instruction_sets () {
    toolset=${1}
    architecture=${2}
    instruction_sets=${3}

    for instruction_set in ${instruction_sets} ; do
        for variant in debug release ; do
            for link in static shared ; do
                for exception_handling in off on ; do
                    for rtti in off on ; do
                        ${b2} \
                            toolset="${toolset}" \
                            architecture="${architecture}" \
                            instruction-set="${instruction_set}" \
                            variant="${variant}" \
                            link="${link}" \
                            exception-handling="${exception_handling}" \
                            rtti="${rtti}"
                    done
                done
            done
        done
    done
}

iterate_toolset_instruction_sets tms320c5400-4.2.0 tms320c5400 tms320c5400 tms320c5409
iterate_toolset_instruction_sets tms320c5500-4.4.1 tms320c5500 tms320c5509 tms320c5510
iterate_toolset_instruction_sets tms320c6000-7.4.14 tms320c6000 tms320c6000 tms320c6200 tms320c6400
