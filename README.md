
# computationalchemistry

The work (training material) carried out on a set of first-principles quantum mechanical and molecular dynamics programs is summarised in the form of HPC submission scripts and of tables describing the actual progress with the packages. The contents of this repository are:

1. Slurm job submission scripts for LAMMPS calculations have been uploaded.
1. Tables depicting the progress achieved with the various computational chemistry software packages are regularly updated
   - The first few uploaded tables included four tables in a single document.
   - At some point, I decided to extend their size, and ended uploading separate documents for each table.

Eventually the list will extend by including to-be-installed ab-initio/MD packages and pre- and post- processing tools. This work is to naively evolve in three different scientific directions, as explained below:

1. Theoretical Materials Science
2. Big-Data driven Computational Materials Science
3. Computational Statistical Mechanics

On the one hand, simple packages that read the input structures in well known formats (CIF - pdb - xyz - POSCAR) and produce outputs that become input files of the correct format for the specific programs, are envisioned (cif2cell). On the other, packages that generate supercells as well as defects of different dimensionality are being considered: point defects, dislocations, grain boundaries and surfaces (ASE). Moreover, atomistic geometries crucial for the current materials science ecosystem require more involved input geometry processing: disordered/amorphous solids and glasses, solid solutions, simultaneous multi-phase models, polycrystalline models, bubble nucleation models. The *atomic simulation environment* is a good example of such tools, as well as its big-data driven high-troughput computational materials science sister package (the *atomic simulation recipes* (ASR)). Other HTCMS packages (aiida - materials cloud; materials genome - pymatgen, JARVIS, AFLOW; pyiron) - are being looked into. At this stage, we are certainly not talking about simple tools, HTCMS corresponding to a full infrastructure including a large collection of tools for data mining, AI (ML potentials), pre- and post-processing, databases of materials, HPC and online high-througput ab-initio/MD/kinetics calculations. It is my opiniion that, at some point, it becomes unavoidable to keep in touch with academics working in the respective fields if you intend to keep doing sound training material development work.

HPC for computational chemistry (physics) is not justified unless large-scale problems are considered and actually solved. Key to the HPC user in this field is to see what software developers in the field never show: The large-scale case alongside the new specific problems you are to face along the way! Unless sufficiently challenging training material is presented to the user, he/she will not buy the story. In that sense, the webpage https://www.nsc.liu.se/~pla/blog/2014/01/30/vasp9k/ represents what I consider a model for VASP HPC training material (Peter Larsson, PhD - Computational Scientist - National Supercomputer Centre at Linköping University). They seem to be doing exactly the same for a huge collection of software packages within both first-principles quantum-mechanical calculations and molecular dynamics.

There is one aspect of this work that requires further explanation, ie the computational statistical mechanics direction. On the one hand, it seems obvious that molecular dynamics is a tool for computational statistical mechanics, and that in combination with rare event sampling and/or Markov-Chain Monte-Carlo provides some of the most advanced kinetic simulation methods currently available. On the other, atomistic geometry file creation, in many ocassions, goes through computational statistical mechanics methodology: From straight Monte-Carlo optimisations to "cluster expansion" (ATAT) special quasirandom structure algorithms.
It is my opinion that much of the statistical mechanics software has not gone into the HPC stage (even the computational stage!), and therefore, part of our training material development work could consist of identifying specific cases, certainly in collaboration with academics working in the computational field.
