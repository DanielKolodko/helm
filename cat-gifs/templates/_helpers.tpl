{{/*
Return the fully qualified app name.
*/}}
{{- define "cats.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Return the short name.
*/}}
{{- define "cats.name" -}}
{{- default .Chart.Name .Values.nameOverride -}}
{{- end }}
