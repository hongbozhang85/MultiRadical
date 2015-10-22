#!/bin/bash
grep 'Eigenvalues' *.log | sed 's/Eigenvalues --/ /' > NO.dat
./multiradical
