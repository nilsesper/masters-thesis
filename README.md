# Nils' Master's Thesis 

Repository with the files of my Master's Thesis.  

_Title of the thesis:_  
**Integration of an SiPM-Based Scintillation Detector into the Phase-2 CMS Drift Tube Readout Chain Using the lpGBT ASIC**  

_Supervisors:_  
Prof. Dr. Alexander Schmidt, Physics Institute III A, RWTH Aachen University  
Apl. Prof. Dr. Oliver Pooth, Physics Institute III B, RWTH Aachen University  
Dr. Dmitry Eliseev, Physics Institute III A, RWTH Aachen University  
Dr. Markus Merschmeyer, Physics Institute III A, RWTH Aachen University  

_Submission:_  
Monday, 22th December 2025  
The PDF version of the submitted version of the thesis can be found at: [`submission/Masterarbeit_Esper.pdf`](submission/Masterarbeit_Esper.pdf)

_Defense talk:_  
Friday, 19th December 2025  
The PDF version of the defense / talk can be found at: [`talk/nils_master_talk_19-12-2025.pdf`](talk/nils_master_talk_19-12-2025.pdf)  

<br>
<br>

---

<br>
<br>
<br>

_Hardware, software & firmware used for data recording & analysis:_  
- Scintillator SiPM detector: Designed by E. Ehlert, C. Presser, D. Eliseev in previous thesis projects ( https://web.physik.rwth-aachen.de/user/hebbeker/theses/ehlert_bachelor.pdf , https://www.institut3a.physik.rwth-aachen.de/global/show_document.asp?id=aaaaaaaacvdhcay )  
    - Hardware casing & Scintillator  
    - SiPM frontend board for one device ( https://git.rwth-aachen.de/muon-hodoscope/hardware/sipm-front-end )  
    - Backbone board to power 8 frontends ( https://git.rwth-aachen.de/muon-hodoscope/hardware/back_bone )  
- Scintillator readout system:  
    - Trenz SoM: Commerical AMD Xilinx Zynq SoM with FPGA - Trentz TE0820 Rev3 ( https://wiki.trenz-electronic.de/display/PD/TE0820+TRM )  
    - Carrier board: Newly developed by C. Presser, D. Eliseev ( https://git.rwth-aachen.de/muon-hodoscope/hardware/hodoscope_fpga_carrier )  
    - lpGBT Mezzanine: Newly developed by D. Eliseev, C. Presser ( https://git.rwth-aachen.de/muon-hodoscope/hardware/lpgbt-mezzanine )  
- Firmware on Zynq: Custom-built Vivado project using several self-developed IP cores at repo `ref-detector-tdc-array`, branch `new-carrier_testing` ( https://git.rwth-aachen.de/muon-hodoscope/ref-detector-tdc-array/-/commit/7001c6a0 )  
- Software on Zynq: Repo `zynq_read-out_software` ( https://gitlab.cern.ch/nesper/zynq_read-out_software/-/commit/2c7bfc1d )  
- HTG box (HTG-940 evaluation board) backend with Antonio's firmware modified by me to account for the data path of the lpGBT Mezzanine `obdt_backend_mod` ( https://gitlab.cern.ch/nesper/obdt_backend_mod/-/commit/e7057fc7 )
- Offline software for analysis: Repo `dt_scint_analysis_tools` ( https://gitlab.cern.ch/nesper/dt_scint_analysis_tools/-/commit/9408d4b1 )  

_Data presented in thesis:_  
The raw data used in the thesis is appended to this repository in the [`dt_scint_analysis_data/`](dt_scint_analysis_data/) directory.  
In the file `thesis_commands.txt`, (almost) all executed commands for analysis and plotting are documented.  
The actual raw data is included in the repository as zip file `raw_data_files.zip`.  
- Main dataset: `thesis_data_files/large_combined_data_run/` (data config file: `thesis_data_files/large_combined_data_run/data_config_file_finished.txt`)  
- Small dataset to illustrate scintillator readout systematic effects: `thesis_data_files/scint_testing/` (data config file: `thesis_data_files/scint_testingdata_config_file_dead0.txt`)  
- Simulated dataset: `thesis_data_files/sim` (data config file: `data_config_file_finished.txt`)  
- Plus small other datasets & calibration measurements which are included in the zip file  

