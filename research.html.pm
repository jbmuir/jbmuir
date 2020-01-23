#lang pollen

◊title{Research}

My research focuses on the development of new methods for geophysics problems. The focus is typically on matching a methodology to the underlying physical, geological or statistical characteristics of the problem.

◊sectionbreak
◊margin-note{◊image{propmodel_sigma_30.jpg} 
Level set tomography across the San Andreas Fault at Carrizo Plains (Muir & Tsai 2020)}
◊section{Geologically-Informed Tomography}

The creation of models of Earth structure through tomographic imaging is one of the cornerstones of modern geophysics. Typically, the tomographic problem is posed using basis functions or discretizations that are mathematically expediant, rather than that reflect some underlying knowledge of the geological structures present. In Muir & Tsai (2020) we discuss an inversion strategy that implements models defined by a combination of geometric primatives (for things like faults) and more complex boundaries defined by level set functions. 

◊sectionbreak
◊margin-note{◊image{cv.jpg} 
Reconstruction of the vertical velocity field of the Mw 7.1 2019 Ridgecrest Earthquake}
◊section{Wavefield Reconstruction}

The bulk properties of the Earth are directly connected to seismic waves through the seismic wave equation, which depends on both time and spatial derivatives of the displacement. While time derivatives are now known accurately, obtaining accurate spatial derivatives is extremely difficult due to the sparse, irregular distribution of seismometers on the Earth's surface. I use a two step wavelet-curvelet analysis with preconditioning that promotes the expected smoothness of the wavefield to optimally interpolate seismic records, allowing for better calculation of spatial derivatives of the wavefield.

◊sectionbreak
◊margin-note{◊image{Oldham_Fig2b.jpg} 
Bayesian changepoint analysis of the data from Oldham (1906) (Muir & Tsai 2020)}
◊section{Bayesian Geophysical Methods}
