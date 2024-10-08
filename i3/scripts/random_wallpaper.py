import os
import random
import subprocess

# Path to your wallpaper directory
wallpaper_dir = "/home/archlinux/Documents/Wallpaper-Bank/wallpapers"

def set_random_wallpaper():
    # Get the list of all files in the wallpaper directory
    wallpapers = [f for f in os.listdir(wallpaper_dir) if os.path.isfile(os.path.join(wallpaper_dir, f))]
    
    if not wallpapers:
        print("No wallpapers found in the specified directory.")
        return
    
    # Pick a random wallpaper
    random_wallpaper = random.choice(wallpapers)
    wallpaper_path = os.path.join(wallpaper_dir, random_wallpaper)
    
    # Use feh to set the wallpaper
    subprocess.run(["feh", "--bg-fill", wallpaper_path])
    subprocess.run(["wal", "-i", wallpaper_path])
    # print(f"Wallpaper set to: {wallpaper_path}")

if __name__ == "__main__":
    set_random_wallpaper()
