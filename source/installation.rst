Installation
==================


GAMUT can be easily installed using pip with the following shell command:

.. code-block:: bash

    pip install gamut

Or you can clone GAMUT from its repo with the following shell command:


.. code-block:: bash

    git clone https://github.com/thu-inet/Gamut.git


The most recommended way is to create an isolated Python enrivoment for GAMUT using **conda**. This can be done with the following shell command.

.. code-block:: bash

    conda create -n gamut python=3.10
    conda activate gamut
    conda install -c conda-forge gamut

After installation, you can use GAMUT in the Jupyter Notebook with the following Python code:

.. code-block:: bash

    conda activate gamut
    jupyter notebook
