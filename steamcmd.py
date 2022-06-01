import shutil
import os
import tempfile
import sys

main = './steamapps/workshop/content/'

to_copy = []

script_path = sys.argv[1] #input("Full install script path: ")
if not os.path.isfile(script_path):
    if not os.path.isfile("scripts/" + script_path):
        print("Invalid script path")
        input("")
        exit(0)
    else:
        script_path = "scripts/" + script_path
        

if len(script_path) < 1:
    print("Script path must have steam game id number at the first line")
    input("")
    exit(0)

game_id = int(open(script_path).readlines()[0])

main = main + str(game_id) + '/'

#for f in os.listdir(main):
#    shutil.rmtree(main+f)

fp = open('a.TEMP', 'w')
fp.write('login anonymous\n')

mod_downloads = 0
mod_artifacts = 0

transfer_folders = []

mods_folder = None

script_lines = open(script_path).readlines()
for line in script_lines[1:]:
    line = line.strip("\n").split("#")[0]
    if(len(line) > 0 and line.strip(" ").isdigit()):
        line = line.strip(" ")
        if(os.path.isdir(main+line) == False):
            mod_downloads += 1
            fp.write('workshop_download_item %d %s\n' % (game_id, line))
        else:
            for folder in transfer_folders:
                if os.path.isdir(main+line+'/'+folder):
                    for children in os.listdir(main+line+'/'+folder):  
                        print("Skipping mod %s for download... already cached" % children)
    elif(len(line) > 0 and line[0] == '!'):
        transfer_folders.append(line[1:])
    elif(len(line) > 0 and line[0] == '@'):
        mods_folder = line[1:]
    else:
        print(line)
        
fp.write('exit\n')
fp.close()

print("///////////")
print("///////////\n")
os.system("steamcmd.exe +runscript a.TEMP")
fldrs = os.listdir(main)
print("\n///////////")
print("///////////\n")

os.remove('a.TEMP')

if(mods_folder == None):
    print("The install path has not been specified in the script")
    mods_folder = input("Install path: ")

if(mods_folder == None):
    exit(0)

for f in fldrs:
    source_dir = os.listdir(main)[0]
    target_dir = mods_folder

    file_path = None
    for folder in transfer_folders:

        file_path = main+f+'/'+folder
        if os.path.isdir(file_path):
            mod_artifacts += len(os.listdir(file_path))-1
            for ffile in os.listdir(file_path):
                
                percent = format(float((((float(fldrs.index(f)+1))/float((len(fldrs))))*100)), ".2f")
                if(os.path.isdir(file_path+'/'+ffile)):
                    print("[%s%%] Installing %s..." % (percent, ffile))
                shutil.copytree(file_path,target_dir, dirs_exist_ok=True)
    pass
print("Done! %d mod(s) installed with %d artifacts" % (mod_downloads, mod_artifacts))
fp.close()
input("")
