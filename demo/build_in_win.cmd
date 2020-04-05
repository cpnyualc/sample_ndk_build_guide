xcopy ..\project1\out\libproject1.so .\pro_libs\ /Y
xcopy ..\project1\out\fun.h .\pro_libs\ /Y
xcopy ..\project2\out\libproject2.so .\pro_libs\ /Y
xcopy ..\project2\out\wapperfun.h .\pro_libs\ /Y
ndk-build -j -B
