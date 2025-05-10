FROM node:18-alpine

WORKDIR /app

# Copy analyzer
COPY thread-cpu-analyzer /app/thread-cpu-analyzer

# Copy visualizer
COPY thread-viz-by-peiris /app/thread-viz-by-peiris

# Copy startup script
COPY server.sh /app/server.sh

# Allow uploads folder for analyzer
RUN mkdir -p /app/thread-cpu-analyzer/uploads

# Expose both app ports
EXPOSE 3000 4000

CMD ["/bin/sh", "/app/server.sh"]