# ============================================
# SEP STUDIO - n8n Dockerfile
# ============================================

FROM n8nio/n8n:latest

ENV N8N_PORT=5678
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false
ENV EXECUTIONS_DATA_PRUNE=true
ENV EXECUTIONS_DATA_MAX_AGE=336

# Create directory for SQLite database (persistence) and ensure correct ownership
RUN mkdir -p /home/node/.n8n \
  && chown -R node:node /home/node/.n8n

EXPOSE 5678

# Health check (use PORT if Render sets it)
HEALTHCHECK --interval=30s --timeout=3s --start-period=10s --retries=3 \
  CMD bash -lc 'curl -f http://localhost:${PORT:-5678}/healthz || exit 1'

# NOTE: Do NOT override the base image's ENTRYPOINT/CMD. The official n8n image
# already provides the correct entrypoint and command to start n8n. Removing
# any custom CMD ensures we use the same startup behavior as the official image
# and avoids "Command 'n8n' not found" errors if the image layout changes.
