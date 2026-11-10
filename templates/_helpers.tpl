{{/*
Secret name of redis.
Needs .Release.Name
*/}}
{{- define "vshnopenwebui.redis.targetSecret" -}}
  {{- if .Values.redis.secretNameOverride -}}
    {{- .Values.redis.secretNameOverride -}}
  {{- else -}}
    {{- printf "%s-redis-secret" .Release.Name -}}
  {{- end -}}
{{- end -}}
