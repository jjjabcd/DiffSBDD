#!/bin/bash

export PYTHONPATH=$PYTHONPATH:$(pwd)/src

python src/inpaint.py \
    checkpoints/crossdocked_ca_cond.ckpt \
    --pdbfile ../dataset/target/6s89.pdb \
    --outfile ./results/6s89_inpaint.sdf \
    --ref_ligand A:1101 \
    --fix_atoms ../dataset/molecule/Conformer3D_COMPOUND_CID_241_noH.sdf \
    --add_n_nodes 10 \
    --device cuda:0
