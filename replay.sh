#!/bin/bash

set -e

# Created 2025-01-10 13:24:26

CASEDIR="/glade/work/gmarques/cesm.cases/G/g.e30_a05cish.GJRAv4.TL319_t232_wgx3_hycom1_N75.2025.005"

/glade/work/gmarques/cesm.sandboxes/cesm3_0_alpha05c/cime/scripts/create_newcase --case g.e30_a05cish.GJRAv4.TL319_t232_wgx3_hycom1_N75.2025.005 --compset 2000_DATM%JRA-1p4-2018_SLND_CICE_MOM6_DROF%JRA-1p4-2018_SGLC_WW3_SESP --res TL319_t232_wg37 --run-unsupported

cd "${CASEDIR}"

./case.setup

