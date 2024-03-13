# CCTA

A combinational circuite that computes either the sum or the difference of its input vectors based on the value of the ctrl signal. 
When rst is active, the output is reset to 0.

### Module Specification

Takes three 4-bit vector inputs: A, B, and C

Produces a 5-bit output: q based on 1-bit control signal : ctrl and rst

When rst is 1, q is set to 0. 

When ctrl is 0, the output q is the sum of A and B.

When ctrl is 1, the output q is the difference of A and C.

### Testbench Specification 

The testbench initializes the inputs: A = 4’h0 (binary 0000), B = 4’h3 (binary 0011), C = 4’h5 (binary 0101), rst = 0 (inactive) and ctrl = 0 (operation mode)

After a delay of 10 time units, it changes the control signal: ctrl = 1 (difference mode)

Then, it activates the reset signal: rst = 1 (reset mode)

### Waveform Viewer
Reflects the testbench on ccta module

When ctrl = 0 and rst = 0, the output is 3, which is the sum of A (4'h0) and B (4'h3). (Focus on the yellow line and the values on the left in Figure below)
![image](https://github.com/tenweilin/HW02-VerilogCoding-5/assets/158492130/446b493e-d259-4f35-982f-6f840c5fe5c2)
