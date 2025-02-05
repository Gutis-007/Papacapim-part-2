# Documentação do Projeto Papacapim

## Visão Geral
O Papacapim é uma rede social desenvolvida em Flutter que permite aos usuários compartilhar postagens, seguir outros usuários, curtir e responder a postagens. O aplicativo consome uma API REST para todas as suas funcionalidades.

## Estrutura do Projeto

### 1. Organização de Pastas 

### 2. Componentes Principais

#### 2.1 Services
- **ApiService**: Centraliza todas as chamadas à API, gerenciando:
  - Autenticação (login/logout)
  - Operações de usuário (CRUD)
  - Operações de posts
  - Gerenciamento de seguidores
  - Sistema de curtidas

#### 2.2 Providers
- **AuthProvider**: Gerencia o estado de autenticação
- **PostsProvider**: Gerencia o estado das postagens
- **ProfileProvider**: Gerencia o estado do perfil de usuário

#### 2.3 Telas
- **LoginScreen**: Tela de login
- **RegisterScreen**: Cadastro de novos usuários
- **FeedScreen**: Feed de postagens
- **ProfileScreen**: Perfil do usuário
- **EditProfileScreen**: Edição de perfil
- **NewPostScreen**: Criação de novas postagens

## Funcionalidades

### 1. Autenticação
- Login com usuário e senha
- Registro de novos usuários
- Gerenciamento de sessão via token

### 2. Gerenciamento de Usuários
- Visualização de perfil
- Edição de dados pessoais
- Exclusão de conta
- Sistema de seguidores

### 3. Postagens
- Criação de posts
- Visualização do feed
- Curtidas em posts
- Respostas a posts
- Exclusão de posts próprios

## Fluxo de Dados

### 1. Autenticação
1. Usuário insere credenciais
2. AuthProvider faz requisição via ApiService
3. Token é armazenado para futuras requisições
4. Usuário é redirecionado para o feed

### 2. Feed
1. PostsProvider carrega posts via ApiService
2. Posts são exibidos em lista
3. Interações (curtidas, respostas) são gerenciadas pelo PostsProvider

### 3. Perfil
1. ProfileProvider carrega dados do usuário
2. Exibe informações e posts do usuário
3. Permite edição de dados e gerenciamento de conta

## Tecnologias Utilizadas

### 1. Principais Pacotes
- **provider**: Gerenciamento de estado
- **http**: Requisições HTTP
- **timeago**: Formatação de datas relativas

### 2. API
- RESTful
- Autenticação via token
- Endpoints para todas as operações necessárias

## Implementação de Funcionalidades

### 1. Gerenciamento de Estado
- Uso do padrão Provider para gerenciamento de estado
- Separação clara entre lógica de negócios e UI
- Estado distribuído entre diferentes providers

### 2. Navegação
- Navegação entre telas via Navigator
- Gerenciamento de rotas para autenticação
- Navegação modal para ações específicas

### 3. UI/UX
- Design Material
- Feedback visual para ações
- Tratamento de erros com mensagens claras
- Indicadores de carregamento

## Segurança

### 1. Autenticação
- Token de sessão em todas as requisições
- Validação de formulários
- Proteção contra acessos não autorizados

### 2. Dados
- Sanitização de inputs
- Validação de dados antes do envio
- Tratamento adequado de erros

## Manutenção e Escalabilidade

### 1. Código
- Organização modular
- Separação de responsabilidades
- Código documentado
- Fácil manutenção

### 2. Arquitetura
- Estrutura escalável
- Fácil adição de novas funcionalidades
- Baixo acoplamento entre componentes

## Considerações Finais

O projeto foi desenvolvido seguindo boas práticas de programação e arquitetura, permitindo fácil manutenção e expansão. A estrutura modular e o uso de providers facilitam o gerenciamento de estado e a organização do código.

A implementação focou em criar uma experiência fluida para o usuário, com feedback apropriado para todas as ações e tratamento adequado de erros. 