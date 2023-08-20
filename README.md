
# computationalchemistry

The work (training material) carried out on a set of first-principles quantum mechanical and molecular dynamics programs is summarised in the form of HPC submission scripts, as well as of tables describing the actual progress with the packages, and of the full input/output file set for specific calculations. Therefore, the main point of this repository is that:

1. Slurm job submission scripts for calculations with the various sofware packages have been uploaded.
1. Tables depicting the progress achieved with the various computational chemistry programs are regularly updated
   - The first few uploaded tables were enclosed as a single document.
   - At some point, I decided to extend their size, and ended up uploading separate documents for each table.
1. Compressed tar files containing the complete set of input and output files for a calculation are continously added.

At the point of comprehensively starting with the third point in the list, the `scp` command to/from "Genius" has stopped working. Therefore, the various tar files are being prepared on Genius for future transfer.
 
Eventually the software list will extend by including to-be-installed ab-initio/MD packages and pre- and post- processing tools.
On the one hand, simple packages that read the input structures in well known formats (CIF - pdb - xyz - POSCAR) and produce outputs that become input files of the correct format for the specific programs, are envisioned (cif2cell). On the other, packages that generate supercells as well as defects of different dimensionality are being considered: point defects, dislocations, grain boundaries and surfaces (ASE). Moreover, atomistic geometries crucial for the current materials science ecosystem require more involved input geometry processing: disordered/amorphous solids and glasses, solid solutions, simultaneous multi-phase models, polycrystalline models, bubble nucleation models. The *atomic simulation environment* is a good example of such tools, as well as its big-data driven high-troughput computational materials science sister package (the *atomic simulation recipes* (ASR)). Other HTCMS packages (aiida - materials cloud; materials genome - pymatgen, JARVIS, AFLOW; pyiron) - are being looked into. At this stage, we are certainly not talking about simple tools, HTCMS corresponding to a full infrastructure including a large collection of tools for data mining, AI (ML potentials), pre- and post-processing, databases of materials, HPC and online high-througput ab-initio/MD/kinetics calculations. Given the complexity of the various scientific directions to be followed (HTCMS is probably the best example), it is my opinion that at some point, it becomes unavoidable keeping in touch with academics working in the respective fields, if you intend to keep doing sound training material development work. The way I see it, this work would benefit from contact with people working in the fields:

1. Theoretical Materials Science
1. Big-Data driven High-Throughput Computational Materials Science
1. Computational Statistical Mechanics

HPC for computational chemistry (physics) is not justified unless large-scale problems are considered and actually solved. Key to the HPC user in this field is seeing what software developers never show: The large-scale case alongside the new specific problems you are to face. Unless sufficiently challenging training material is presented to the user, he/she will not buy the story. In that sense, the webpage https://www.nsc.liu.se/~pla/blog/2014/01/30/vasp9k/ represents what I consider a model for VASP HPC training material (Peter Larsson, PhD - Computational Scientist - National Supercomputer Centre at Linköping University). They seem to be doing that for a huge collection of software packages within both first-principles quantum-mechanical calculations and molecular dynamics. On the other hand, the ENCCS (National Competence Centre Sweden) consortium organises fully-fledged HPC computational materials workshops as free training events, in collaboration with the MAX Centre of Excellence ("Efficient materials modelling on HPC with QUANTUM ESPRESSO, Yambo and BigDFT", November 14-17 2022; https://enccs.se/events/2022-11-efficient-materials-modelling/), another example of training activities for the National Competence Centre Belgium.

There is one aspect of this work that requires further clarification, ie the computational statistical mechanics direction. On the one hand, it seems obvious that molecular dynamics is a tool for computational statistical mechanics, and that in combination with rare event sampling and/or Markov-Chain Monte-Carlo provides some of the most advanced kinetic simulation methods currently available. On the other, atomistic geometry file creation, in many ocassions, goes through computational statistical mechanics methodology: From straight Monte-Carlo optimisations to "cluster expansion" (ATAT) special quasirandom structure algorithms.
It is my opinion that much of the statistical mechanics software has not gone into the HPC stage (even the computational stage!), and therefore, part of our training material development work could consist in identifying specific cases, certainly in collaboration with academics working in the computational field.

A range of personal interests lies behind this description. In case we decide to get started on running calculations with the different software packages other than the examples the various distributions provide, this non-exhaustive list should serve as a starting point:

 - *Hydrated proteins*:
   According to the information on geometry files within the PDB databases, when those correspond to proteins in water solution, they do not include          explcit water molecules. On the other hand, there exist critical details regarding the chemical terminations of protein groups, including zwitterionic 
   state, acidic H state, and H-bonds (including Lewis-acid H-bond coordination of Nitrogen atoms). Essentially, the presence of H atoms in PDB protein geometries is quite capricious (in fact it depens a lot on the 
   physical technique), in the sense that some people include them, although not others [^1]. According to the above, the off-the-shelf PDB protein file
   needs to be modified before running MD/ab-initio calculations:

    1. The Hydrogen addition process could follow the procedure in [^2]
    2. The water addition process, chemical termination rearrangement and box build-up for calculation would follow the procedure in 







[^1]: https://www.umass.edu/microbio/chime/beta/x1.07/protexpl/help_hyd.htm
[^2]: http://swift.embl-heidelberg.de/servers2/
   
