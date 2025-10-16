# Multi-stage build for optimal image size
FROM node:18-alpine AS builder

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install ALL dependencies (including dev dependencies for build)
RUN npm ci

# Copy source code
COPY . .

# Set production WebSocket URL
ARG PROVER_PROXY_URL=wss://devconnect.tlsnotary.org/prove
ENV PROVER_PROXY_URL=${PROVER_PROXY_URL}

# Build the application
RUN npx webpack --config webpack.js --mode production

# Production stage - Caddy to serve static files
FROM caddy:alpine

# Copy Caddy configuration
COPY Caddyfile /etc/caddy/Caddyfile

# Copy built files to Caddy
COPY --from=builder /app/build /usr/share/caddy

# Expose port 80
EXPOSE 80
