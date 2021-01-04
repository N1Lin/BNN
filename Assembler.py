import sys
a = 1  #useless
assembly="LOAD1L R2 15"#assembly language
machine_code = ""#machine instruction codes

assembly = assembly.upper()
assembly = assembly.replace(" ","")

#print(assembly[6:8])
if "NULL" in assembly:#doing nothing
    machine_code = machine_code + "0000000000000000"
elif "LOAD1L" in assembly:
    machine_code = machine_code + "00001"

    if assembly[6] == "P":
        if assembly[7:9] == "C2":  #judge the first operand
            machine_code = machine_code + "001"
        elif assembly[7:9] == "C3":  #judge the first operand
            machine_code = machine_code + "010"
        elif assembly[7:9] == "C4":  #judge the first operand
            machine_code = machine_code + "011"
        if (int(assembly[9:]) <= 255) & (int(assembly[9:]) >= 0):
            machine_code = machine_code + str.zfill(bin(int(assembly[9:]))[2:], 8)

    elif assembly[6] == "R":
        if assembly[7] == "1":
            machine_code = machine_code + "100"
        elif assembly[7] == "2":
            machine_code = machine_code + "101"
        elif assembly[7] == "3":
            machine_code = machine_code + "110"
        elif assembly[7] == "4":
            machine_code = machine_code + "111"
        if (int(assembly[8:]) <= 255) & (int(assembly[8:]) >= 0):
            machine_code = machine_code + str.zfill(bin(int(assembly[8:]))[2:], 8)
    else:
        print("error")
        sys.exit()
elif "LOAD1H" in assembly:
    machine_code = machine_code + "00010"

    if assembly[6] == "P":
        if assembly[7:9] == "C2":  # judge the first operand
            machine_code = machine_code + "001"
        elif assembly[7:9] == "C3":  # judge the first operand
            machine_code = machine_code + "010"
        elif assembly[7:9] == "C4":  # judge the first operand
            machine_code = machine_code + "011"
        if (int(assembly[9:]) <= 255) & (int(assembly[9:]) >= 0):
            machine_code = machine_code + str.zfill(bin(int(assembly[9:]))[2:], 8)

    elif assembly[6] == "R":
        if assembly[7] == "1":
            machine_code = machine_code + "100"
        elif assembly[7] == "2":
            machine_code = machine_code + "101"
        elif assembly[7] == "3":
            machine_code = machine_code + "110"
        elif assembly[7] == "4":
            machine_code = machine_code + "111"
        else:
            print("error")
            sys.exit()
        if (int(assembly[8:]) <= 255) & (int(assembly[8:]) >= 0):
            machine_code = machine_code + str.zfill(bin(int(assembly[8:]))[2:], 8)
    else:
        print("error")
        sys.exit()
elif "LOAD2" in assembly:
    machine_code = machine_code + "00011"

elif "ADD1" in assembly:
    machine_code = machine_code + "00100"
    if assembly[4:6] == "R1":
        machine_code = machine_code + "00"
    elif assembly[4:6] == "R2":
        machine_code = machine_code + "01"
    elif assembly[4:6] == "R3":
        machine_code = machine_code + "10"
    elif assembly[4:6] == "R4":
        machine_code = machine_code + "11"
    else:
        print("error")
        sys.exit()
    if (int(assembly[6:]) <= 255) & (int(assembly[6:]) >= 0):
        machine_code = machine_code + str.zfill(bin(int(assembly[6:]))[2:], 8)
elif "CMP" in assembly:
    machine_code = machine_code + "00101"
elif "JUMP" in assembly:
    machine_code = machine_code + "00110"
elif "EMPT" in assembly:
    machine_code = machine_code + "0011100000000000"
elif "BPUE_ADD" in assembly:
    machine_code = machine_code + "01000"
elif "BPUC_ADD" in assembly:
    machine_code = machine_code + "01001"
elif "BIN_OUT" in assembly:
    machine_code = machine_code + "01010"
elif "STORE" in assembly:
    machine_code = machine_code + "01011"
elif "SHIFT_UP" in assembly:
    machine_code = machine_code + "01100"
elif "IMG_SEL" in assembly:
    machine_code = machine_code + "01001" + assembly[7] + "0000000000"
else:
    print("error")
    sys.exit()
print("16'b"+machine_code)
machine_code = machine_code.replace("1","")
machine_code = machine_code.replace("0","")