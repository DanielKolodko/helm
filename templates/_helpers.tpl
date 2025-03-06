{{/*
Return the fully qualified app name.
*/}}
{{- define "cats.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Common labels.
*/}}
{{- define "cats.labels" -}}
app.kubernetes.io/name: {{ include "cats.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Return the chart name.
*/}}
{{- define "cats.name" -}}
{{- default .Chart.Name .Values.nameOverride -}}
{{- end }}
