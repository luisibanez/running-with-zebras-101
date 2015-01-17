### 
### Taken from: https://gist.github.com/P7h/9741922
###
### Shell script to download Oracle JDK / JRE / Java binaries from Oracle website using terminal / command / shell prompt using wget.
### You can download all the binaries one-shot by just giving the BASE_URL.
### Script might be useful if you need Oracle JDK on Amazon EC2 env.

## Features:-
# 1. Resumes a broken / interrupted [previous] download, if any.
# 2. Renames the file to a proper name with including platform info.
# 3. Downloads the following from Oracle Website with one shell invocation.
#    Linux 64 

##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### #####
##### ##### ##### ##### ##### ##### ##### ##### #####

## JDK version: JDK7u71
BASE_URL=http://download.oracle.com/otn-pub/java/jdk/7u71-b14/jdk-7u71
JDK_VERSION=${BASE_URL: -8}

declare -a PLATFORMS=("-linux-x64.tar.gz")

for platform in "${PLATFORMS[@]}"
do
    wget -c -O "$JDK_VERSION$platform" --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "${BASE_URL}${platform}"
done

##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### #####
##### ##### ##### ##### ##### ##### ##### ##### ##### #####
