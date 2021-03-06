#!/bin/bash
mkdir automizer
cp -a ../../source/BA_SiteRepository/target/products/CLI-E3/linux/gtk/x86_64/* automizer/
cp ../LICENSE* automizer/
cp ../../examples/toolchains/TraceAbstractionC.xml automizer/
cp ../../examples/toolchains/BuchiAutomizerCWithBlockEncoding.xml automizer/
cp AutomizerSvcomp.py automizer/
cp Ultimate.ini automizer/
cp AutomizerSvcompMemsafety.settings automizer/
cp AutomizerSvcompSafety.settings automizer/
cp BuchiAutomizerSvcomp.settings automizer/
zip UltimateCommandline.zip -r automizer/*
