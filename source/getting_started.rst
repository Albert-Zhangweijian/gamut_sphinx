Getting Started
==================

Interactive Analysis with Basic APIs
-------------------------------------------------

Here is a MWE (minimum working example) of GAMUT to analysis a gamma spectrum interactively.

.. code-block:: python

    import gamut as gt

    # import a gamma spectrum
    spec = gt.Spectrum.from_GammaVision("spectrum.spe")

    # initiate an operator/algorithm
    smoother = gt.CentroidSmoother(order=2)

    # analyze the spectrum
    output = smoother(spec)

    # visualize the spectrum
    ax = output.plot()
    plt.gcf().savefig("smoothed_spectrum.png")

    # export the spectrum
    out.export_to_GammaVision("smoothed_spectrum.png")

The above code snippet does the following:

.. code-block:: python

    import gamut as gt

0. Import the GAMUT library. This is the first step in using GAMUT. The library is constructed in a hierarchical manner, with the top-level module being gamut. For more information on the available submodules, see :ref:`submodules`.

.. code-block:: python

    # import a gamma spectrum
    spec = gt.Spectrum.from_GammaVision("spectrum.spe")

1. Import a gamma spectrum from a file. Here a **Spectrum** object is initialized by importing from a GammaVision file. For more information on how to import a spectrum from different file formats, see :ref:`spectrum_import`.

.. code-block:: python

    # import a gamma spectrum
    smoother = gt.CentroidSmoother(order=2)

2. Initialize an operator/algorithm. Here, a **CentroidSmoother** object is initialized with a smoothing order of 2. Parameters are passed to the algorithm during initialization. For more information on the available algorithms, see :ref:`algorithms`.


.. code-block:: python

    # analyze the spectrum
    output = smoother(spec)

3. Analyze the spectrum. One must pass the correct number of **Spectrum** objects to the algorithm (specified by **inp_num** attribute and it is 1 for **CentroidSmoother**). And a **Spectrum** object is returnas as output.

.. code-block:: python

    # visualize the spectrum
    ax = output.plot()
    spec.plot(ax)
    plt.gcf().savefig("smoothed_spectrum.png")

4. Visualize the spectrum. Multiple visualization methods are available to control which data to display. For more information on how to visualize a spectrum, see :ref:`visualization`.

.. code-block:: python

    # export the spectrum
    out.export_to_GammaVision("smoothed_spectrum.png")

5. Export the spectrum. The **Spectrum** object can be exported to a file. For more information on how to export a spectrum to different file formats, see :ref:`spectrum_export`.

Quick Analysis with Pre-defined Workflows
------------------------------------------

There is also a pre-defined workflow in GAMUT, which provides the out-of-the-box gamma
spectrum analysis capacity:

.. code-block:: python

    import gamut as gt

    # import a gamma spectrum
    spec = gt.Spectrum.from_GammaVision("spectrum.spe")

    # run the default workflow
    nodes = gt.default_workflow(spec)

    # analyze the spectrum
    output = nodes[4][0]

    # export the spectrum
    out.export_to_GammaVision("analyzed_spectrum.png")

The key part of the above code snippet does the following:

.. code-block:: python

    # run the default workflow
    nodes = gt.default_workflow(spec)

1. Run the default workflow. GAMUT provides a default workflow for the out-of-the-box gamma spectrum analysis. It is a **PipeNet** object, and can execute a serie of algorithms automatically upon calling. For more information on the default workflow, see :ref:`default_workflow`.

.. code-block:: python

    # run the default workflow
    output = nodes[4][0]

1. Retrive the analyzed spectrum. The output is a list of Node objects, which is essentially a bunch of **Spectrum** objects.In the default workflow, the final analyzed spectrum is stored in the 5th node.


