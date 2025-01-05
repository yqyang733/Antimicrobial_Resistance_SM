import sys

def z_add_dis(in_f):

    with open(in_f) as f:
        f1 = f.readlines()

    for i in f1:
        z_coor = float(i[36:44]) + 2
        print(i[:36]+"{:8.3f}".format(z_coor))

def main():

    in_f = sys.argv[1]
    z_add_dis(in_f)

if __name__=="__main__":
    main() 