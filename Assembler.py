import sys
a = 1  #useless
assembly="LOAD1l 5 16"#assembly language
machine_code = ""#machine instruction codes

assembly = assembly.upper()
assembly = assembly.replace(" ","")

print(bin(int(assembly[6]))[2:])
print(assembly[7:])
if "NULL" in assembly:#doing nothing
    machine_code = machine_code + "0000000000000000"
elif "LOAD1L" in assembly:
    machine_code = machine_code + "00001"
    给她改成R1R2之类的
    if (int(assembly[6]) <= 7) & (int(assembly[6]) >= 0):  #judge the first operand
        machine_code = machine_code + bin(int(assembly[6]))[2:]
    else:  #beyond the boundary
        print("error")
        sys.exit()
    if (int(assembly[7:]) <= 255) & (int(assembly[7:]) >= 0):
        machine_code = machine_code + str.zfill(bin(int(assembly[7:]))[2:], 8)
elif "LOAD1H" in assembly:
    machine_code = machine_code + "00010"
    if (int(assembly[6]) <= 7) & (int(assembly[6]) >= 0):  # judge the first operand
        machine_code = machine_code + bin(int(assembly[6]))[2:]
    else:  # beyond the boundary
        print("error")
        sys.exit()
    if (int(assembly[7:]) <= 255) & (int(assembly[7:]) >= 0):
        machine_code = machine_code + str.zfill(bin(int(assembly[7:]))[2:], 8)
elif "CMP" in assembly:

elif "JUMP" in assembly:
    print("yes")
elif "EMPT" in assembly:
    print("yes")
elif "BPUE_ADD" in assembly:
    print("yes")
elif "BPUC_ADD" in assembly:
    print("yes")
elif "BIN_OUT" in assembly:
    print("yes")
elif "STORE" in assembly:
    print("yes")
elif "SHIFT_UP" in assembly:
    print("yes")
elif "IMG_SEL" in assembly:
    print("yes")
else:
    print("error")
    sys.exit()
print("16'b"+machine_code)
machine_code = machine_code.replace("1","")
machine_code = machine_code.replace("0","")
print("16'b"+machine_code)