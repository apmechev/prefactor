# prefactor
## The LOFAR pre-facet calibration pipeline.

Parsets for the genericpipeline that do the first calibration of LOFAR data. Originally in order 
to prepare said data for the Factor facet calibration (https://github.com/lofar-astron/factor), but 
also useful if you don't plan to run Factor.

It includes:
* clock-TEC separation with transfer of clock from the calibrator to the target
* some flagging and averaging of amplitude solutions
* diagnostic plots
* at least some documentation

Version 1.0 does not include:
* grouping of subbands by actual frequency instead of file number (already implemented in branch v2.0-devel)
* speed and disk usage improvements by optimized usage of NDPPP
* applying Ionospheric RM corrections
(Stay tuned for version 2., and / or check out the experimental branch v2.0-devel)

There is a wiki page with more or less useful hints: http://www.lofar.org/wiki/doku.php?id=public:user_software:prefactor

There are several pipeline parsets in this repository:
* Pre-Facet-Cal.parset : The "standard" pre-facet calibration pipeline, works on pre-NDPPP'ed data
* Pre-Facet-Cal-RawData-Single.parset : A pre-facet pipeline to work on raw (non NDPPP'ed) data
* Pre-Facet-Cal-RawData-PreAvg.parset : A pre-facet pipeline to work on raw (non NDPPP'ed) data that does the subband concatenating in the first NDPPP step. (To reduce the number of files on systems where this is a problem, e.g. JURECA)
* Initial-Subtract.parset : A pipeline that generates full FoV images and subtracts the sky-models from the visibilities. (Needed for facet-calibration, this could also be done as the first step of Factor.)

Software requirements:
* the full "offline" LOFAR software installation version >= 2.15 (With small modifications the Pre-Facet-Cal pipelines can be run with older versions, but that is not supported by the authors anymore.)
* LoSoTo (version >=0.3 -- see https://github.com/revoltek/losoto)
* LSMTool (see https://github.com/darafferty/LSMTool)
* Python-PP (see http://www.parallelpython.com/ or https://pypi.python.org/pypi/pp )
* Python matplotlib
* WSClean (for Initial-Subtract, version >=1.9 -- see https://sourceforge.net/projects/wsclean/)

The Pre-Facet-Calibration pipeline and its scripts where developed by:
* Reinout van Weeren <rvanweeren somewhere cfa.harvard.edu>
* Wendy Williams <wwilliams somewhere strw.leidenuniv.nl>
* Martin Hardcastle <mjh somewhere extragalactic.info>
* Timothy Shimwell <shimwell somewhere strw.leidenuniv.nl>
* David Rafferty <drafferty somewhere hs.uni-hamburg.de>
* Jose Sabater Montes <jsm somewhere iaa.es>
* George Heald <heald somewhere astron.nl>
* Sarrvesh Sridhar <sarrvesh somewhere astro.rug.nl>
* Andreas Horneffer <ahorneffer somewhere mpifr-bonn.mpg.de>

With special thanks to Stefan Froehlich <s.froehlich somewhere fz-juelich.de> for developing the 
genericpipeline.

This procedure is also fully described in these papers:
* van Weeren et al. ApJ submitted
* Williams et al. MNRAS submitted


