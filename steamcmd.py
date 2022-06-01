import shutil
import os
import tempfile

main = './steamapps/workshop/content/'

script_path = input("Full install script path: ")
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

mods_folder = input("Folder to install mods to: ")

game_id = int(open(script_path).readlines()[0])

main = main + str(game_id) + '/'

fp = open('a.TEMP', 'w')
fp.write('login anonymous\n')

transfer_folders = []

script_lines = open(script_path).readlines()
for line in script_lines[1:]:
    line = line.strip("\n").split("#")[0]
    if(len(line) > 0 and line.isdigit()):
        fp.write('workshop_download_item %d %s\n' % (game_id, line))
    elif(len(line) > 0 and line[0] == '!'):
        transfer_folders.append(line[1:])
fp.write('exit\n')
fp.close()

print("///////////")
print("///////////\n")
os.system("steamcmd.exe +runscript a.TEMP")
fldrs = os.listdir(main)
print("\n///////////")
print("///////////\n")

os.remove('a.TEMP')

for f in fldrs:
    source_dir = os.listdir(main)[0]
    target_dir = mods_folder

    file_path = None
    for folder in transfer_folders:
        file_path = main+f+'/'+folder
        if os.path.isdir(file_path):
            for ffile in os.listdir(file_path):
                percent = format(float((((float(fldrs.index(f)+1))/float((len(fldrs))))*100)), ".2f")
                if(os.path.isdir(file_path+'/'+ffile)):
                    print("[%s%%] Installing %s..." % (percent, ffile))
                shutil.copytree(file_path,target_dir, dirs_exist_ok=True)
    pass
print("Done! %d mod(s) installed" % len(fldrs))
fp.close()
input("")
