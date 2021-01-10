import sys

machine_code = ""#machine instruction codes
with open('D:\\Lin\\Documents\\BNN\\test-imgsel.TXT') as f:
    read_data = f.read()
f.close()
read_data = read_data.split('\n')
print("depth of instruction:",end="")
print(len(read_data))
for assembly in read_data:
    assembly = assembly.upper()
    assembly = assembly.split()
    if len(assembly) == 0:
        continue
    if "NULL" == assembly[0]:#doing nothing
        machine_code = machine_code + "0000000000000000"

    elif "LOAD1L" == assembly[0]:
        machine_code = machine_code + "00001"
        if assembly[1] == "PC2":
            machine_code = machine_code + "001"
        elif assembly[1] == "PC3":
            machine_code = machine_code + "010"
        elif assembly[1] == "PC4":
            machine_code = machine_code + "011"
        elif assembly[1] == "R1":
            machine_code = machine_code + "100"
        elif assembly[1] == "R2":
            machine_code = machine_code + "101"
        elif assembly[1] == "R3":
            machine_code = machine_code + "110"
        elif assembly[1] == "R4":
            machine_code = machine_code + "111"
        else:
            print("error_LOAD1L1")
            sys.exit()

        if (int(assembly[2]) <= 255) & (int(assembly[2]) >= 0):
            machine_code = machine_code + str.zfill(bin(int(assembly[2]))[2:], 8)
        else:
            print("error_LOAD1L2")
            sys.exit()

    elif "LOAD1H" == assembly[0]:
        machine_code = machine_code + "00010"

        if assembly[1] == "PC2":
            machine_code = machine_code + "001"
        elif assembly[1] == "PC3":
            machine_code = machine_code + "010"
        elif assembly[1] == "PC4":
            machine_code = machine_code + "011"
        elif assembly[1] == "R1":
            machine_code = machine_code + "100"
        elif assembly[1] == "R2":
            machine_code = machine_code + "101"
        elif assembly[1] == "R3":
            machine_code = machine_code + "110"
        elif assembly[1] == "R4":
            machine_code = machine_code + "111"
        else:
            print("error_LOAD1H1")
            sys.exit()

        if (int(assembly[2]) <= 255) & (int(assembly[2]) >= 0):
            machine_code = machine_code + str.zfill(bin(int(assembly[2]))[2:], 8)
        else:
            print("error_LOAD1H2")
            sys.exit()

    elif "LOAD2" == assembly[0]:
        machine_code = machine_code + "00011"
        if "WGT" == assembly[1]:
            machine_code = machine_code + "00"
            machine_code = machine_code + "00000000" + assembly[2]
        elif "BIAS" == assembly[1]:
            machine_code = machine_code + "0100000000"
            machine_code = machine_code + assembly[2]
        elif "IMG" == assembly[1]:
            machine_code = machine_code + "10"
            if (int(assembly[2]) <= 1) & (int(assembly[2]) >= 0):
                machine_code = machine_code + assembly[2]
                machine_code = machine_code + "0000000"
                machine_code = machine_code + assembly[3]
            else:
                print("error_load2img")
                sys.exit()
        else:
            print("error_LOAD2")
            sys.exit()

    elif "ADD1" == assembly[0]:
        machine_code = machine_code + "00100"

        if assembly[1] == "PC2":
            machine_code = machine_code + "001"
        elif assembly[1] == 'PC3':
            machine_code = machine_code + "010"
        elif assembly[1] == 'PC4':
            machine_code = machine_code + "011"
        elif assembly[1] == "R1":
            machine_code = machine_code + "100"
        elif assembly[1] == "R2":
            machine_code = machine_code + "101"
        elif assembly[1] == "R3":
            machine_code = machine_code + "110"
        elif assembly[1] == "R4":
            machine_code = machine_code + "111"
        else:
            print("error_add1")
            sys.exit()

        if (int(assembly[2]) <= 127) & (int(assembly[2]) >= -128):
            if int(assembly[2]) > 0:
                assembly[2] = bin(int(assembly[2]))[2:].rjust(8, "0")
            else:
                assembly[2] = bin(int(assembly[2]) + 1)[3:]
                assembly[2] = assembly[2].replace("1", "a")
                assembly[2] = assembly[2].replace("0", "1")
                assembly[2] = assembly[2].replace("a", "0")
                assembly[2] = assembly[2].rjust(8, "1")
            machine_code = machine_code + assembly[2]
        else:
            print("error_add2")
            sys.exit()

    elif "CMP" == assembly[0]:
        machine_code = machine_code + "00101"
        if assembly[1] == "PC1":
            machine_code = machine_code + "00"
        elif assembly[1] == "PC2":
            machine_code = machine_code + "01"
        elif assembly[1] == "PC3":
            machine_code = machine_code + "10"
        elif assembly[1] == "PC4":
            machine_code = machine_code + "11"
        else:
            print("Error_CMp1")
            sys.exit()
        if (int(assembly[2]) <= 512) & (int(assembly[2]) >= 0):
            machine_code = machine_code + str.zfill(bin(int(assembly[2]))[2:], 9)
        else:
            print("Error_CMp2")
            sys.exit()
    elif "JUMP" == assembly[0]:
        machine_code = machine_code + "00110"
        if (int(assembly[1]) <= 512) & (int(assembly[1]) >= 0):
            machine_code = machine_code + str.zfill(bin(int(assembly[1]))[2:], 11)
        else:
            print("Error_JUMP")
            sys.exit()
    elif "EMPT" == assembly[0]:
        machine_code = machine_code + "0011100000000000"

    elif "BPUE_ADD" == assembly[0]:
        machine_code = machine_code + "01000"
        if (int(assembly[1]) <= 1) & (int(assembly[1]) >= 0):
            machine_code = machine_code + assembly[1]
        else:
            print("error_bpueadd")
            sys.exit()
        machine_code = machine_code + "0000000000"

    elif "BPUC_ADD" == assembly[0]:
        machine_code = machine_code + "0100100000000000"

    elif "BNN_OUT" == assembly[0]:
        machine_code = machine_code + "01010"
        if len(assembly)>1:
            if ("POOL" == assembly[1]):
                machine_code = machine_code + "1"
                if (int(assembly[2]) <= 3) & (int(assembly[2]) >= 0):
                    machine_code = machine_code + str.zfill(bin(int(assembly[2]))[2:],2)
                    machine_code = machine_code + "00000000"
                else:
                    print("error_binout")
                    sys.exit()
                machine_code = machine_code + ""
        else:
            machine_code = machine_code + "00000000000"

    elif "STORE" == assembly[0]:
        machine_code = machine_code + "01011"
        if (int(assembly[1]) <= 1) & (int(assembly[1]) >= 0):
            machine_code = machine_code + assembly[1]
        else:
            print("error_STORE")
            sys.exit()
        if (int(assembly[2]) <= 1) & (int(assembly[2]) >= 0):
            machine_code = machine_code + assembly[2]
        else:
            print("error_STORE2")
            sys.exit()
        machine_code = machine_code + "000000000"

    elif "SHIFT_UP" == assembly[0]:
        machine_code = machine_code + "0110000000000000"

    if len(machine_code) == 16:
        print(machine_code)
        machine_code = machine_code.replace("1", "")
        machine_code = machine_code.replace("0", "")
    else:
        print("error_length:"+str(len(machine_code)))
        sys.exit()
