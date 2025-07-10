{{- define "devops-debug-tools.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
{{ default (include "devops-debug-tools.fullname" .) .Values.serviceAccount.name }}
{{- else -}}
{{ .Values.serviceAccount.name }}
{{- end -}}
{{- end -}}

{{- define "devops-debug-tools.fullname" -}}
{{ .Release.Name }}-devops-debug-tools
{{- end -}}

{{- define "devops-debug-tools.labels" -}}
app.kubernetes.io/name: {{ include "devops-debug-tools.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "devops-debug-tools.selectorLabels" -}}
app.kubernetes.io/name: {{ include "devops-debug-tools.fullname" . }}
{{- end -}}
