🍽️ Prato Solidário

O sistema Prato Solidário é um pirojeto com o objetivo de gerenciar doações de alimentos entre doadores e ONGs, organizando alimentos em lotes e controlando entregas com integridade referencial.


🎯 Objetivo do Projeto

O sistema **Prato Solidário** foi criado para informatizar o processo de doação de alimentos, permitindo:

- Cadastro de doadores
- Cadastro de ONGs
- Registro de doações
- Organização dos alimentos em lotes
- Controle de entregas
- Registro de voluntários responsáveis pela retirada

O projeto aplica conceitos fundamentais de **Modelagem de Dados**, **DER**, **Modelo Relacional**, **Normalização (3FN)** e **Integridade Referencial**.

## 🧱 Tecnologias Utilizadas

- **MySQL Workbench**
- SQL (Structured Query Language)

📁 Estrutura do Repositório e Explicação dos Arquivos

📄 _database.sql
Responsável por criar o banco de dados `prato_solidario` e definir o schema padrão que será utilizado nos próximos scripts. Deve ser executado primeiro no MySQL Workbench.

📄 create_tables.sql
Cria as **tabelas principais** do sistema, chamadas de entidades fortes, que não dependem de outras tabelas.

Tabelas criadas:
- Doador
- ONG
- Voluntario
- Alimento

Essas tabelas possuem chaves primárias, campos obrigatórios e restrições como `UNIQUE`, garantindo integridade básica dos dados.

📄 create_tables_relations.sql
Cria as tabelas que representam os **relacionamentos entre as entidades**, porém sem as constraints de chave estrangeira.

Tabelas criadas:
- Doacao
- Lote_Alimentacao
- Alimento_has_Lote_Alimentacao
- Entrega

Essa separação facilita a organização do projeto e permite a criação das constraints em um arquivo próprio.

📄 _constraints.sql
Define todas as **constraints do banco**, principalmente as **FOREIGN KEYS**, garantindo a integridade referencial.

Esse arquivo assegura que:
- Não exista doação sem doador ou ONG
- Não exista lote sem doação
- Não exista alimento vinculado a lote inexistente
- Não exista entrega sem doação

Também define regras de exclusão e atualização (`CASCADE`, `RESTRICT`, `SET NULL`).

📄 inserts_test.sql
Contém dados fictícios utilizados para testar o funcionamento do banco de dados.

Permite validar:
- Inserção de registros
- Funcionamento das chaves estrangeiras
- Integridade do modelo relacional

▶️ Como Executar no MySQL Workbench

1. Abrir o MySQL Workbench
2. Conectar ao servidor MySQL
3. Abrir uma nova aba SQL
4. Executar os arquivos na seguinte ordem:

   1️⃣ _database.sql  
   2️⃣ create_tables.sql  
   3️⃣ create_tables_relations.sql  
   4️⃣ _constraints.sql  
   5️⃣ inserts_test.sql (opcional)
⚠️ A ordem de execução é fundamental para evitar erros de dependência.

🔐 Integridade Referencial

O projeto utiliza o mecanismo de armazenamento **InnoDB**, necessário para suporte a:

- Chaves estrangeiras
- Transações
- Consistência dos dados

Todas as tabelas possuem:
- `PRIMARY KEY`
- `FOREIGN KEY`
- Campos obrigatórios (`NOT NULL`)
- Regras de integridade definidas

📊 Normalização

O banco de dados está normalizado até a **Terceira Forma Normal (3FN)**, garantindo:

- Eliminação de redundância
- Dependência funcional correta
- Organização eficiente dos dados

📌 Considerações Finais

Este projeto foi desenvolvido com fins acadêmicos, utilizando **MySQL Workbench**, seguindo boas práticas de modelagem de dados e SQL. O modelo pode ser expandido futuramente para aplicações web ou sistemas corporativos.

👨‍💻 Autoria

Projeto desenvolvido para fins educacionais.
