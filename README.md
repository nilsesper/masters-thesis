# Nils' Master's Thesis 

Repository with the files of my Master's Thesis.  

Title of the thesis:  
**Integration of an SiPM-Based Scintillation Detector into the Phase-2 CMS Drift Tube Readout Chain Using the lpGBT ASIC**  

Submission:  
Monday, 22th December 2025

The PDF version of the submitted version of the thesis can be found at:  
[`run/main.pdf`](run/main.pdf)

Defense:
Friday, 19th December 2025

The PDF version of the defense / talk can be found at:  
[`talk/nils_master_talk_19-12-2025.pdf`](talk/nils_master_talk_19-12-2025.pdf)

---

Software & firmware used for data recording & analysis:  
- Firmware on Zynq: Custom-built Vivado project using several self-developed IP cores at repo `ref-detector-tdc-array`, branch `new-carrier_testing` ( https://git.rwth-aachen.de/muon-hodoscope/ref-detector-tdc-array/-/commit/7001c6a0 )
- Software on Zynq: Repo `zynq_read-out_software` ( https://gitlab.cern.ch/nesper/zynq_read-out_software/-/commit/2c7bfc1d )
- Offline software for analysis: Repo `dt_scint_analysis_tools` ( https://gitlab.cern.ch/nesper/dt_scint_analysis_tools/-/commit/9408d4b1 )

Data presented in thesis:  
The presented data directories are not included in the repository but offline due to their size.  
Also see the file `thesis_commands.txt` inside the `dt_scint_analysis_tools` repo, where all executed commands for analysis and plotting are documented.  
- Main dataset: `thesis_data_files/large_combined_data_run/` (data config file: `thesis_data_files/large_combined_data_run/data_config_file_finished.txt`)
- Small dataset to illustrate scintillator readout systematic effects: `thesis_data_files/scint_testing/` (data config file: `thesis_data_files/scint_testingdata_config_file_dead0.txt`)
- Simulated dataset: `thesis_data_files/sim` (data config file: `data_config_file_finished.txt`)

