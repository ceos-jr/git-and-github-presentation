---
theme: ./dracula.json
author: Said Rodrigues
date: dd MMMM YYYY
paging: Slide %d / %d
---

```
~~~bash
figlet "git e github"
~~~
```

# O que é o git

Git é uma ferramenta de versionamento que permite registar alterações feitas em um código, armazenando essas alterações e permitindo que um programador possa voltar a um estado anterior
sem muitos problemas.

Algumas das funcoes que o `Git` nos ajuda

- Trackear as mudanças em inúmeros arquivos
- Comparar versões do projeto
- Voltar no tempo para versões anteriores
- Colaboração de códigos e mudanças

> Resumindo, é uma maquína que registra as tuas ações e tu pode **desfazer cada cagada** do passado
> como se nada tivesse acontecido além de facilitar o compartilhamento de código

---

# Instalando o Git

## No Windows

### Se estiver usando Windows 10 versão 2004 ou superior ou Windows 11

Recomendo a instalação do WSL(Windows Subsystem for Linux) que virtualiza um sistema linux para o teu terminal,
vai ser muito útil na hora de utilizar não só o Git mais qualquer aplicação que nós vamos usar para o resto da vida

Siga as instruções do [site da microsoft](https://learn.microsoft.com/pt-br/windows/wsl/install) para
concluir a instalação do WSL

### Outras versões do Windows

Baixe o [Git para Windows](https://git-scm.com/download/win) para a arquitetura do seu computador 64 bits ou 32
_use o comando `Win + PauseBreak` para ver qual a versão do seu computador_

E siga todos os passos até terminar a instalação.

## Instalando o Git no Linux

Provavelmente você não vai precisar de tutorial porque você está no sistema do **Linus**,
o criador do Linux e Git, que deve prover uma ferramenta git com ele.

Se não houver entre no [site do git](https://git-scm.com/download/linux) e baixe o git pelo seu
gerenciador de pacotes

---

# Configurações

## Configurando nome e email

Abra seu terminal ou o Git Bash no Windows e digite os seguintes comandos substituindo o
que está entre **aspas** pelos seus dados

```bash
git config --global user.name "SEU NOME"
```

```bash
git config --global user.email "SEU EMAIL"
```

Isso vai fazer uma configuração global do nosso nome e email que irá persistir em todos os nossos projetos

---

# Adicionando e Commitando modificações

## O que é um repositório

Um repositório ou `repo` é uma área de trabalho que acompanha as mudanças e organiza os arquivos
em uma pasta

Sempre que quisermos usar o Git com um projeto, aplicativo, etc, precisamos criar um novo repositório git.
Podemos ter quantos repositórios forem necessários em nosso PC, todos com históricos e conteúdos separados

---

# Adicionando e Commitando modificações

## Adicionando e Comentando

Fazer um `commit` é semelhante a fazer um save em um jogo. Estamos tirando um retrato de um repositório git no tempo.
Com o Git, podemos salvar o estado de vários arquivos e pastas juntos e voltar para esse save quando quisermos

Para fazer isso vamos conhecer nosso primeiro comando o `git status`, que nos dá informação do que está acontecendo
no nosso `Repo`

```bash
git status
```

Ele é extremamente útil, mas somente quando já temos um repositório rodando, se você tentar usar esse comando agora
provavelmente ele dará um erro
