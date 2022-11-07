# README

Aplicacao web utilizando Ruby on Rails com Bootstrap e VueJS

Instrucoes:

* Dependencias:

    * [Docker](https://docs.docker.com/desktop/install/ubuntu/)

    * [Docker Compose](https://docs.docker.com/compose/install/)

    * [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

* Clone o repositorio com o comando `git clone https://github.com/joao-evaristo/Rails_Docker.git`;

* Entre na pasta da aplicacao com `cd Rails_Docker`;

* Para criar e iniciar os containers e servicos, use `docker compose up app`;

* Apos a inicializacao correta do container, pare a execucao do mesmo (Ctrl-C);

* Entre dentro do container com `docker compose run app sh`;

* Dentro do container, rode o comando `rails db:create` em seguida `rails db:migrate`;

* Se as operacoes foram bem sucedidas, use Ctrl-D para sair do container;

* Para finalizar, inicialize novamente o container com `docker compose up app`;

* Acesse `localhost:3000` no seu navegador para acessar a aplicacao.
