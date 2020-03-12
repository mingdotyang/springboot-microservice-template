{{/* vim: set filetype=mustache: */}}

{{- define "app.name" -}}
{{- default .Chart.Name .Values.name | trunc 63 |  trimSuffix "-" -}}
{{- end -}}
{{- define "app.version" -}}
{{- default .Chart.Version .Values.version -}}
{{- end -}}

{{- define "service.labels.release" -}}
easybest.io/release: {{ .Release.Name }}
{{- end -}}
{{- define "service.labels.standard" -}}
easybest.io/app: {{ include "app.name" . }}
easybest.io/version: {{ include "app.version" . }}
{{- end -}}

{{- define "nas.address" -}}
{{- if .Values.nas -}}
{{ .Values.nas }}
{{- else if eq .Values.profile  "prod" -}}
xx.cn-beijing.nas.aliyuncs.com
{{- else if eq .Values.profile  "staging" -}}
xx.cn-beijing.nas.aliyuncs.com
{{- else -}}
xx.cn-beijing.nas.aliyuncs.com
{{- end -}}
{{- end -}}