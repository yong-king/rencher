{{- define "my-nginx-chart.name" -}}
{{- .Chart.Name | lower | replace "_" "-" -}}
{{- end }}

{{- define "my-nginx-chart.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "my-nginx-chart.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end }}

