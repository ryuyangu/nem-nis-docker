#!/bin/bash

java -Xms${NEM_JAVA_MEMORY}M -Xmx${NEM_JAVA_MEMORY}M -cp ".:package/nis:package/nis/*:package/libs/*" org.nem.deploy.CommonStarter
#cd nis
#java -Xms512M -Xmx1G -cp ".:./*:../libs/*" org.nem.deploy.CommonStarter
#cd -
