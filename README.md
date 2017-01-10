# adoc_styles

fo-pdf styles for asciidoc.

## 1. environemnt

### OS

- Ubuntu 16.04 LTS (xenial)

### Tools

#### open-jre

- version 1.8.0_111

```
> java -version
openjdk version "1.8.0_111"
OpenJDK Runtime Environment (build 1.8.0_111-8u111-b14-2ubuntu0.16.04.2-b14)
OpenJDK 64-Bit Server VM (build 25.111-b14, mixed mode)
```

#### asciidoctor

- version 1.5.5

```
> asciidoctor --version
Asciidoctor 1.5.5 [http://asciidoctor.org]
Runtime Environment (ruby 2.3.1p112 (2016-04-26) [x86_64-linux-gnu]) (lc:UTF-8 fs:UTF-8 in:- ex:UTF-8)
```

#### asciidoctor-fopub

- git@github.com:asciidoctor/asciidoctor-fopub.git

```
> git log
commit 3546c88bf47786afa5b8e7a4086a510a587a9df9
Merge: e8d7c5d 1f63cba
Author: Dan Allen <dan.j.allen@gmail.com>
Date:   Tue Dec 6 16:40:33 2016 -0700
```

### Resource

We use following tools/resouces.

#### styles

- copy from : ${INSTALL_DIR}/asciidoctor-fopub/src/dist/docbook-xsl

#### dockbook-xsl

- copy from : https://sourceforge.net/projects/docbook/files/docbook-xsl/1.79.1/

## 2. setup Environment

install required tools into system.

### install w/ apt-get

```
> sudo apt-get install openjdk-8-jre
> sudo apt-get install asciidoctor
```

### asciidoctor-fopub

```
> cd {WORKING_DIR}
> git clone https://github.com/asciidoctor/asciidoctor-fopub
> sudo cp -ir ./asciidoctor-fopub ${INSTALL_DIR}
```

```
> sudo cat << "EOF" > /usr/local/bin/fopub
#!/bin/sh
DIRNAME=`dirname $0`
FOPUB_PATH=/usr/share/asciidoctor-fopub
PATH="${FOPUB_PATH}:${PATH}"
exec $FOPUB_PATH/fopub $@
EOF

> sud chmod +x /usr/local/bin/fopubo
```

## 3. Reference

[1] Asciidoctor による PDF 生成, uvirt.com, https://www.uvirt.com/wp1/tag/asciidoctor-fopub

[2] Steins;Git, O2Project, https://github.com/o2project/steins-git

## 4. tags

このリポジトリは以下のドキュメントの生成に利用しています.
We use this repository for following document creation.
1. v1.0.0_C91      C91 version
