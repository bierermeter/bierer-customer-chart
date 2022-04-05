{{/*
Expand the name of the chart.
*/}}
{{- define "customerApi.name" -}}
{{- default .Chart.Name .Values.customerApi.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "customerApi.fullname" -}}
{{- if .Values.customerApi.fullnameOverride }}
{{- .Values.customerApi.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.customerApi.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "customerApi.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "customerApi.labels" -}}
helm.sh/chart: {{ include "customerApi.chart" . }}
{{ include "customerApi.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "customerApi.selectorLabels" -}}
app.kubernetes.io/name: {{ include "customerApi.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "customerApi.serviceAccountName" -}}
{{- if .Values.customerApi.serviceAccount.create }}
{{- default (include "customerApi.fullname" .) .Values.customerApi.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.customerApi.serviceAccount.name }}
{{- end }}
{{- end }}



{{/*
Integration Service
*/}}



{{/*
Expand the name of the chart.
*/}}
{{- define "integrationService.name" -}}
{{- printf "integration-service" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "integrationService.fullname" -}}
{{- if .Values.integrationService.fullnameOverride }}
{{- .Values.integrationService.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default "integration-service" .Values.integrationService.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "integrationService.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "integrationService.labels" -}}
helm.sh/chart: {{ include "integrationService.chart" . }}
{{ include "integrationService.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "integrationService.selectorLabels" -}}
app.kubernetes.io/name: {{ include "integrationService.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "integrationService.serviceAccountName" -}}
{{- if .Values.integrationService.serviceAccount.create }}
{{- default (include "integrationService.fullname" .) .Values.integrationService.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.integrationService.serviceAccount.name }}
{{- end }}
{{- end }}



{{/*
Couch App
*/}}



{{/*
Expand the name of the chart.
*/}}
{{- define "couchApp.name" -}}
{{- printf "couchapp" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "couchApp.fullname" -}}
{{- if .Values.couchApp.fullnameOverride }}
{{- .Values.couchApp.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default "couchapp" .Values.couchApp.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "couchApp.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "couchApp.labels" -}}
helm.sh/chart: {{ include "couchApp.chart" . }}
{{ include "couchApp.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "couchApp.selectorLabels" -}}
app.kubernetes.io/name: {{ include "couchApp.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "couchApp.serviceAccountName" -}}
{{- if .Values.couchApp.serviceAccount.create }}
{{- default (include "couchApp.fullname" .) .Values.couchApp.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.couchApp.serviceAccount.name }}
{{- end }}
{{- end }}


{{/*
Couch Dashboard
*/}}



{{/*
Expand the name of the chart.
*/}}
{{- define "couchDashboard.name" -}}
{{- printf "couchdashboard" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "couchDashboard.fullname" -}}
{{- if .Values.couchDashboard.fullnameOverride }}
{{- .Values.couchDashboard.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default "couchdashboard" .Values.couchDashboard.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "couchDashboard.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "couchDashboard.labels" -}}
helm.sh/chart: {{ include "couchDashboard.chart" . }}
{{ include "couchDashboard.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "couchDashboard.selectorLabels" -}}
app.kubernetes.io/name: {{ include "couchDashboard.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "couchDashboard.serviceAccountName" -}}
{{- if .Values.couchDashboard.serviceAccount.create }}
{{- default (include "couchDashboard.fullname" .) .Values.couchDashboard.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.couchDashboard.serviceAccount.name }}
{{- end }}
{{- end }}


{{/*
Mongo DB
*/}}



{{/*
Expand the name of the chart.
*/}}
{{- define "mongodb.name" -}}
{{- printf "mongodb" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "mongodb.fullname" -}}
{{- if .Values.mongodb.fullnameOverride }}
{{- .Values.mongodb.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default "mongodb" .Values.mongodb.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "mongodb.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "mongodb.labels" -}}
helm.sh/chart: {{ include "mongodb.chart" . }}
{{ include "mongodb.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "mongodb.selectorLabels" -}}
app.kubernetes.io/name: {{ include "mongodb.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "mongodb.serviceAccountName" -}}
{{- if .Values.mongodb.serviceAccount.create }}
{{- default (include "mongodb.fullname" .) .Values.mongodb.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.mongodb.serviceAccount.name }}
{{- end }}
{{- end }}

{{- define "mongodb.connectionString" -}}
{{- if .Values.mongodbEnabled }}
{{- printf "mongodb://admin:%s@%s/recordings"  .Values.mongodbPassword (include "mongodb.fullname" .) }}

{{- else }}
{{- printf "%s"  .Values.externalMongodbConnectionString }}

{{- end }}
{{- end }}

