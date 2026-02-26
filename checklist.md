✅ Checklist — Squad de Desenvolvimento
Projeto: Sistema “Prato Solidário”

1. Validação do Modelo (DER → Modelo Relacional)
🔎 Entidades obrigatórias identificadas

- Doador

- Instituição (ONG)

- Doação

- Lote de Alimento

- Entrega

- Retirante (ONG ou Voluntário)

🔎 Relacionamentos corretos

- Um Doador → muitas Doações (1:N)

- Uma ONG → pode receber muitas Doações (1:N)

- Uma Doação → possui muitos Lotes (1:N)

- Um Lote → pertence a uma única Doação (N:1)

- Uma Entrega → vinculada a uma Doação (1:1 ou 1:N, conforme decisão técnica)

- Entrega vinculada a um responsável pela retirada

🔎 Resolução de N:N

- Caso exista relacionamento N:N, foi criada tabela associativa?

- As chaves estrangeiras estão explícitas?

2. Estrutura SQL
🧱 Criação de Tabelas

- Todas as tabelas possuem PRIMARY KEY

- CNPJ definido como UNIQUE

- Campos obrigatórios estão com NOT NULL

- Tipos de dados coerentes (DATE para validade, VARCHAR adequado, etc.)

🔐 Integridade Referencial

- Todas as FOREIGN KEYS foram implementadas

- Regras de DELETE/UPDATE foram definidas (CASCADE, RESTRICT, etc.)

- Não existem chaves órfãs possíveis

📊 Padronização

- Nomes de tabelas e colunas seguem padrão consistente

- Não há redundância desnecessária de dados

- Normalização ao menos até 3FN

3. Testes

- Inserção dos dados:

- Doador cadastrado

- Doação criada

- Lotes vinculados

- ONG reserva

- Entrega registrada

4. Organização do Repositório

- Script de criação do banco

- Script de inserts de teste

- Script de constraints

- README explicando decisões estruturais
