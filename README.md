# Projeto WeGoGym - Em desenvolvimento

Projeto desenvolvido durante o curso de Engenharia de Software da Universidade Federal de São Paulo. O produto foi desenvolvido usando os conceitos da disciplina, sendo o principal a metodologia ágil Scrum. As etapas do desenvolvimento foram feitas durante as sprints semanais com o acompanhamento do docente como product owner.

## Objetivo

O projeto tem como objetivo facilitar a busca por academias de acordo com o perfil do cliente. Assim, visamos oferecer uma ampla gama de informações das academias cadastradas e oferecer uma interação maior entre a comunidade das academias.

Visite [WeGoGym](http://wegogym.herokuapp.com/)


## Instruções para rodar o projeto localmente:

* Dependencias:

    * [Docker](https://docs.docker.com/desktop/install/ubuntu/)

    * [Docker Compose](https://docs.docker.com/compose/install/)

    * [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

* Clone o repositorio com o comando `git clone https://github.com/joao-evaristo/Rails_Docker.git`;

* Entre na pasta da aplicação com `cd Rails_Docker`;

* Para criar e iniciar os containers e serviços, use `docker compose up app`;

* Apos a inicialização correta do container, pare a execução do mesmo (Ctrl-C);

* Entre dentro do container com `docker compose run app sh`;

* Dentro do container, rode o comando `rails db:create` em seguida `rails db:migrate`;

* Se as operações foram bem sucedidas, use Ctrl-D para sair do container;

* Para finalizar, inicialize novamente o container com `docker compose up app`;

* Acesse `localhost:3000` no seu navegador para acessar a aplicação.
