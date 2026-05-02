NAME = NebulaOS.apbx
PASSWORD = malte
SEVENZIP = "C:\Program Files\7-Zip\7z.exe"

all: clean build

build:
	cd src && $(SEVENZIP) a -t7z ..\$(NAME) * -p$(PASSWORD) -mhe=on -mx=0

clean:
	- powershell -Command "Remove-Item -Force -ErrorAction SilentlyContinue $(NAME)"

re: clean build