# Demo Park API - Gerenciamento de Estacionamentos

![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=openjdk&logoColor=white)
![Spring Boot](https://img.shields.io/badge/Spring_Boot-6DB33F?style=for-the-badge&logo=spring&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![Gradle](https://img.shields.io/badge/Gradle-02303A.svg?style=for-the-badge&logo=Gradle&logoColor=white)

API para gerenciamento de estacionamentos com sistema de reservas, controle de vagas e autenticação de usuários.

## 📋 Recursos Principais

- **Autenticação JWT** segura com diferentes níveis de permissão
- CRUD completo para gerenciamento de estacionamentos
- Sistema de reservas com validação de conflitos
- Controle de vagas disponíveis em tempo real
- Perfis de usuário (Admin, Usuário Comum)
- Tratamento de erros global e padronizado
- Documentação completa via Postman

## 🚀 Tecnologias Utilizadas

- **Java 17**
- **Spring Boot 3.2.4**
- Spring Data JPA
- Spring Security
- PostgreSQL
- JSON Web Tokens (JWT)
- Gradle
- Lombok
- MapStruct

## ⚙️ Configuração do Ambiente

### Pré-requisitos
- Java 17 JDK
- PostgreSQL 15+
- Gradle 7.6+
- IDE (IntelliJ, Eclipse ou VS Code)

### Configuração do Banco de Dados
1. Crie um banco PostgreSQL:
```sql
CREATE DATABASE demo_park;
```

2. Configure as variáveis de ambiente no arquivo `application.properties`:
```properties
spring.datasource.url=jdbc:postgresql://localhost:5432/demo_park
spring.datasource.username=seu_usuario
spring.datasource.password=sua_senha
```

### Variáveis de Ambiente
| Variável                  | Valor Padrão          | Descrição                           |
|---------------------------|-----------------------|-------------------------------------|
| JWT_SECRET_KEY            | suaChaveSecreta       | Chave para assinatura dos tokens JWT |
| JWT_EXPIRATION_MS         | 86400000              | Tempo de expiração do token (24h)   |

## ▶️ Executando a Aplicação

1. Clone o repositório:
```bash
git clone https://github.com/lhcamposs/demo-park-api.git
```

2. Construa o projeto com Gradle:
```bash
cd demo-park-api
./gradlew build
```

3. Execute a aplicação:
```bash
./gradlew bootRun
```

A aplicação estará disponível em: `http://localhost:8080`

## 🔍 Testando a API

### Usuários de Teste
| Email               | Senha   | Perfil |
|---------------------|---------|--------|
| admin@email.com     | 123456  | ADMIN  |
| usuario@email.com   | 123456  | USER   |

### Coleção Postman
Importe a coleção incluída no projeto:  
`/postman/Demo Park.postman_collection.json`

### Exemplo de Requisição (Login):
```bash
curl -X POST 'http://localhost:8080/api/auth/login' \
-H 'Content-Type: application/json' \
-d '{
    "email": "admin@email.com",
    "password": "123456"
}'
```

## 📚 Endpoints Principais

### Autenticação
| Método | Endpoint         | Descrição               |
|--------|------------------|-------------------------|
| POST   | /api/auth/login  | Autentica um usuário    |

### Estacionamentos
| Método | Endpoint         | Descrição                         | Permissão |
|--------|------------------|-----------------------------------|-----------|
| POST   | /api/parkings    | Cria um novo estacionamento       | ADMIN     |
| GET    | /api/parkings    | Lista todos os estacionamentos    | Público   |
| GET    | /api/parkings/{id}| Busca estacionamento por ID       | Público   |

### Reservas
| Método | Endpoint             | Descrição                     | Permissão |
|--------|----------------------|-------------------------------|-----------|
| POST   | /api/reservations    | Cria uma nova reserva         | USER      |
| GET    | /api/reservations    | Lista reservas do usuário     | USER      |
| DELETE | /api/reservations/{id}| Cancela uma reserva           | USER      |

## 🧪 Executando Testes
```bash
./gradlew test
```

## 📦 Estrutura do Projeto
```
src/
├── main/
│   ├── java/
│   │   └── com/
│   │       └── demo/
│   │           └── parkapi/
│   │               ├── config/       # Configurações da aplicação
│   │               ├── controller/   # Controladores REST
│   │               ├── exception/    # Tratamento de erros
│   │               ├── model/        # Entidades JPA
│   │               ├── repository/   # Repositórios de dados
│   │               ├── service/      # Lógica de negócio
│   │               └── web/          # DTOs e mapeamentos
│   └── resources/                    # Arquivos de configuração
└── test/                             # Testes automatizados
```

## 📈 Próximos Passos (Roadmap)
- Implementar paginação em endpoints de listagem
- Implementar sistema de refresh token
- Integrar com sistema de pagamentos
- Adicionar monitoramento com Spring Actuator
- Implementar Dockerização

## 🤝 Contribuição
Contribuições são bem-vindas! Siga os passos:
1. Faça um fork do projeto
2. Crie uma branch (`git checkout -b feature/nova-feature`)
3. Faça commit das alterações (`git commit -m 'Adiciona nova feature'`)
4. Faça push para a branch (`git push origin feature/nova-feature`)
5. Abra um Pull Request

## 📄 Licença
Este projeto está licenciado sob a MIT License - veja o arquivo [LICENSE](LICENSE) para detalhes.

---
**Desenvolvido por [Luan Henrique Campos Soares]** - [lhcampossoares@gmail.com](mailto:lhcampossoares@gmail.com)  
[🔗 LinkedIn](https://www.linkedin.com/in/lhcampos/) | [🐱 GitHub](https://github.com/lhcamposs)
