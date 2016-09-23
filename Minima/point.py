import os

def make_file(name, data):
    print("Writing " + str(data) + "inside " + name);
    f = open(name, 'w');
    f.write(data);
    f.close();

def main():
    f = open('minima', "r");
    lines = f.readlines();
    for line in lines:
        print(line);
        line = line.split(" ");
        make_file(line[0], line[1]); 

main()
