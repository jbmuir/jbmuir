#lang pollen

◊title{Research}

My research focuses on the development of new methods for geophysics problems. The focus is typically on matching a methodology to the underlying physical, geological or statistical characteristics of the problem.

◊section["Geologically-Informed Tomography"]{
    ◊margin-note{◊image{propmodel_sigma_30.jpg} 
Level set tomography across the San Andreas Fault at Carrizo Plains (Muir & Tsai 2020)}
The creation of models of Earth structure through tomographic imaging is one of the cornerstones of modern geophysics. Typically, the tomographic problem is posed using basis functions or discretizations that are mathematically expediant, rather than that reflect some underlying knowledge of the geological structures present. In Muir & Tsai (2020) we discuss an inversion strategy that implements models defined by a combination of geometric primatives (for things like faults) and more complex boundaries defined by level set functions. 
}

◊section["Wavefield Reconstruction"]{
◊margin-note{◊image{cv.jpg} 
Reconstruction of the vertical velocity field of the Mw 7.1 2019 Ridgecrest Earthquake}
The bulk properties of the Earth are directly connected to seismic waves through the seismic wave equation, which depends on both time and spatial derivatives of the displacement. While time derivatives are now known accurately, obtaining accurate spatial derivatives is extremely difficult due to the sparse, irregular distribution of seismometers on the Earth's surface. I use a two step wavelet-curvelet analysis with preconditioning that promotes the expected smoothness of the wavefield to optimally interpolate seismic records, allowing for better calculation of spatial derivatives of the wavefield.
}

◊section["Bayesian Geophysical Methods"]{

◊margin-note{◊image{Oldham_Fig2b.jpg} 
Bayesian changepoint analysis of the data from Oldham (1906) (Muir & Tsai 2020)}

Almost all geophysical inverse problems are ill-posed, and almost all geophysical data is noisy. Solving ill-posedness requires some ◊emph{a priori} about the likely structure of the Earth, and accounting for data requires ◊emph{a priori} knowledge about the distribution of data errors. The Bayesian statistical framework gives us the toolset to formally account for these assumptions, with the useful outcome that we obtain some understanding of the distribution of possible solutions, rather than just the best fitting one. A recent highlight from this line of research is our finding in Muir & Tsai (2020) that the discovery of Earth's core (Oldham, 1906) is robust when only the Primary arrival dataset is included - in this study we present some useful results for handling very noisy historical datasets by marginalizing across multiple sources of error. 

}