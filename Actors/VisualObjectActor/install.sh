azuresfcli servicefabric application package copy --application-package-path VisualObjectApplication --image-store-connection-string fabric:ImageStore
azuresfcli servicefabric application type register --application-type-build-path VisualObjectApplication
if [ $# -eq 0 ]
  then
    echo "No arguments supplied, proceed with default instanceCount of 1"
    azuresfcli servicefabric application create --application-name fabric:/VisualObjectApp  --application-type-name VisualObjectsApplication --application-type-version 1.0.0
  elif [ $1 = 0 ]
  then
    echo "Onebox environment, proceed with default instanceCount of 1."
    azuresfcli servicefabric application create --application-name fabric:/VisualObjectApp  --application-type-name VisualObjectsApplication --application-type-version 1.0.0
  elif [ $1 = 1 ]
  then
    echo "Multinode env, proceed with default instanceCount of -1"
    azuresfcli servicefabric application create --application-name fabric:/VisualObjectApp  --application-type-name VisualObjectsApplication --application-type-version 1.0.0 --application-parameter "[{\"key\":\"InstanceCount\",\"value\":\"-1\"}]"
fi