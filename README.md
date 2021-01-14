# LCLS_XAS_online
This code was used at [LCLS](lcls.slac.stanford.edu) from 2015 to 2018 to plot diagnostic information on actively accumulating data for [X-ray Magnetic Circular Dichroism](en.wikipedia.org/wiki/X-ray_magnetic_circular_dichroism) and [X-ray Absorption Spectroscopy](en.wikipedia.org/wiki/X-ray_absorption_spectroscopy) (XAS) experiments. The code was periodically streamlined and updated with different features while in use.

This code made diagnostic plots such as those shown below which were continuously updated as data accumulated. The information gained from the plots was used as feedback for tuning experimental parameters for optimizing data quality, as well as gaining a rapid understanding of scientific results which was used to guide future measurements. This was paticularly critical as experiments with a particular setup typically lasted only 4-5 days.

![Correlation Plot](https://github.com/dhigley6/LCLS_XAS_online/blob/master/correlation_plot.png)
^(from [1]): Diagnostic to assess measurement error online. This diagnostic makes three plots and
calculates some statistics of the data which are printed above the scatter plot. The third plot, which
would be on the far right of this window, is not shown here. (a) is a scatter plot of I0 versus I1
signals. (b) is a binned version of the scatter plot. The average value of I1 for many bins of I0
is plotted. A linear fit of this is also plotted. On the far right of this diagnostic (not shown in
figure) is a weighted histogram of I1/I0, where the weights are the incident pulse energy I0 values.
This, along with the statistics printed above the scatter plot are used to assess the precision of the
recorded data.

![Time Delay Traces Plot](https://github.com/dhigley6/LCLS_XAS_online/blob/master/time_delay_traces.png)
^(from [1]): Online monitoring plots of X-ray absorption spectroscopy data. (a) shows the X-ray
absorption of a magnetic Co/Pd multilayer sample at the Co L3 edge with different sample magnetization
directions and the pump laser either on or off for the four traces. (b) shows the difference
between pump laser on and off measurements for a given sample magnetization direction. The far
right panel of this diagnostic (not shown in figure) plots the sum of incident pulse energies of shots
collected at each delay bin to show the amount of data that has been collected at each delay bin.

## How the Code Was Run

This code was run on specific computers that had access to data as it was being recorded and used the [psana](https://confluence.slac.stanford.edu/display/PSDMInternal/psana+modules) Python package for interfacing with LCLS data. A more detailed description is given [here](https://github.com/dhigley6/LCLS_XAS_online/blob/master/Copy%20of%20LQ27%20Shared%20Memory%20Notes.pdf).

## Reference

[1] D. J. Higley, "X-ray Absorption Spectroscopy with an X-ray Free Electron Laser: Nonlinear and Ultrafast Effects in Solids" p. 69-73 (2018)
