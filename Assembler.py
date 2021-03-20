import sys
machine_code = ""#machine instruction codes
doc = open('D:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.sim/sim_1/behav/xsim/INST_SRAM','w')
with open('INST_FOR_REAL') as f:
    read_data = f.read()
f.close()
read_data = read_data.split('\n')
# print("depth of instruction:",end="")
# print(len(read_data))
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
            if (int(assembly[2]) <= 3) & (int(assembly[2]) >= 0):
                machine_code = machine_code + str.zfill(bin(int(assembly[2]))[2:], 2)
            else:
                print("error_LOAD2 1")
                sys.exit()
            if (int(assembly[3]) <= 7) & (int(assembly[3]) >= 0):
                machine_code = machine_code + str.zfill(bin(int(assembly[3]))[2:], 3)
            else:
                print("error_LOAD2 2")
                sys.exit()
            if (int(assembly[4]) <= 1) & (int(assembly[4]) >= 0):
                machine_code = machine_code + "000"+ assembly[4]
            else:
                print("error_LOAD2 3")
                sys.exit()
        elif "BIAS" == assembly[1]:
            machine_code = machine_code + "0100000000"
            machine_code = machine_code + assembly[2]
        elif "IMG" == assembly[1]:
            machine_code = machine_code + "10"
            if (int(assembly[2]) <= 3) & (int(assembly[2]) >= 0):
                machine_code = machine_code + str.zfill(bin(int(assembly[2]))[2:], 2)
            else:
                print("error_LOAD1L2")
                sys.exit()
            if (int(assembly[3]) <= 1) & (int(assembly[3]) >= 0):
                machine_code = machine_code + assembly[3]
                machine_code = machine_code + "00000"
                machine_code = machine_code + assembly[4]
            else:
                print("error_load2img")
                sys.exit()
        elif "PARAM" == assembly[1]:
            machine_code = machine_code + "11"
            machine_code = machine_code + "00000000"
            if (int(assembly[2]) <= 1) & (int(assembly[2]) >= 0):
                machine_code = machine_code + assembly[2]
        else:
            print("error_LOAD2")
            sys.exit()

    elif "ADD" == assembly[0]:
        machine_code = machine_code + "00100"

        if assembly[1] == "PC2":
            machine_code = machine_code + "0001"
        elif assembly[1] == 'PC3':
            machine_code = machine_code + "0010"
        elif assembly[1] == 'PC4':
            machine_code = machine_code + "0011"
        elif assembly[1] == "R1":
            machine_code = machine_code + "0100"
        elif assembly[1] == "R2":
            machine_code = machine_code + "0101"
        elif assembly[1] == "R3":
            machine_code = machine_code + "0110"
        elif assembly[1] == "R4":
            machine_code = machine_code + "0111"
        elif assembly[1] == "R5":
            machine_code = machine_code + "1000"
        elif assembly[1] == "R6":
            machine_code = machine_code + "1001"
        elif assembly[1] == "R7":
            machine_code = machine_code + "1010"
        elif assembly[1] == "R8":
            machine_code = machine_code + "1011"
        elif assembly[1] == "R9":
            machine_code = machine_code + "1100"
        elif assembly[1] == "R10":
            machine_code = machine_code + "1101"
        elif assembly[1] == "R11":
            machine_code = machine_code + "1110"
        elif assembly[1] == "R12":
            machine_code = machine_code + "1111"
        else:
            print("error_add_1")
            sys.exit()

        if (int(assembly[2]) <= 63) & (int(assembly[2]) >= -64):
            if int(assembly[2]) > 0:
                assembly[2] = bin(int(assembly[2]))[2:].rjust(7, "0")
            else:
                assembly[2] = bin(int(assembly[2]) + 1)[3:]
                assembly[2] = assembly[2].replace("1", "a")
                assembly[2] = assembly[2].replace("0", "1")
                assembly[2] = assembly[2].replace("a", "0")
                assembly[2] = assembly[2].rjust(7, "1")
            machine_code = machine_code + assembly[2]
        else:
            print("error_add_2")
            sys.exit()

    elif "CMP" == assembly[0]:
        machine_code = machine_code + "00101"
        if assembly[1] == "R1":
            machine_code = machine_code + "0000"
        elif assembly[1] == "R2":
            machine_code = machine_code + "0001"
        elif assembly[1] == "R3":
            machine_code = machine_code + "0010"
        elif assembly[1] == "R4":
            machine_code = machine_code + "0011"
        elif assembly[1] == "R5":
            machine_code = machine_code + "0100"
        elif assembly[1] == "R6":
            machine_code = machine_code + "0101"
        elif assembly[1] == "R7":
            machine_code = machine_code + "0110"
        elif assembly[1] == "R8":
            machine_code = machine_code + "0111"
        elif assembly[1] == "R9":
            machine_code = machine_code + "1000"
        elif assembly[1] == "R10":
            machine_code = machine_code + "1001"
        elif assembly[1] == "R11":
            machine_code = machine_code + "1010"
        elif assembly[1] == "R12":
            machine_code = machine_code + "1011"
        elif assembly[1] == "PC1":
            machine_code = machine_code + "1100"
        elif assembly[1] == "PC2":
            machine_code = machine_code + "1101"
        elif assembly[1] == "PC3":
            machine_code = machine_code + "1110"
        elif assembly[1] == "PC4":
            machine_code = machine_code + "1111"
        
        else:
            print("Error_CMp1")
            sys.exit()
        if (int(assembly[2]) < 128) & (int(assembly[2]) >= 0):
            machine_code = machine_code + str.zfill(bin(int(assembly[2]))[2:], 7)
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

    elif "BPUEADD" == assembly[0]:
        machine_code = machine_code + "01000"
        if (int(assembly[1]) <= 6) & (int(assembly[1]) >= 0):
            machine_code = machine_code + str.zfill(bin(int(assembly[1]))[2:], 3)
        else:
            print("error_bpueadd")
            sys.exit()
        if (int(assembly[2]) <= 1) & (int(assembly[2]) >= 0):
            machine_code = machine_code + assembly[2]
        else:
            print("error_bpueadd2")
            sys.exit()
        machine_code = machine_code + "0000000"

    elif "BPUCADD" == assembly[0]:
        machine_code = machine_code + "01001"
        if (int(assembly[1]) <= 15) & (int(assembly[1]) >= 0):
            machine_code = machine_code + str.zfill(bin(int(assembly[1]))[2:], 4)
        else:
            print("error_bpucadd")
            sys.exit()
        machine_code = machine_code + "0000000"

    elif "BNNOUT" == assembly[0]:
        machine_code = machine_code + "01010"
        if len(assembly)>1:
            if "POOL" == assembly[1]:
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

    elif "SHIFTUP" == assembly[0]:
        machine_code = machine_code + "0110000000000000"

    elif "MOV" == assembly[0]:
        machine_code = machine_code + "01101"
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
        elif assembly[1] == "PC1":
            machine_code = machine_code + "000"
        else:
            print("error_MOV")
            sys.exit()
        if assembly[2] == "PC2":
            machine_code = machine_code + "001"
        elif assembly[2] == 'PC3':
            machine_code = machine_code + "010"
        elif assembly[2] == 'PC4':
            machine_code = machine_code + "011"
        elif assembly[2] == "R1":
            machine_code = machine_code + "100"
        elif assembly[2] == "R2":
            machine_code = machine_code + "101"
        elif assembly[2] == "R3":
            machine_code = machine_code + "110"
        elif assembly[2] == "R4":
            machine_code = machine_code + "111"
        elif assembly[2] == "PC1":
            machine_code = machine_code + "000"
        else:
            print("error_MOV")
            sys.exit()
        machine_code = machine_code + "00000"

    elif "LOAD3L" == assembly[0]:
        machine_code = machine_code + "01110"
        if assembly[1] == "R6":
            machine_code = machine_code + "001"
        elif assembly[1] == "R7":
            machine_code = machine_code + "010"
        elif assembly[1] == "R8":
            machine_code = machine_code + "011"
        elif assembly[1] == "R9":
            machine_code = machine_code + "100"
        elif assembly[1] == "R10":
            machine_code = machine_code + "101"
        elif assembly[1] == "R11":
            machine_code = machine_code + "110"
        elif assembly[1] == "R12":
            machine_code = machine_code + "111"
        elif assembly[1] == "R5":
            machine_code = machine_code + "000"
        else:
            print("error_LOAD3L1")
            sys.exit()

        if (int(assembly[2]) <= 255) & (int(assembly[2]) >= 0):
            machine_code = machine_code + str.zfill(bin(int(assembly[2]))[2:], 8)
        else:
            print("error_LOAD3L2")
            sys.exit()

    elif "LOAD3H" == assembly[0]:
        machine_code = machine_code + "01111"

        if assembly[1] == "R6":
            machine_code = machine_code + "001"
        elif assembly[1] == "R7":
            machine_code = machine_code + "010"
        elif assembly[1] == "R8":
            machine_code = machine_code + "011"
        elif assembly[1] == "R9":
            machine_code = machine_code + "100"
        elif assembly[1] == "R10":
            machine_code = machine_code + "101"
        elif assembly[1] == "R11":
            machine_code = machine_code + "110"
        elif assembly[1] == "R12":
            machine_code = machine_code + "111"
        elif assembly[1] == "R5":
            machine_code = machine_code + "000"
        else:
            print("error_LOAD3H1")
            sys.exit()

        if (int(assembly[2]) <= 255) & (int(assembly[2]) >= 0):
            machine_code = machine_code + str.zfill(bin(int(assembly[2]))[2:], 8)
        else:
            print("error_LOAD3H2")
            sys.exit()

    if len(machine_code) == 16:
        print(machine_code)
        print(machine_code, file=doc)
        machine_code = machine_code.replace("1", "")
        machine_code = machine_code.replace("0", "")
    else:
        print("error_length:"+str(len(machine_code)) + str(assembly))
        sys.exit()
