# ⭐ NestJS Atomic Design Boilerplate

🚀 **Created with ❤️ by SR VINIX**  
📧 **GitHub:** [https://github.com/alguemqualquer123](https://github.com/alguemqualquer123)

A scalable NestJS boilerplate following Atomic Design principles and Clean Architecture patterns. Built with TypeScript and best practices for enterprise applications.

## ✨ Features

- 🏗️ **Atomic Design Architecture** - Organized, scalable structure
- 🔒 **Authentication & Authorization** - JWT-based security
- 🛡️ **Validation & Error Handling** - Robust input validation
- 📝 **Comprehensive Logging** - Structured logging system
- 🗄️ **Database Integration** - Prisma ORM with PostgreSQL
- 🔄 **Queue System** - Bull queues with Redis
- 🎯 **TypeScript** - Full type safety
- 🌐 **CORS Support** - Configurable cross-origin requests
- 📊 **Pagination** - Built-in pagination utilities
- 🧪 **Testing Ready** - Jest testing framework setup
- 🐳 **Docker Support** - Complete containerization
- 🚀 **Production Ready** - Multi-stage Docker builds

## 🏛️ Architecture

```
project/
├── src/                     # Source code
│   ├── core/               # Core application logic
│   │   ├── controllers/    # HTTP controllers
│   │   ├── services/       # Business logic
│   │   ├── guards/         # Authentication guards
│   │   ├── interceptors/   # Response interceptors
│   │   ├── pipes/          # Data validation pipes
│   │   ├── filters/        # Exception filters
│   │   ├── decorators/     # Custom decorators
│   │   ├── config/         # Configuration files
│   │   └── constants/      # Application constants
│   ├── shared/             # Shared utilities
│   │   ├── dto/           # Data transfer objects
│   │   ├── utils/         # Utility functions
│   │   └── logger/        # Logging service
│   ├── infrastructure/     # External integrations
│   │   └── database/      # Prisma database service
│   └── app.module.ts       # Root module
├── prisma/                 # Prisma ORM
│   ├── schema.prisma      # Database schema
│   ├── migrations/        # Database migrations
│   └── seed.ts            # Database seeding
├── docker/                # Docker configurations
│   └── postgres/          # PostgreSQL init scripts
├── docker-compose.yml     # Production containers
├── docker-compose.dev.yml # Development containers
├── Dockerfile            # Multi-stage build
└── .env                  # Environment variables
```

## 🚀 Quick Start

### Prerequisites

- Node.js (v18+)
- pnpm package manager
- Docker & Docker Compose (for containerized setup)
- PostgreSQL & Redis (included in Docker)

### Installation

```bash
# Clone the repository
$ git clone https://github.com/alguemqualquer123/nestjs-atomic-design-boilerplate.git

# Navigate to project directory
$ cd nestjs-atomic-design-boilerplate

# Install dependencies
$ pnpm install
```

### Docker Quick Start

```bash
# Start development environment with PostgreSQL & Redis
$ pnpm run docker:dev

# Build and start production environment
$ pnpm run docker:build && pnpm run docker:up

# View logs
$ pnpm run docker:logs

# Stop containers
$ pnpm run docker:down
```

### Environment Configuration

Create a `.env` file in the root directory:

```bash
# Server Configuration
PORT=3000
NODE_ENV=development
FRONTEND_URL=http://localhost:3000

# Database Configuration (Prisma)
DATABASE_URL="postgresql://postgres:password@localhost:5432/myapp"

# Redis Configuration
REDIS_HOST=localhost
REDIS_PORT=6379
REDIS_PASSWORD=

# JWT Configuration
JWT_SECRET=your-super-secret-jwt-key
JWT_EXPIRES_IN=24h
```

### Docker Environment

For Docker deployment, use the provided `.env` or set environment variables in `docker-compose.yml`:

```bash
# Production Docker environment
NODE_ENV=production
DATABASE_URL="postgresql://postgres:password@postgres:5432/myapp"
REDIS_HOST=redis
REDIS_PORT=6379
```

## 🏃‍♂️ Running the Application

### Development

```bash
# Start in development mode with hot reload
$ pnpm run start:dev

# Start in debug mode
$ pnpm run start:debug

# Build and start in watch mode
$ pnpm run build && pnpm run start:dev
```

### Production

```bash
# Build the application
$ pnpm run build

# Start in production mode
$ pnpm run start:prod
```

## 🧪 Testing

```bash
# Run unit tests
$ pnpm run test

# Run tests in watch mode
$ pnpm run test:watch

# Run tests with coverage
$ pnpm run test:cov

# Run e2e tests
$ pnpm run test:e2e
```

## 📦 Available Scripts

```bash
# Development
$ pnpm run start              # Start in development mode
$ pnpm run start:dev          # Start with hot reload
$ pnpm run start:debug        # Start in debug mode

# Building
$ pnpm run build              # Build the application
$ pnpm run build:schema       # Build database schema

# Production
$ pnpm run start:prod         # Start in production mode

# Testing
$ pnpm run test               # Run unit tests
$ pnpm run test:watch         # Run tests in watch mode
$ pnpm run test:cov           # Run tests with coverage
$ pnpm run test:e2e           # Run e2e tests
$ pnpm run test:debug         # Run tests in debug mode

# Linting & Formatting
$ pnpm run lint               # Run ESLint
$ pnpm run lint:fix           # Fix ESLint issues
$ pnpm run format             # Format code with Prettier

# Docker Commands
$ pnpm run docker:build       # Build Docker image
$ pnpm run docker:up          # Start production containers
$ pnpm run docker:down        # Stop all containers
$ pnpm run docker:dev         # Start development containers
$ pnpm run docker:logs        # View container logs

# Prisma Database
$ pnpm run prisma:generate    # Generate Prisma client
$ pnpm run prisma:push        # Push schema to database
$ pnpm run prisma:migrate     # Run database migrations
$ pnpm run prisma:studio      # Open Prisma Studio
$ pnpm run prisma:seed        # Seed database with sample data
```

## 🌐 API Documentation

### Base URL

```
http://localhost:3000
```

### Health Check

```bash
GET /
```

### Response Format

```json
{
  "message": "⭐ NestJS Atomic Design Boilerplate ⭐",
  "metadata": {
    "version": "1.0.0",
    "author": "SR VINIX",
    "github": "https://github.com/alguemqualquer123",
    "architecture": "Atomic Design",
    "framework": "NestJS",
    "stars": "⭐⭐⭐⭐⭐"
  }
}
```

## 🚀 Deployment

### Docker Deployment

#### Development Environment

```bash
# Start development containers (PostgreSQL + Redis)
$ pnpm run docker:dev

# The application will run on http://localhost:3000
# PostgreSQL: localhost:5432
# Redis: localhost:6379
```

#### Production Environment

```bash
# Build and start production containers
$ pnpm run docker:build
$ pnpm run docker:up

# Access the application
$ curl http://localhost:3000
```

#### Docker Commands

```bash
# Build Docker image
$ pnpm run docker:build

# Start all services
$ pnpm run docker:up

# Stop all services
$ pnpm run docker:down

# View logs
$ pnpm run docker:logs

# Development only (database + redis)
$ pnpm run docker:dev
```

### Environment Setup

#### Production Environment Variables

```bash
# Server
NODE_ENV=production
PORT=3000
FRONTEND_URL=http://localhost:3000

# Database (PostgreSQL recommended)
DB_HOST=your-db-host
DB_PORT=5432
DB_USERNAME=your-db-user
DB_PASSWORD=your-db-password
DB_NAME=your-db-name

# Redis
REDIS_HOST=your-redis-host
REDIS_PORT=6379
REDIS_PASSWORD=your-redis-password

# Security
JWT_SECRET=your-production-jwt-secret
JWT_EXPIRES_IN=24h
```

#### PM2 Deployment

```bash
# Install PM2 globally
$ npm install -g pm2

# Start with PM2
$ pm2 start ecosystem.config.js

# Monitor application
$ pm2 monit

# View logs
$ pm2 logs
```

### Cloud Deployment

#### Vercel (Serverless)

```bash
# Install Vercel CLI
$ npm install -g vercel

# Deploy
$ vercel --prod
```

#### Heroku

```bash
# Install Heroku CLI
$ npm install -g heroku

# Create app
$ heroku create your-app-name

# Deploy
$ git push heroku main
```

#### AWS (Elastic Beanstalk)

```bash
# Install EB CLI
$ npm install -g awsebcli

# Initialize
$ eb init

# Deploy
$ eb deploy
```

## 🔧 Configuration

### CORS Settings

CORS is pre-configured with common origins. Modify in `src/main.ts`:

```typescript
app.enableCors({
  origin: ['your-frontend-url'],
  credentials: true,
  methods: ['GET', 'POST', 'PUT', 'DELETE'],
  allowedHeaders: ['Content-Type', 'Authorization'],
});
```

### Database Configuration

Database is handled by Prisma. Update settings in `prisma/schema.prisma`:

```prisma
datasource db {
  provider = "postgresql"
}

// Connection URL is set via DATABASE_URL environment variable
// PrismaService handles the connection automatically
```

### Prisma Management

```bash
# Generate Prisma Client after schema changes
$ pnpm run prisma:generate

# Push schema changes to database
$ pnpm run prisma:push

# Create and run migrations
$ pnpm run prisma:migrate

# Open database GUI
$ pnpm run prisma:studio

# Seed database with sample data
$ pnpm run prisma:seed
```

## 🛠️ Development Guidelines

### Code Style

- Use TypeScript for type safety
- Follow Atomic Design principles
- Implement proper error handling
- Write unit tests for all services
- Use meaningful variable names

### File Naming

- Controllers: `*.controller.ts`
- Services: `*.service.ts`
- DTOs: `*.dto.ts`
- Guards: `*.guard.ts`
- Interceptors: `*.interceptor.ts`

### Git Workflow

```bash
# Create feature branch
$ git checkout -b feature/your-feature-name

# Commit changes
$ git commit -m "feat: add your feature description"

# Push and create PR
$ git push origin feature/your-feature-name
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **NestJS Team** - For the amazing framework
- **Atomic Design** - For the architectural inspiration
- **Community** - For all the contributions and support

## 📞 Support

- 📧 **Email:** danilovinicius1790@gmail.com
- 💬 **Discord:** [Join our community](https://discord.gg/gSHUVHXNwP)
- 🐛 **Issues:** [Report bugs](https://github.com/alguemqualquer123/nestjs-atomic-design-boilerplate/issues)

---

⭐ **If you like this boilerplate, give it a star!** ⭐

🚀 **Happy Coding!** 🚀


# Guia de Arquitetura — NestJS Atomic Design Boilerplate

## Visão Geral

Este projeto combina **NestJS** com uma arquitetura inspirada no **Atomic Design**, dividindo o código em camadas com responsabilidades bem definidas. A ideia central é: cada parte do sistema tem um único papel, e as dependências fluem de fora para dentro.

```
src/
├── main.ts                  ← Ponto de entrada da aplicação
├── app.module.ts            ← Módulo raiz (junta tudo)
│
├── core/                    ← Camada de lógica de negócio e HTTP
├── infrastructure/          ← Camada de acesso a dados e serviços externos
└── shared/                  ← Código reutilizável por todos
```

---

## As 3 Grandes Camadas

### 1. `core/` — O coração da aplicação

É aqui que vive a lógica principal. É dividido em subcamadas:

#### `core/controllers/` — Recebe requisições HTTP
Os controllers são a "porta de entrada" da API. Eles recebem o request, chamam o service e retornam a resposta. **Não devem conter lógica de negócio.**

```
controllers/
├── app.controller.ts           ← Rota raiz "/"
├── user.controller.ts          ← Rotas de usuário (base)
└── v1/                         ← Versionamento de API
    ├── auth.controller.ts          ← POST /v1/auth/login, /register...
    ├── users.controller.ts         ← GET /v1/users...
    └── user-management.controller.ts ← Rotas de admin (ex: banir usuário)
```

> 💡 **Dica:** A subpasta `v1/` permite que você lance uma `v2/` no futuro sem quebrar os clientes que usam a versão antiga.

#### `core/services/` — Lógica de negócio
Os services fazem o trabalho pesado. Eles são chamados pelos controllers e chamam os repositories.

```
services/
├── app.service.ts      ← Serviços gerais
├── auth.service.ts     ← Login, geração de JWT, validação de senha
└── user.service.ts     ← Criação, busca, atualização de usuários
```

#### `core/modules/` — Organização dos módulos NestJS
O NestJS usa um sistema de módulos para organizar e injetar dependências.

```
modules/
└── v1/
    ├── auth.module.ts  ← Registra AuthController + AuthService + dependências
    └── v1.module.ts    ← Módulo que agrupa todos os módulos da v1
```

#### `core/guards/` — Proteção de rotas
Guards decidem se uma requisição pode ou não acessar uma rota.

```
guards/
├── jwt-auth.guard.ts   ← Verifica se o token JWT é válido
└── roles.guard.ts      ← Verifica se o usuário tem a role necessária (ex: ADMIN)
```

#### `core/decorators/` — Anotações personalizadas
Decorators são "etiquetas" que você coloca em rotas ou parâmetros para adicionar comportamento.

```
decorators/
├── current-user.decorator.ts  ← @CurrentUser() → injeta o usuário logado no parâmetro
├── public.decorator.ts        ← @Public() → marca rota como pública (sem JWT)
└── roles.decorator.ts         ← @Roles('ADMIN') → define quais roles podem acessar
```

**Exemplo de uso:**
```typescript
@Get('profile')
@Roles('USER', 'ADMIN')
getProfile(@CurrentUser() user: User) {
  return user;
}
```

#### `core/filters/` — Tratamento de erros
```
filters/
└── http-exception.filter.ts   ← Captura erros e formata a resposta de erro
```

#### `core/interceptors/` — Transformação de respostas
```
interceptors/
└── response.interceptor.ts    ← Formata TODA resposta num padrão: { data, statusCode, ... }
```

#### `core/pipes/` — Validação de dados de entrada
```
pipes/
└── validation.pipe.ts   ← Valida e transforma o body/params usando class-validator
```

#### `core/config/` — Configurações da aplicação
```
config/
├── env.config.ts        ← Lê e valida variáveis de ambiente (.env)
└── database.config.ts   ← Configuração da conexão com banco de dados
```

#### `core/constants/` — Constantes globais
```
constants/
└── errors.ts   ← Mensagens de erro padronizadas (ex: USER_NOT_FOUND)
```

---

### 2. `infrastructure/` — Acesso a recursos externos

Esta camada isola tudo que depende de serviços externos (banco de dados, cache, filas).

#### `infrastructure/database/` — Banco de dados com Prisma
```
database/
├── prisma.module.ts                   ← Módulo do Prisma (registra o serviço)
├── prisma.service.ts                  ← Conexão com o banco (estende PrismaClient)
└── repositories/
    └── user.repository.ts             ← Queries do banco para a entidade User
```

> 💡 **Repository Pattern:** Os repositories abstraem as queries do banco. Se você trocar de Prisma para TypeORM, só muda o repository — o service continua igual.

#### `infrastructure/cache/` — Cache com Bull/Redis
```
cache/
└── bull.provider.ts   ← Configuração do Bull (filas com Redis)
```

#### `infrastructure/queue/` — Filas de processamento
```
queue/
└── redis.provider.ts   ← Configuração da conexão com Redis
```

---

### 3. `shared/` — Código compartilhado

Código reutilizável que não pertence a nenhuma camada específica.

#### `shared/dto/` — Data Transfer Objects
DTOs definem o formato dos dados que entram e saem da API.

```
dto/
├── auth.dto.ts         ← LoginDto { email, password }, RegisterDto...
├── pagination.dto.ts   ← PaginationDto { page, limit }
└── user-role.dto.ts    ← UpdateRoleDto { role }
```

#### `shared/enums/` — Enumerações
```
enums/
└── user-role.enum.ts   ← enum UserRole { ADMIN = 'ADMIN', USER = 'USER' }
```

#### `shared/interfaces/` — Contratos TypeScript
```
interfaces/
└── user.interface.ts   ← interface IUser { id, email, role... }
```

#### `shared/logger/` — Sistema de logs
```
logger/
└── logger.service.ts   ← Logger customizado para toda a aplicação
```

#### `shared/utils/` — Funções utilitárias
```
utils/
└── date.util.ts   ← Funções de formatação/manipulação de datas
```

---

## Como as peças se conectam

```
Request HTTP
     ↓
[Guard] jwt-auth.guard → valida o token JWT
     ↓
[Guard] roles.guard → valida a permissão
     ↓
[Controller] recebe o request, chama o Service
     ↓
[Service] executa a lógica de negócio, chama o Repository
     ↓
[Repository] faz a query no banco via Prisma
     ↓
[Interceptor] response.interceptor formata a resposta
     ↓
Response HTTP
```

---

## Fluxo de um exemplo real: Login

**`POST /v1/auth/login`** com `{ email, password }`

1. **`validation.pipe`** valida que `email` e `password` estão presentes e no formato correto
2. **`auth.controller.ts`** recebe o `LoginDto` e chama `authService.login(dto)`
3. **`auth.service.ts`** busca o usuário por email (`userRepository.findByEmail`), compara a senha com bcrypt, gera o JWT
4. **`user.repository.ts`** faz `prisma.user.findUnique({ where: { email } })`
5. **`response.interceptor`** envolve o token JWT retornado num padrão `{ data: { token }, statusCode: 200 }`
6. Se der erro (senha errada), **`http-exception.filter`** captura e retorna `{ error: 'Unauthorized', statusCode: 401 }`

---

## O arquivo `prisma/seed.ts`

Fora do `src/`, existe um arquivo de seed que popula o banco com dados iniciais (usuário admin, etc.) para desenvolvimento.

---

## Resumo Mental

| Pasta | Pergunta que responde |
|---|---|
| `core/controllers` | "Qual URL faz o quê?" |
| `core/services` | "Como a lógica funciona?" |
| `core/guards` | "Quem pode acessar?" |
| `core/decorators` | "Como facilitar o código dos controllers?" |
| `core/filters` | "Como mostrar erros?" |
| `core/interceptors` | "Como formatar respostas?" |
| `infrastructure/database` | "Como salvar/buscar dados?" |
| `infrastructure/cache` | "Como cachear?" |
| `shared/dto` | "Qual formato de dado entra/sai?" |
| `shared/enums` | "Quais valores fixos existem?" |
| `shared/interfaces` | "Qual o tipo TypeScript de cada entidade?" |

---

## Por onde começar?

1. Leia o `src/main.ts` para ver como a app inicia
2. Leia o `src/app.module.ts` para ver como os módulos se conectam
3. Escolha uma feature (ex: auth) e siga o caminho: `auth.controller` → `auth.service` → `user.repository`
4. Para criar uma nova feature, copie o padrão de `users`: crie o controller, service, repository e module correspondentes

