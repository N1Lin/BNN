import sys

with open('D:\\Lin\\Documents\\BNN\\test.TXT') as f:
    read_data = f.read()
f.close()
read_data = read_data.split('\n')
print(read_data)

assembly=read_data[1]#assembly language
machine_code = ""#machine instruction codes

assembly = assembly.upper()
assembly = assembly.split()

#print(assembly[6:8])
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
        print("error_LOAD1L1")
        sys.exit()

    if (int(assembly[2]) <= 255) & (int(assembly[2]) >= 0):
        machine_code = machine_code + str.zfill(bin(int(assembly[2]))[2:], 8)
    else:
        print("error_LOAD1L2")
        sys.exit()

elif "LOAD2" == assembly[0]:
    machine_code = machine_code + "00011"
    if "WGT" == assembly[1]:
        machine_code = machine_code + "00"
        if (int(assembly[2]) <= 3) & (int(assembly[2]) >= 0):
            machine_code = machine_code + str.zfill(bin(int(assembly[2]))[2:], 2)
            machine_code = machine_code + "0000000"
        else:
            print("error_load2wgt")
            sys.exit()
    elif "BIAS" == assembly[1]:
        machine_code = machine_code + "01000000000"
    elif "IMG" == assembly[1]:
        machine_code = machine_code + "10"
        if (int(assembly[2]) <= 4) & (int(assembly[2]) >= 0):
            machine_code = machine_code + str.zfill(bin(int(assembly[2]))[2:], 2)
            machine_code = machine_code
        else:
            print("error_load2img1")
            sys.exit()
        if (int(assembly[3]) <= 1) & (int(assembly[3]) >= 0):
            machine_code = machine_code + assembly[3]
            machine_code = machine_code + "000000"
        else:
            print("error_load2img2")
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
    if (int(assembly[2]) <= 255) & (int(assembly[2]) >= 0):
        machine_code = machine_code + str.zfill(bin(int(assembly[2]))[2:], 7)

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
    if (int(assembly[2]) <= 512) & (int(assembly[2]) >= 0):
        machine_code = machine_code + str.zfill(bin(int(assembly[2]))[2:], 9)

elif "JUMP" == assembly[0]:
    machine_code = machine_code + "00110"
    if (int(assembly[2]) <= 512) & (int(assembly[2]) >= 0):
        machine_code = machine_code + str.zfill(bin(int(assembly[2]))[2:], 11)

elif "EMPT" == assembly[0]:
    machine_code = machine_code + "0011100000000000"

elif "BPUE_ADD" == assembly[0]:
    machine_code = machine_code + "01000"
    if (int(assembly[1]) <= 6) & (int(assembly[1]) >= 0):
        machine_code = machine_code + str.zfill(bin(int(assembly[1]))[2:],3)

elif "BPUC_ADD" == assembly[0]:
    machine_code = machine_code + "01001"
    if (int(assembly[1]) <= 15) & (int(assembly[1]) >= 0):
        machine_code = machine_code + str.zfill(bin(int(assembly[1]))[2:],4)
        machine_code = machine_code + "0000000"

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
    machine_code = machine_code + assembly[5]
    machine_code = machine_code + "0000000000"

elif "SHIFT_UP" == assembly[0]:
    machine_code = machine_code + "0110000000000000"

else:
    print("error_store")
    sys.exit()

print("16'b"+machine_code)
machine_code = machine_code.replace("1","")
machine_code = machine_code.replace("0","")