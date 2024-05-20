Visualize a Spectrum
====================


GAMUT is not equiped with GUI in the current version, and its visualization capacity is enabled using matplotlib. There are three plot methods with Spectrum object, named plot(),
plot_region(), and plot_peaks(). They can plot the specturm itself, the ROIs, and the fitted
peaks respectively.

.. code-block:: python

  # plot all information of a gamma spectrum
  ax = plt.subplot()
  spec.plot(ax)
  spec.plot_regions(ax)
  spec.plot_peaks(ax)


Since visualization is very important in gamma spectrum analysis and some algorithms may be
very time-consuming, Jupyter Notebook is recommended for it can execute the code and store
all variables step-by-step. This is especially useful when one performs the interactive analysis or
explore new workflows.
