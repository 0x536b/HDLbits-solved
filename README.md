# My solutions for HDLbits website

After running the code on HDLbits website, I copied them to a verilog file. I'm yet to write my own testbenches. I have heavily commented(mostly verbatim of HDLbits descriptions) all the codes, so that I can use them in LLMs for ICL prompting.

To check if my syntax is correct, I compile locally with verilator

```bash
cd compile
./compile <file name in src/ without ".v"> <name of the top_module>
```
