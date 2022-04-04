# Customer API

## Prerequisites

- Kubernetes 1.21.5+
- Helm 3+
- On your cluster you will need to create a Storage Class
- On your cluster you will need to install the following Helm charts
  - External DNS: https://bitnami.com/stack/external-dns/helm 
  - Nginx Ingress: https://kubernetes.github.io/ingress-nginx/deploy/ 
  - Cert Manager: https://artifacthub.io/packages/helm/cert-manager/cert-manager 

## Installing the chart
- Create a namespace for the Customer API
- Install the chart
  - helm install customer-api -n helm-testing **Update this for remote helm repo**
 
 Configuration values:
 
| Name | Description | Value |
|---|---|---|
| customerApiUrl | This will be the url of your Customer API. This needs to be in your domain. | "customer-api.my.domain.com" |
| couchdbStorageSize | Size of each couchdb instance | "1Gi" |
| storageClassName | Name of the storage class you created and intend to use for persistent storage | "myStorageClassName" |
| mongodbEnabled | If this is `true`, a provided mongodb instance will be created for you. If this is `false`, you will need to provide a mongodb connection string | true |
| mongodbStorageSize | Size of the provided mongodb instance. Only used if `mongodbEnabled : true` | "1Gi" |
| mongodbPassword | Desired password for provided mongodb instance. Only used if `mongodbEnabled : true` | "myTestPass" |
| externalMongoConnectionString | The connection string for an external mongodb instance. Only used if `mongodbEnabled : false` | "my://mongodb:conntion@string" |


To set these values use `--set variableName=desiredValue`

For example `helm install customer-api . --values values.yaml  -n helm-testing --set customerApiUrl=my-new-api-url.com`

## Services Included
- Customer API
- Integration Service
- Integration Polling Service
- Couchdb App
- Couchdb Dashboard
- Mongodb (optional)


## Upgrading the chart
  - `helm upgrade customer-api -n helm-testing` **Update this for remote helm repo**

## Deleting the chart
  - `helm delete customer-api -n helm-testing` **Update this for remote helm repo**


