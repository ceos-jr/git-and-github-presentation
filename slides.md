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

---

# Instalando o Git

## No Windows

### Outras versões do Windows

Baixe o [Git para Windows](https://git-scm.com/download/win) para a arquitetura do seu computador 64 bits ou 32
_use o comando `Win + PauseBreak` para ver qual a versão do seu computador_

E siga todos os passos até terminar a instalação.

---

# Instalando o Git

## No Linux

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

```
~~~bash
rm -rf /tmp/kkk/
~~~
```

---

# Adicionando e Commitando modificações

## Git Status

Fazer um `commit` é semelhante a fazer um save em um jogo. Estamos tirando um retrato de um repositório git no tempo.
Com o Git, podemos salvar o estado de vários arquivos e pastas juntos e voltar para esse save quando quisermos

Para fazer isso vamos conhecer nosso primeiro comando o `git status`, que nos dá informação do que está acontecendo
no nosso `Repo`

```bash
git status
```

---

# Adicionando e Commitando modificações

## Git Status

Ele é extremamente útil, mas somente quando já temos um repositório rodando, se você tentar usar esse comando agora
provavelmente ele dará um erro

```
~~~bash
echo "fatal: not a git repository (or any parent up to mount point /)
Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not set).
"
~~~
```

Isso acontece porque você não tem nenhum repositório git rodando na pasta.
Para resolver isso vamos introduzir um novo comando o `git init` que inicia um novo repositório git

---

# Adicionando e Commitando modificações

## Git Init

```bash
git init .
```

Output

```bash
~~~bash
git init /tmp/kkk/
~~~
```

Esse comando gera uma nova pasta chamada `.git` que na maioria dos sistemas ela é escondida e só pode
ser vista habilitando uma opção de ver arquivos escondidos

> É nessa pasta que toda a magia do Git acontece, se você deletar ela você perde todo o seu progresso do repositório e ele passa a ser uma pasta normal

---

# Adicionando e Commitando modificações

## Git Status Continuação

Agora tente criar um novo arquivo chamado `meu_livro.txt` e adicione algumas coisas nele. Após isso, use o `git status` para ver as mudanças no seu `Repo`, você deve ver agora algo semelhante com a image abaixo.

```
~~~bash
touch /tmp/kkk/meu_livro.txt && git -C /tmp/kkk/ status
~~~
```

---

# Adicionando e Commitando modificações

## Git Add

Ela está dizendo que há arquivos que **não** estão sendo acompanhandos pelo Git e para acompanhar esse novo arquivo
conheceremos um novo comando o `git add`

```bash
git add meu_livro.txt
```

```
~~~bash
git -C /tmp/kkk/ add meu_livro.txt
~~~
```

> Esse comando adiciona as mudanças que aconteceram em um arquivo ou no repositório para o Git acompanhar.

---

# Adicionando e Commitando modificações

## Commitando

Você deve ver uma mensagem dizendo que `há mudanças para ser comentadas`, o que nos leva a mais um comando kkk, o `git commit` que faz esse comentário para nós.

Sugiro que utilize o `git commit` com a opção `-m` pois ele irá adicionar uma mensagem automaticamente no commit como

```bash
git commit -m 'adicionando meu_livro.txt'
```

```
~~~bash
git -C /tmp/kkk/ commit -m 'adicionando meu_livro.txt'
~~~
```

Pronto, você adicionou seu primeiro comentário no Git e sua mudança está salva no Git 🎆

---

# Adicionando e Commitando modificações

## Git log

Tá mais e se eu quiser ver os commits um dia? Como eu faço?

Para mostrar esses e outros commits no git utilize o comando `git log` ou `git log --oneline`
para mostrar esse log de forma reduzida

```
~~~bash
git -C /tmp/kkk/ log --oneline | head -n 3
~~~
```

Dessa forma você consegue ver todos os seus commits e dos seus colegas

---

# Adicionando e Commitando modificações

## Workflow

Esse vai ser o seu workflow básico do git:

1. Fazer uma mudança
2. Adicionar essa mudança
3. Comentar essa mudança

---

# Adicionando e Commitando modificações

## Dicas

- Cuidado com o `git add .` ele adiciona absolutamente tudo que foi feito alteração, utilize apenas quando todos os arquivos modificados estão relacionados
- O estilo de commit depende muito da sua equipe, alguns preferem poucos commits, outros preferem mais commits.
- Independente da escolha da sua equipe seu repositório privado **é seu** e você pode commitar da forma que quiser. Mas quando for para o público se adeque a sua equipe

---

# Adicionando e Commitando modificações

## Atividade - `Vamos as Compras`

1. Crie uma nova pasta chamada `Shopping`
2. Inicialize um novo repositório Git na pasta Shopping
3. Crie um arquivo chamado frios.txt
4. Crie um novo arquivo chamado bebidas.txt
5. Crie um commit com o dois arquivos vazios com a mensagem `criado as listas de frios e bebidas`
6. No arquivo `frios.txt` adicione as seguintes mudanças

   - 500 g de Queijo
   - 500 g de Presunto

7. No arquivo `bebidas.txt` adicione as seguintes mudanças

   - 2 Cocas de 2 Litros
   - 4 RedBull

8. Crie um novo commit que inclua apenas as mudanças no `frios.txt` com a mensagem `adicionando items a lista de frios`
9. Crie um novo commit que inclua apenas as mudanças no `bebidas.txt` com a mensagem `adicionando items a lista de bebidas`
10. Use um comando do git para mostrar os commits, você deve ver 3;

---

# Adicionando e Commitando modificações

## Resultado da atividade

```
~~~bash
rm -rf /tmp/compras/ > /dev/null && \
mkdir -p /tmp/compras > /dev/null && \
git init /tmp/compras/ > /dev/null && \
touch /tmp/compras/{frios.txt,bebidas.txt} && \
git -C /tmp/compras/ add . > /dev/null && \
git -C /tmp/compras/ commit -m "criado as listas de frios e bebidas" > /dev/null && \
echo "500g de Queijo\n500g de Presunto" > /tmp/compras/frios.txt && \
echo "2 Cocas de 2 litros\n4Redbulls" > /tmp/compras/bebidas.txt && \
git -C /tmp/compras/ add frios.txt > /dev/null && \
git -C /tmp/compras/ commit -m "adicionando items a lista de frios" > /dev/null && \
git -C /tmp/compras/ add bebidas.txt > /dev/null && \
git -C /tmp/compras/ commit -m "adicionando items a lista de bebidas" > /dev/null
~~~
```

```
~~~bash
git -C /tmp/compras/ log --oneline
~~~
```

---

# Branches

## Por que diabos usamos branches

Imagine um cenário onde uma equipe está trabalhando no desenvolvimento de um site.
Nela você tem 3 pessoas:

- `MX30` - que está trabalhando no formulário de contato
- `Poatan` - que está trabalhando na barra de navegação
- `JOSIAS` - que está trabalhando no tema noturno do site

Nessa equipe, para maximizar os resultados, todos trabalham ao mesmo tempo nas suas funções.

---

# Branches

## Por que diabos usamos branches

Porém é muito grande a chance de JOSIAS, que está modificando o tema de **todo o site**, atrapalhar
MX30, que mexe no formulário. Isso geraria uma grande confusão na equipe onde MX30 ameaçaria de morte
JOSIAS.

Felizmente, com o Git isso não acontece, pois nós conseguimos compartimentalizar cada trabalho com **Branches**
isolando o trabalho de JOSIAS do MX30

---

# Branches

## Criando Branches no Git

Para começar vamos introduzir um novo comando `git branch`, esse comando lista cada branch disponível
no nosso repositório

Com ele você pode ver a branch que você atualmente está, _é a que possui um \*_, e todas as outras branchs.

```bash
* main
```

Agora vamos criar um novo repositório chamado `wordpress-sux`

> Se você não lembra como criar o repositório volte para o tópico anterior

---

# Branches

## Criando Branches no Git

Nele nós vamos criar um primeiro arquivo chamado `navbar.txt`, adicione o que quiser nesse arquivo e faça
um commit dele.

Depois vamos introduzir uma nova branch chamada `formulario`, para criar uma nova branch use o comando
`git branch nome-da-branch`, substituindo `nome-da-branch` por `formulario`

Isso vai gerar uma nova branch chamada `formulario`, que nós podemos confirmar com o comando `git branch`
como na imagem abaixo

```
~~~bash
rm -rf /tmp/branches > /dev/null && \
mkdir -p /tmp/branches > /dev/null && \
git init /tmp/branches/ > /dev/null && \
touch /tmp/branches/{frios.txt,bebidas.txt} && \
git -C /tmp/branches/ add frios.txt > /dev/null && \
git -C /tmp/branches/ commit -m "criado as listas de frios e bebidas" > /dev/null && \
git -C /tmp/branches/ branch formulario >/dev/null; \
git -C /tmp/branches/ branch
~~~
```

---

# Branches

## Criando Branches no Git

Porém nós ainda não trocamos de branch, _só olhar pro \* no nome da branch_, para fazer isso nós podemos
usar um novo comando `git switch nome-da-branch`, trocando `nome-da-branch` por `formulario`

```
~~~bash
git -C /tmp/branches/ switch formulario >/dev/null; \
git -C /tmp/branches/ branch
~~~
```

Pronto você acabou de trocar de branch. Adicione um arquivo chamado `formulario.txt` com qualquer
conteúdo que você quiser e faça um commit dessa alteração

```
~~~bash
touch /tmp/branches/formulario.txt && \
git -C /tmp/branches/ switch formulario >/dev/null && \
git -C /tmp/branches/ add . >/dev/null && \
git -C /tmp/branches/ commit -m 'adicionar formulario' >/dev/null
~~~
```

---

# Branches

## Criando Branches no Git

Essa branch `formulario` ela é isolada da sua branch original, ou seja, qualquer modificao
na formulario não afeta sua branch `main`

Você pode verificar isso voltando para a sua branch original `git switch main` e verificar
que o arquivo formulario não está presente nela.

_*Assim você acabou de impedir inúmeras brigas na sua equipe*_

> A sua branch original ela pode está nomeada `master`, pesquise no google porque as pessoas
> estão mudando para main.

---

# Branches

## Git Checkout

Até um tempo atrás usavamos `git checkout <branch-name>` para alternar as branchs. Isso ainda funciona.

O comando checkout faz um milhão de coisas adicionais, então foi tomada a decisão de adicionar um comando
switch autônomo que é muito mais simples.

Você verá tutoriais e documentos mais antigos usando checkout em vez de switch. Ambos agora funcionam

---

# Branches

## Trocando de branch com arquivos não commitados

Muito provavelmente você vai se deparar com o seguinte erro quando estiver mudando de branch
![checkout erro](https://i.stack.imgur.com/pg4Xk.png)

Esse erro ocorre por causa que há arquivos modificados não commitados na branch atual que
serão modificados ao trocar de branch

Para resolver esse error você tem duas opções:

- Ou fazer um commit com essa alteração
- Ou fazer stash desses arquivos, _nós vamos ver isso depois_

Ao fazer um dos dois você já pode trocar de branch sem problemas

> Se o arquivo que não foi commitado não existir na branch que tu vai trocar ele vai ir pra essa nova
> branch, então sempre faça o commit das suas alterações ou faça squash

---

# Branches

## Renomeando Branchs

Beleza você já sabe criar branches e mudar para elas, mas e se tu quiser renomear a tua branch `MX30-ROCKS`
para um nome decente.

Bom com o Git isso é possível, basta ir até a branch que você quer mudar o nome `git switch MX30-ROCKS` e usar o comando `git branch -m <um-nome-melhor>` que ele mudará o nome da branch.

Antes:

```
~~~bash
git -C /tmp/branches/ branch
~~~
```

Depois:

```
~~~bash
git -C /tmp/branches/ branch -m formulario-renomeado && /
git -C /tmp/branches/ branch
~~~
```

---

# Branches

## Renomeando Branchs

Agora se você quer deletar essa branch horrível `MX30-ROCKS` basta utilizar o comando
`git branch -d <nome-da-branch` para deletar ela.

> Sempre troque da branch que você quer deletar antes de deletar ela

Se as alterações dessa branch não forem implementadas em outra branch, _iremos ver isso no futuro_,
é necessário forçar essa deleção com `git branch -D <nome-da-branch` com o "D" maiúsculo.

---

# Branches

## Dicas

- Você pode criar uma branch e já mudar pra ela com o comando `git switch -c <nome-da-branch>` ou `git checkout -b <nome-da-branch>`

---

# Branches

## Atividade - `Vamos Pular`

1. Crie um novo repositŕio chamado `pagode`
2. Gere um novo arquivo vazio chamado `as-melhores.txt`
3. Crie um commit com a mensagem `adicionando lista das melhores`
4. Crie duas novas branchs chamadas `exaltasamba` e `menos-eh-mais`
5. Mude para a branch `exaltasamba` utilizando o **novo** comando e modifique o arquivo `as-melhores.txt` com o conteúdo
   - Tá vendo aquela lua
   - Livre Pra Voar
   - Teu Segredo
   - Me Apaixonei Pela Pessoas Errada
   - Viver sem ti

---

# Branches

## Atividade - `Vamos Pular`

6. Crie um commit com a mensagem `adicionar as melhores do exaltasamba`
7. Mude para a branch `menos-eh-mais` com o **velho** comando e modifique o arquivo `as-melhores.txt` com o conteúdo
   - Melhor eu Ir
   - Fatalmente
   - Drama
   - Vai me dando corda
   - Adorei
8. Crie um commit com a mensagem `adicionar as melhores do menos-eh-mais`
9. Use o comando do git para lista todas as branchs, você deve ver 3
10. De uma pausa e vá escutar essa músicas

![pepe](https://media.tenor.com/D_F--PvRH4wAAAAi/pepe-listening-to-music.gif)

---

# Branches

## Resultado da Atividade

```
  exaltasamba
  main
* menos-eh-mais
```

---

# Merge e Resolvendo Conflitos

## O que é e pra que fazemos Merge

Vamos começar relembrando a situação do nosso time do tópico passado que está fazendo um site

- `MX30` - que está trabalhando no formulário de contato
- `Poatan` - que está trabalhando na barra de navegação
- `JOSIAS` - que está trabalhando no tema noturno do site

Agora imagine que MX30 terminou seu trabalho de fazer o formulário e o JOSIAS está esperando
esse resultado para implementar o modo noturno nele.

---

# Merge e Resolvendo Conflitos

## O que é e pra que fazemos Merge

Como que JOSIAS pode integrar as alterações que MX30 fez? Sendo que com as Branches esses
trabalhos ficam completamente isolados.

É ai que entra o **Merge**, merge é o ato de unir duas branches separadas e incorporar
as mudanças de uma branch em outra.

Assim JOSIAS pode continuar seu trabalho e MX30 pode fazer outra coisa.

---

# Merge e Resolvendo Conflitos

## Merge no Git

Digamos que nós temos 2 branchs no nosso repositório `formulario` e `dark-mode`

Como MX30 terminou seu trabalho na branch de formulário, JOSIAS pode adicionar as mudanças de
MX30 pelo comando `git merge <nome-da-branch>` na sua branch

---

# Merge e Resolvendo Conflitos

## Merge no Git

Porém 3 coisas podem acontecer quando JOSIAS fizer o merge:

- Não houve nenhuma modificação na branch `dark-mode` depois que MX30 começou a fazer as
  modificações
- Houve modificações na branch `dark-mode` após MX30 começar a modificar, porém essas modificações
  na `dark-mode` não afetam nenhum arquivo que MX30 alterou
- Houve modificações na branch `dark-mode` após MX30 começar a modificar e essas modificações
  mexeram nos mesmos arquivos que MX30 alterou

Os primeiros dois casos são mais simples de se resolver, já o terceiro kkkk, você vai descobrir

---

## Merge no Git

### Primeiro caso - Fast Forward

Esse é o caso mais simples de merge onde as duas branchs possuem os mesmos commits só que uma
está alguns commits na frente da branch que receberá a integração

Imagine o caso que nós possuimos duas branches uma `master` e outra chamada `formulario`, onde
elas possuem os mesmos commits, porém a formulário difere da `master` por dois commits adicionais
![Imgur](https://i.imgur.com/mhEoLcG.png)

---

## Merge no Git

### Primeiro caso - Fast Forward

Quando rodarmos o comando `git merge formulario` na branch `master` o git apenas irá pegar a HEAD da master e apontar pro último commit do formulario

> Se você não sabe o que é HEAD de uma branch é sempre o último commit da branch que você está

---

## Merge no Git

### Segundo Caso - Merge sem Conflito

Nesse caso a o mesmo tempo que a branch `formulario` é modificada a branch `master` também foi
modificada, porém essas modificações na `master` não geram nenhum conflito com as `formulario`

Olhe o exemplo abaixo:

---

## Merge no Git

### Segundo Caso - Merge sem Conflito

- Modificações da branch master

```
//site.txt @ branch master

começo do site
```

- Modificações da branch formulario

```
//formulario.txt @ branch formulario

formulario aqui
```

---

## Merge no Git

### Segundo Caso - Merge sem Conflito

Quando fazemos o comando `git merge formulario` na `master` o git criar um novo commit que irá mesclar as duas branches, pois elas estão modificando coisas diferentes

---

## Merge no Git

### Terceiro Caso - Merge com conflito ⚠️⚠️⚠️

Agora sim, esse é o caso que você tem que se preocupar, porque em projetos reais você irá modificar
um arquivo que seu amigo está modificando em outras branches

Porém isso irá um conflito, pois o git não sabe que alterações ele deve levar em conta para
prosseguir

```
~~~bash
rm -rf /tmp/conflict/ && \
mkdir -p /tmp/conflict && \
git init /tmp/conflict > /dev/null && \
touch /tmp/conflict/test.txt && \
git -C /tmp/conflict/ add . > /dev/null && \
git -C /tmp/conflict/ commit -m 'start' > /dev/null && \
git -C /tmp/conflict/ switch -c tubias && \
echo "test1" > /tmp/conflict/test.txt && \
git -C /tmp/conflict/ add . > /dev/null && \
git -C /tmp/conflict/ commit -m 'test1' > /dev/null && \
git -C /tmp/conflict/ switch main && \
echo "test2" > /tmp/conflict/test.txt && \
git -C /tmp/conflict/ add . > /dev/null && \
git -C /tmp/conflict/ commit -m 'test2' > /dev/null
~~~
```

```
~~~bash
git -C /tmp/conflict/ merge tubias || echo
~~~
```

---

## Merge no Git

### Terceiro Caso - Merge com conflito ⚠️⚠️⚠️

Imagine que agora MX30 e JOSIAS estão fazendo uma lista das **melhores músicas de todos os tempos** usando git.

Mas como você já percebeu até aqui eles não se dão muito bem e não seria na escolha das
músicas que eles iriam concordar

Dentro desse repositório há apenas um arquivo chamado `as-melhores.txt`, onde MX30 na sua branch
`top-do-top` adicionou as seguintes modificações

```
1. La bohème
2. Moonlight Sonata
3. Viva La Vida
```

---

## Merge no Git

### Terceiro Caso - Merge com conflito ⚠️⚠️⚠️

E JOSIAS na sua branch `as-verdadeiras` adicionou essas modificações

```
1. Os céus declaram
2. Castelo forte
3. O Senhor é minha luz
```

JOSIAS, como é não é otário, fez o merge das modificações dele na `main` antes de MX30 e falou `te vira ai caba`

---

## Merge no Git

### Terceiro Caso - Merge com conflito ⚠️⚠️⚠️

Quando MX30 vai fazer o merge na `main` das modificações dele ele se depara com um erro dizendo que ele precisa resolver os conflitos antes de fazer o merge

Em choque, MX30 chama a ajuda do justo Poatan que estudou Git para resolver esse conflito

---

## Merge no Git

### Terceiro Caso - Merge com conflito ⚠️⚠️⚠️

Ao chegar no computador de MX30, Poatan diz para MX30 se acalmar e mostra uma forma de resolver conflitos

```
//as-melhores.txt em conflito @ branch main
<<<<<<< HEAD
1. Os céus declaram
2. Castelo forte
3. O Senhor é minha luz
=======
1. La bohème
2. Moonlight Sonata
3. Viva La Vida
>>>>>>> top-do-top
```

---

## Merge no Git

### Terceiro Caso - Merge com conflito ⚠️⚠️⚠️

1. Abra o arquivo que está em conflito
2. Edite o arquivo e remova os conflitos, você vai decidir o que você quer fazer com os conflitos
   - Escolher apenas um das branchs
   - Escolher as duas
   - Escolher nenhuma e modificar do jeito que quiser
3. Elimine os `marcadores de conflito` no documento
   - São os `<<<<<< HEAD`, `=======` e `>>>>>>top-do-top`
4. Adicione suas mudanças e faça um commit

---

## Merge no Git

### Terceiro Caso - Merge com conflito ⚠️⚠️⚠️

Com esse passo a passo, Poatan decidiu que ambos estavam corretos e assim `as-melhores` recebeu
todas as músicas

```
//as-melhores.txt @ branch main
1. Os céus declaram
2. Castelo forte
3. O Senhor é minha luz
4. La bohème
5. Moonlight Sonata
6. Viva La Vida
```

Dessa forma, tanto Poatan como você, podem resolver os conflitos que vierem no git

---

## Merge no Git

### Resolvendo conflitos no VS Code

Se você estiver com o VS Code como seu editor, resolver conflitos é muito mais fácil,
pois basta clickar em qual modificação vai ser aceita no topo da tela
![vscode conflict](https://i.stack.imgur.com/9Yz5D.jpg)

---

# Merge e Resolvendo Conflitos

## Atividade - `Fast Forward Merge`

Crie um novo repositório com um arquivo `melhores-filmes.txt`

Seu objetivo é gerar uma Fast Forward Merge. Faça algumas modificações no arquivo em outra branch
e faça o merge na `master`, ele deve dar um fast forward merge

Cole o resultado do comando `git log --all --decorate --oneline --graph` na resposta

---

# Merge e Resolvendo Conflitos

## Resultado - `Fast Forward Merge`

```
* 874278d (HEAD -> main, tubias) another one
* 05a3d8f as melhores
```

---

# Merge e Resolvendo Conflitos

## Atividade - `Merge sem Conflitos`

Crie um novo repositório com um arquivo `melhores-filmes.txt`

Seu objetivo é gerar um Merge Commit sem conflitos. Faça algumas modificações no arquivo
em outra branch e faça o merge na `master`, ele deve dar um Merge Commit

Cole o resultado do comando `git log --all --decorate --oneline --graph` na resposta

---

# Merge e Resolvendo Conflitos

## Resultado - `Merge sem Conflitos`

```
*   6ec9909 (HEAD -> main) Merge branch 'tubias'
|\
| * de6af5b (tubias) another one
* | 3b9aa02 add potaria
|/
* 1560e5d as melhores
```

---

# Merge e Resolvendo Conflitos

## Atividade - `Merge com Conflitos`

Crie um novo repositório com um arquivo `melhores-filmes.txt`

Seu objetivo é gerar um Merge Commit **com conflitos**. Faça algumas modificações no arquivo
em outra branch e faça o merge na `master`, ele deve chorar por causa de conflitos e você deve
resolver eles

Cole o resultado do comando `git log --remerge-diff` na resposta

---

# Merge e Resolvendo Conflitos

## Resultado - `Merge com Conflitos`

```
commit 23bb19c9b32ea55571bc97ae29180a797ef6d7b5 (HEAD -> main)
Merge: 99bc31b b306a7a
Author: taldoflemis <coderflemis@gmail.com>
Date:   Thu Sep 7 18:15:11 2023 -0300

    Merge branch 'tubias'

remerge CONFLICT (content): Merge conflict in as-melhores.txt
───────────────────────────────────────────────
modified: as-melhores.txt
───────────────────────────────────────────────
@ as-melhores.txt:1 @
<<<<<<< 99bc31b (adicionar exalta)
 Potaria
=======
   - Melhor eu Ir
   - Fatalmente
   - Drama
   - Vai me dando corda
   - Adorei

>>>>>>> b306a7a (adicionar menos é mais)

commit 99bc31b787dc7206eb451b19290613a35d21cd42
```

---

# Github

## O que é Github

Vamos continuar com a nossa turminha do barulho que está fazendo um site. Nossos amigos agora estão trabalhando em locais diferentes, Poatan está em em `Connecticut`, JOSIAS está na `Beira Mar` e MX30 em `Berlim`

Antigamente esses 3 trabalhavam em um único PC e as mudanças que um fazia podiam ser implementadas pelo outro facilmente, porém isso não é mais possível dado a distância física entre eles

Mas nada está perdido, pois nós temos o `Github`, uma plataforma de colaboração de códigos que permite um usuário enviar seus repositórios git para a nuvem

Assim, esses 3 🤡 podem ficar em dias com as mudanças dos outros não importando a distância

---

# Github

## Ué, mas Git e Github não é a mesma coisa?

Não jovem, não são a mesma coisa. Git é a ferramenta que nós usamos para fazer o versionamento local dos nossos códigos e Github é uma plataforma que permite que esse compartilhar esse versionamento na nuvem

> Há outros competidores do Github como o Gitlab, Bitbucket, Gitea, Forgejo..., mas iremos focar no Github que a maioria dos desenvolvedores usa

```

  ▄████  ██▓▄▄▄█████▓ ██░ ██  █    ██  ▄▄▄▄
 ██▒ ▀█▒▓██▒▓  ██▒ ▓▒▓██░ ██▒ ██  ▓██▒▓█████▄
▒██░▄▄▄░▒██▒▒ ▓██░ ▒░▒██▀▀██░▓██  ▒██░▒██▒ ▄██
░▓█  ██▓░██░░ ▓██▓ ░ ░▓█ ░██ ▓▓█  ░██░▒██░█▀
░▒▓███▀▒░██░  ▒██▒ ░ ░▓█▒░██▓▒▒█████▓ ░▓█  ▀█▓
 ░▒   ▒ ░▓    ▒ ░░    ▒ ░░▒░▒░▒▓▒ ▒ ▒ ░▒▓███▀▒
  ░   ░  ▒ ░    ░     ▒ ░▒░ ░░░▒░ ░ ░ ▒░▒   ░
░ ░   ░  ▒ ░  ░       ░  ░░ ░ ░░░ ░ ░  ░    ░
      ░  ░            ░  ░  ░   ░      ░
                                            ░
```

---

# Github

## Clonando repositórios

Tá, já entendo qual o propósito do Github, mas como utilizar esses repositórios da nuvem?

É ai que vem o comando `git clone <url-do-repo>` que nos permite replicar todo um repositório git que está na nuvem para o nosso computador

- Ex: `git clone https://github.com/talDoFlemis/mrfisch.git`

> Nós não estamos limitados a fazer clone apenas de repositórios no Github, o comando git clone faz parte do git

Em via de regra, se você consegue ver um repositório tu consegue clonar ele, mas em alguns casos é necessário algumas permissões que vamos configurar jaja

---

# Github

## Configurando SSH Keys

Não é necessário ter SSH keys para trabalhar com o Github, mas toda vez que você fizer um clone, enviar modificações no repositório ele ficará pedindo a senha do teu Github, mas nós vamos fazer para facilitar nossa vida

Acesse o [link da documentacao do github](https://docs.github.com/pt/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) para criar sua própria SSH Key

---

# Github

## Remote

Antes de nós enviarmos qualquer coisa para o Github, nós precisamos entender o que são
repositórios remotos

No git, nos referimos os destinos na nuvem como `remotes`, que são URL onde estão nossos
repositórios no Github.

Para visualizar qualquer **remote** no seu repositório use o comando `git remote` ou
`git remote -v` para mostrar mais detalhes

Provavelmente não deve ter nada na saída desse comando, porque nós não adicionamos nenhum
repositório remoto

---

# Github

## Remote

Para fazer isso nós vamos usar o comando `git remote add <nome> <url-do-repo>`

Basicamente o que estamos dizendo ao git é adicione um repositório remoto de url <url-do-repo>
e nome <nome>

Por convenção nós normalmente usamos `origin` como nome do remote, mas isso pode ser qualquer
nome como `git remote add tubias https://github.com/tubias/tubiasrocks.git`, que vai adicionar um
remote com o url `https://github.com/tubias/tubiasrocks.git` com o nome de `tubias`

Nós podemos também renomear um remote com o comando `git remote rename <antigo> <novo>` ou
deletar ele `git remote remove <name>`

---

# Github

## Criando um repositório no Github

Vamos parar de enrolar e realmente fazer alguma coisa no Github

Primeiro vá no site do Github e procure a opção de criar um novo repositório, você deve se deparar
com uma tela semelhante a essa

![github create](https://git-scm.com/book/en/v2/images/newrepoform.png)

---

# Github

## Criando um repositório no Github

Nessa tela, você pode modificar o nome do repositório, adicionar descrição e um monte de opção que você
não deve mexer agora. Agora clique no botão de criar repositório e **voilá**, você tem um `repo` no Github

A primeira tela depois de criado o repositório é provavelmente essa
![push create page](https://cdn.hashnode.com/res/hashnode/image/upload/v1635140780469/XtUegZPbD.png)

Essa tela indica que o seu repositório foi criado com sucesso mais não tem absolutamente nada nele,
por isso nós precisamos popular ele de duas formas

- Criando um novo repositório do zero
- Ou enviando um repositório pré-existente pro Github

Em ambos os casos você precisa enviar essas mudanças que estão na sua máquina local pro Github com
o próximo comando

---

# Github

## Pushing

Beleza, você já fez suas alterações, adicionou elas e comitou. Agora é hora de enviar pro Github,
para fazer isso vamos utilizar o comando `git push <remote> <branch>` que envia para o repositório
remoto uma branch local sua

Como configuramos nosso remote para ser `origin` iremos enviar para ela as nossas branchs

Tente voce mesmo, crie e envie para o github seus arquivos com esse comando, se voce for na
página do seu repositório ele provavelmente já deve aparecer

> **git push tubias master** vai enviar para o remote `tubias` a branch local `master`

> Esse comando cria uma nova branch no repositório remoto com o mesmo nome da local, mas se quisermos mudar o nome da branch remota usamos o comando `git push <remote> <branch-local>:<branch-remota>`

---

# Github

## Pushing

Tá, mas toda vida ter que escrever esse comando é meio chato e lento. Tem alguma forma
de fazer isso mais rápido não?

Felizmente, tem sim jovem. Para enviarmos nossas mudanças rapidamente pro o Github nós usamos
a opção `-u` que seta uma upstream da branch local para trackear a branch remota

Assim basta você escrever `git push` que ele automaticamente envia para a branch remota lá no
Github, funcionando como uma memória

---

# Github

## Workflow Atual

- Cria ou modifica arquivos
- Adiciona essas modificações e faz um commit com elas
- Cria branch para fazer essas modificações em separado
- Faz o push dessas modificações para o Github
  ![new workflow](<https://www.legitsecurity.com/hs-fs/hubfs/Frame%201%20(1).png?width=1575&name=Frame%201%20(1).png>)

Com isso você já tem o básico para trabalhar com Git e Github 🎉

---

# Conclusão

Eu recomendo que você busque mais conteúdos dentro do Curso de Git que a CEOS comprou
ou busque pela internet os seguintes tópicos

- `Rebase` (EXTREMAMENTE LEGAL, MAS MUITO COMPLICADO PARA EXPLICAR NA INTRODUÇÃO DE GIT)
- `Bisect`
- `Desfazer` Mudanças no Git
- `Stash`
- `Git pull e Fetch`
- `Cherry Picking`

Com isso você vai está utilizando o Git em 100% e não vai ser um leiteiro que ouve a palavra Rebase
e fica morrendo de medo

---

# Conteúdo de Suporte

- [Git Doc](https://git-scm.com/doc): Não existe lugar melhor do que a própria documentação do git
- [Git Head](https://www.youtube.com/watch?v=ZaI1co-rt9I&pp=ugMICgJwdBABGAE%3D): Video sobre o que é um HEAD No git
- [Learn Git Branching](https://learngitbranching.js.org/?locale=pt_BR): Desafios de Git para quem quiser se desafiar e praticar mais
- [Learn Rebase](https://www.youtube.com/watch?v=f1wnYdLEpgI&pp=ygUKZ2l0IHJlYmFzZQ%3D%3D): Material para entender o conceito de Rebase
- [Merge vs Rebase](https://www.youtube.com/watch?v=7Mh259hfxJg): Vídeo discutido o uso de Rebase vs Merge
- [Git Worktree](https://www.youtube.com/watch?v=2uEqYw-N8uE&pp=ygUMZ2l0IHdvcmt0cmVl): Vídeo pelo ThePrimeagen sobre uma das melhores features do Git que ninguem sabe
- [Git Bisect](https://www.youtube.com/watch?v=P3ZR_s3NFvM&pp=ugMICgJwdBABGAHKBQpnaXQgYmlzZWN0): Descubra o culpado por quebrar o código, você KEKW
