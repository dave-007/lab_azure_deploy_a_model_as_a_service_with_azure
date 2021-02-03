# todo

* find alternate model source ipynbs
* test aci https://docs.microsoft.com/en-us/azure/machine-learning/how-to-deploy-azure-container-instance

## troubleshooting





az login -u <n@d.com> -p <guid>

### Get Logs

* https://docs.microsoft.com/en-us/azure/machine-learning/how-to-troubleshoot-deployment?tabs=azcli#dockerlog

```ps
az ml service get-logs --verbose --workspace-name pslab-workspace --name diabetes-service
```

```py
# Get the logs
# refer https://docs.microsoft.com/en-us/azure/machine-learning/how-to-troubleshoot-deployment?tabs=python#get-deployment-logs
print(ws.webservices)

# Choose the webservice you are interested in

from azureml.core import Webservice

service = Webservice(ws, 'my-sklearn-service')
print(service.get_logs())
```
