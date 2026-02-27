# Multi-stage build for production
FROM node:20 AS builder

WORKDIR /app

# Copy package files
COPY package.json pnpm-lock.yaml ./

# Install dependencies using npm inside Docker (mais estável)
RUN npm install

# Copy rest of the application
COPY . .

# Generate Prisma client
RUN npx prisma generate

# Build NestJS app
RUN npm run build


# Production stage
FROM node:20 AS production

WORKDIR /app

# Copy only package files
COPY package.json pnpm-lock.yaml ./

# Install only production dependencies
RUN npm install --omit=dev

# Copy built app
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/prisma ./prisma
COPY --from=builder /app/node_modules/.prisma ./node_modules/.prisma

EXPOSE 3000

CMD ["node", "dist/src/main.js"]