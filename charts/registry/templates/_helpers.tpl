{{/* vim: set filetype=mustache: */}}

{{- define "registry.fullname" -}}
{{- include "common.names.fullname" . -}}
{{- end -}}

{{- define "registry.name" -}}
{{- include "common.names.name" . -}}
{{- end -}}



{{- define "registry.ingressname" -}}
{{- printf "%s-ingress" (include "common.names.fullname" .) -}}
{{- end -}}

{{- define "registry.ingress.classname" -}}
{{ default "nginx" .Values.ingress.className }}
{{- end -}}

{{- define "registry.imagePullSecrets" -}}
{{ include "common.images.pullSecrets" (dict "images" (list .Values.image ) "global" .Values.global) }}
{{- end -}}

{{- define "registry.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.image "global" .Values.global) }}
{{- end -}}
