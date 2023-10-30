# Softprocessor RISCV-EC for Edge Computing Applications
The first Ecuadorian open-source softprocessor, RISCV-EC, based on the single-core RISC-V architecture.

![image](https://github.com/guianmon99/RISCV-EC/assets/12642226/2c7c6224-93bf-4924-9490-50affb891e3e)


## Abstract
Hard-processors are those that have their architecture defined from the factory and this makes them less flexible in the face of architecture changes while softprocessors have the advantage of being modifiable in their architecture allowing continuous improvements to be made in the design if they are Open-source Software. In this paper, we propose a design of the first Ecuadorian open-source software softprocessor called RISCV-EC, which is based on a RISC-V single core architecture. In addition, a performance comparison is carried out between the proposed RISCV-EC softprocessor and other processors such as AVR ATMEGA328P, ARM Cortex M1 of the Raspberry Pi Pico and ARM Cortex A9 Zynq-7000 of Xilinx. This comparison consists of estimating the running time for the Fibonacci sequence algorithm increasing the number of iterations from 0 to 500. Owing to the fact that the RISCV-EC softprocessor is implemented in the FPGA Zynq-7000 SoC - Xilinx, same clock was used as the other processors, in such a way that the comparison is a reflection of the architecture improvement and not of an overclock. The Fibonacci series was programmed on all processors using the same Assembler programming language (ASM) to avoid bias in the results by the compilers. Numerical results show that the RISCV-EC softprocessor has a better performance than the ATMEGA328P AVR processor for any given number of iterations of the Fibonacci series. In the case of the ARM Cortex M1 processor, the RISCV-EC processor is better for a number of iterations greater than 300 of the Fibonacci series. Finally, RISCV-EC presents better running time than the ARM Cortex A9 Zynq-700 processor only for a number of iterations lower than 18.

### The compared processors and their clock frequencies are as follows:
- **RISCV-EC: 50MHz**
- ATmega 328p (Arduino Uno): 16MHz
- ARM Cortex M0+ (Raspberry Pi Pico,): 125MHz
- ARM Cortex A9 (Zynq-7000): 650MHz 
    
## ⭐ When using this resource, please cite the original publication:
- [Montesdeoca, G., Asanza, V., Estrada, R., Valeriano, I., Muneeb, M.A. (2023). Softprocessor RISCV-EC for Edge Computing Applications. In: Barolli, L. (eds) Innovative Mobile and Internet Services in Ubiquitous Computing . IMIS 2023. Lecture Notes on Data Engineering and Communications Technologies, vol 177. Springer, Cham. https://doi.org/10.1007/978-3-031-35836-4_23](https://link.springer.com/chapter/10.1007/978-3-031-35836-4_23)
