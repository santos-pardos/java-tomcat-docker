#!/bin/bash
set -x
azure servicefabric application package copy JenkinsSF fabric:ImageStore > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "Application copy failed."
    exit 1
fi
azure servicefabric application type register JenkinsSF > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "Application type registration failed."
    exit 1
fi
version=$(sed -e "s/xmlns/ignore/" JenkinsSF/ApplicationManifest.xml | xmllint --xpath "string(//ApplicationManifest/@ApplicationTypeVersion)" -)
eval azure servicefabric application upgrade start --application-name fabric:/JenkinsSF --target-application-type-version ${version} --rolling-upgrade-mode Monitored > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "Upgrade of application failed."
    exit 1
fi
