#!/bin/bash

cd ./m5/datasets/rconsortiumpilot3

git clone https://github.com/RConsortium/submissions-pilot3-adam.git --branch 174_updates_to_adrg --single-branch ./submission-pilot3-adam --depth 1

mv ./submission-pilot3-adam/submission/sdtm/*.xpt ./submission-pilot3-adam/submission/sdtm/define.* ./tabulations/sdtm
mv ./submission-pilot3-adam/submission/adam/*.xpt ./submission-pilot3-adam/submission/adam/define* ./submission-pilot3-adam/vignettes/adrg.pdf './submission-pilot3-adam/submission/adam/adam-pilot-3.xlsx' ./analysis/adam/datasets
mv ./submission-pilot3-adam/submission/programs/ad*.r ./submission-pilot3-adam/submission/programs/tlf*.r ./analysis/adam/programs
mv ./submission-pilot3-adam/renv.lock ./analysis/adam/programs/renv-lock.txt

rm -rf ./submission-pilot3-adam