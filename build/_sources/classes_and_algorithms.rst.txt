Classes and algorithms
======================


Following table lists all available classes and their functionalities in GAMUT.

+----------------+---------------------------------------------+
|class           | functionality                               |
+================+=============================================+
|Spectrum        | store the channel-wise counting data        |
+----------------+---------------------------------------------+
|Region          | represent a ROI on the spectrum which may   |
|                | contain one or more peaks                   |
+----------------+---------------------------------------------+
|Peak            | represent a peak and store its position,    |
|                | height, peak width, peak area, etc.         |
+----------------+---------------------------------------------+
|Calibration     | represent the relationship between channel  |
|                | indexes to variables such as energy         |
+----------------+---------------------------------------------+
|Operator        | the basic class to wrap algorithms          |
+----------------+---------------------------------------------+
|Pipe            | combine multiple operators linearly into one|
|                | operator                                    |
+----------------+---------------------------------------------+
|PipeNet         | combine multiple operators and pipes        |
|                | non-linearly into an analysis workflow      |
+----------------+---------------------------------------------+
|Node            | store spectra inside a pipenet              |
+----------------+---------------------------------------------+
|Flow            | wrap operator with its input/output node    |
|                | information                                 |
+----------------+---------------------------------------------+


Following table lists all analysis algorithms implemented in GAMUT. All algorithms are divided into four categories according to their functionalities. Most algorithms can be replaced by algorithms of the same category easily without any additinal configuration in a defined workflow.


+----------------+---------------------------------------------+
|Functionality   | Algorithms                                  |
+================+=============================================+
|Smoother        | Savitzky-Golay Fitting Method, Fourier      |
|                | Smoothing, Wavelet Smoothing, Whittaker     |
|                | Smoothing Method                            |
+----------------+---------------------------------------------+
|PeakSearcher    | Gaussian Factor Method, Numerical           |
|                | Differential Method (Marriscoti Method),    |
|                | Covariance Method, Symmetric Zero Area      |
|                | Method, Double Convolution Method           |
+----------------+---------------------------------------------+
|Stripper        | SNIP method, Self-adaptive SNIP Method,     |
|                | Iterative Asymmetric Whittaker Stripping    |
+----------------+---------------------------------------------+
|AreaCalculator  | Total Peak Area Method (Covell,Wasson...),  |
|                | Gaussian Peak Fitting, Deconvolution        |
+----------------+---------------------------------------------+
