from re import A
import shutil
import os
import tempfile
import sys
import math

def dir(path):
    path = path.replace(os.sep, "/")
    return path+"/" if path[-1] != "/" else path

def rel(path):
    return dir(os.path.dirname(__file__))+path

script_path = None
install_path = None
install_in_script = False
id_in_script = False
copy_dirs = []
content_path = rel("steamcmd/steamapps/workshop/content/")
game_id = 0
temp_name = "TEMP.txt"
mod_count = 0
downloaded_mods = 0

def cls():
    os.system('cls' if os.name=='nt' else 'clear')

def exists_g(path):
    if os.path.isfile(path) or os.path.isdir(path):
        return True
    return False

def exists(path):
    if(exists_r(path) or exists_g(path)):
        return True
    return False

def exists_r(path):
    x = False
    rel = dir(os.path.dirname(__file__))+path
    if os.path.isfile(rel) or os.path.isdir(rel):
        return True
    return False

def path(_path):
    if(exists_g(_path) == False):
        return rel(_path) if exists_r(rel(_path)) else panic("Invalid path %s" % _path)
    return _path

def panic(msg):
    print(msg)
    input("")
    exit(0)

class Mod:
    def __init__(self, _id, _artifacts):
        self.id = _id
        self.artifacts = _artifacts

def install():
    global game_id
    global content_path

    copy_dirss = []

    ids_to_download = []
    download_path = ""

    cls()

    while(1):
        r = input("install > ")
        i = r.split()
        c = content_path

        if(i[0] == "exit_install"):
            return
        elif(i[0] == "set_id"):
            game_id = int(i[1])
        elif(i[0] == "set_path"):
            download_path = r.split("\"")[1]
        elif(i[0] == "download"):
            ids_to_download.append(int(i[1]))
        elif(i[0] == "set_copy"):
            copy_dirss += r.split("\"")[1]
        elif(i[0] == "exe"):
            game_id = 108600
            content_path += str(game_id) + '/'

            copy_dirss.append("mods")
            ids_to_download.append(2760742937)
            download_path = "test"

            f = open(temp_name, "w")
            f.write("login anonymous\n")
            for id in ids_to_download:
                f.write("workshop_download_item 108600 %d\n" % id)
            f.write("exit")
            f.close()
            os.system(rel("steamcmd/steamcmd.exe +runscript %s" % "../"+temp_name))

            for folder in os.listdir(content_path):
                if(int(folder) in ids_to_download):
                    for copy_dirr in copy_dirss:
                        if(copy_dirr in os.listdir(content_path+folder)):
                            shutil.copytree(dir(content_path+folder)+copy_dirr, rel(download_path), dirs_exist_ok=True)
            content_path = c
        elif(i[0] == "cls" or i[0] == "clear"):
            cls()

        elif(i[0] == "help"):
            print("install commands:")
            print("    - exit_install")
            print("    - set_id   (id)   (sets target id for downloads)")
            print("         usage: set_id 108600\n")
            print("    - set_path (path) (sets target path for downloads)")
            print("         usage: set_path \"C:/Mods/\"\n")
            print("    - download (id)   (adds a workshop id to the download list)")
            print("         usage: download 2760542837\n")
            print("    - exe             (downloads mods from set ids, to the set paths)")
            print("         usage: exe")
            

    pass

def run_script():
    global script_path
    global install_path
    global install_in_script
    global id_in_script
    global copy_dirs
    global content_path
    global game_id
    global temp_name
    global mod_count
    global downloaded_mods

    cls()
    print("script path: ")
    script_path = input("run_script > ")
    if(exists(script_path) == False):
        panic("\nERROR: no such file %s" % script_path)
    
    if(exists_r(script_path)):
        script_path = rel(script_path)

    mods = []
    ids = []

    cls()

    script_file = open(script_path, "r")
    for line in script_file.readlines():
        line = line.strip("\n").split("#")[0]

        if(line.startswith("id=") and line[3:].isdigit()):
            id_in_script = True
            game_id = int(line[3:])
            content_path += dir(str(game_id))
            pass
        elif(line.startswith("copy=") and len(line) > 5):
            copy_dirs.append(line[5:])
            pass
        elif(line.startswith("install=") and len(line) > 8):
            install_in_script = True
            install_path = line[8:]

            if(line[8:].startswith("@user")):
                install_path = dir("C:/Users/"+os.getlogin()+"/"+line[13:])
            pass
        elif(line.strip(" ").isdigit()):
            ids.append(int(line))
    
    if(install_in_script == False):
        print("You did not specify an install path in the script, type one now:")
        install_path = input("> ")
            

    temp = open(temp_name, "w")
    temp.write("login anonymous\n")
    for id in ids:
        if(str(id) not in os.listdir(content_path)):
            temp.write("workshop_download_item %d %d\n" % (game_id, id))
            downloaded_mods += 1
        else:
            print("Workshop download cached... skipping")
    temp.write("exit")
    temp.close()

    if(len(ids) > 0):
        os.system(rel("steamcmd/steamcmd.exe +runscript %s" % "../"+temp_name))
    for copy_dir in copy_dirs:
        if(exists_g(copy_dir) == False):
            if(exists_r(copy_dir)):
                copy_dirs[copy_dirs.index(copy_dir)] = rel(copy_dir)

    for id_dir in os.listdir(content_path):
        if(int(id_dir) in ids):
            mod_count += 1
            for copy_dir in copy_dirs:
                #for sub_copy_dir in os.listdir(content_path+dir(id_dir)+copy_dir):
                #    pass
                if(copy_dir in os.listdir(dir(content_path+id_dir))):
                    moddirs = [n for n in os.listdir(dir(content_path+id_dir)+copy_dir) if n not in os.listdir(install_path)]

                    for i in range(len(moddirs)):
                        mod_info = os.path.dirname(content_path+id_dir+"/"+moddirs[i])
                        print("Installing %s" % moddirs[i])
                        shutil.copytree(dir(mod_info)+copy_dir, install_path, dirs_exist_ok=True)
                    
                    #input("")

                    #shutil.copytree(dir(content_path+id_dir)+copy_dir, install_path, dirs_exist_ok=True)
    total_mods = [d for d in os.listdir(content_path) if d in [str(id) for id in ids]]
    os.remove(rel(temp_name))
    print("%d mods installed and %d downloaded" % (len(total_mods), downloaded_mods))

    input("")

def help():
    print("\ncommands: ")
    print("    - install        (download mods separately)")
    print("    - run_script     (run a mod download script)\n")

if __name__ == "__main__":
    print("steamd 0.1a\n")

    if(len(sys.argv) == 1):
        help()
    
    while(1):
        i = input(" > ")
        if(i == "help"):
            help()
        elif(i == "run_script"):
            run_script()
        elif(i == "install"):
            install()
        elif(i == "exit" or i == "quit"):
            exit(0)
        elif(i == "cls" or i == "clear"):
            cls()

    pass