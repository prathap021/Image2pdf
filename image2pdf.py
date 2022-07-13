import os
def main():
    
    # Create directory
    dirName = '0utput'
    try:
        # Create target Directory
        os.mkdir(dirName)
        print(dirName ,  "Directory Created") 
    except FileExistsError:
        print(dirName ,  "Already Exists")        
    
    # Create target Directory if don't exist
if __name__ == '__main__':
    main()
