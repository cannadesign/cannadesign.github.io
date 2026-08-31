# Como publicar o portfólio

Tudo que você precisa está na pasta `site/`. Não precisa de terminal, nem instalar nada.

---

## Parte 1 — Colocar no ar (10 minutos)

### 1. Criar o repositório

Vá em [github.com/new](https://github.com/new) e crie um repositório com este nome exato:

```
guicannalonga.github.io
```

Troque `guicannalonga` pelo seu usuário do GitHub, se for diferente. **O nome precisa terminar em `.github.io`** — é isso que faz o GitHub servir o site na raiz do endereço, em vez de numa subpasta.

Marque **Public**. Não marque "Add a README file".

### 2. Subir os arquivos

Na tela do repositório recém-criado, clique em **uploading an existing file**.

Abra a pasta `site/`, selecione **tudo que está dentro dela** (os 4 arquivos HTML, o 404.html, o robots.txt, o `.nojekyll` e a pasta `assets`) e arraste para a área de upload do GitHub.

> Se o `.nojekyll` não aparecer no seu Finder: ele começa com ponto, então está oculto. Aperte `Cmd + Shift + .` no Finder para mostrar arquivos ocultos. Ele é pequeno mas importante — sem ele o GitHub pode ignorar algumas pastas.

Espere o upload terminar (são ~3 MB, rápido), escreva qualquer coisa no campo de descrição e clique em **Commit changes**.

### 3. Ligar o GitHub Pages

No repositório, vá em **Settings** → **Pages** (menu da esquerda).

Em "Build and deployment", deixe:
- Source: **Deploy from a branch**
- Branch: **main** e pasta **/ (root)**

Clique em **Save**.

Espere 1-2 minutos e seu site estará no ar em:

```
https://guicannalonga.github.io
```

**Esse link já pode ser compartilhado com recrutadores.** O domínio próprio da Parte 2 é um upgrade, não um pré-requisito.

---

## Parte 2 — Domínio próprio

### 1. Comprar o domínio

Sugestões de registrador, ambos sem enrolação: [Namecheap](https://www.namecheap.com) ou [Cloudflare Registrar](https://www.cloudflare.com/products/registrar/) (o da Cloudflare vende a preço de custo, costuma ser o mais barato).

Ideias de domínio, em ordem de preferência para o mercado americano:

- `cannalonga.design`
- `guicannalonga.com`
- `cannalonga.us`

Evite hífen e número. Recrutador digita errado.

### 2. Apontar o domínio para o GitHub

No painel do registrador, procure **DNS** e crie estes registros:

| Tipo  | Nome | Valor                  |
|-------|------|------------------------|
| A     | @    | 185.199.108.153        |
| A     | @    | 185.199.109.153        |
| A     | @    | 185.199.110.153        |
| A     | @    | 185.199.111.153        |
| CNAME | www  | guicannalonga.github.io |

(São 4 registros A mesmo, todos com nome `@`. É assim que o GitHub distribui carga.)

### 3. Configurar no GitHub

Volte em **Settings** → **Pages** → campo **Custom domain**, digite seu domínio e salve.

Espere o DNS propagar (geralmente minutos, às vezes algumas horas). Quando o aviso sumir, marque a caixa **Enforce HTTPS**.

### 4. Me avise o domínio

Assim que decidir o domínio, **me manda aqui** que eu atualizo em 1 minuto:

- As meta tags de preview social (hoje estão com `https://your-domain.com`, que é placeholder). Sem isso, quando você colar o link no LinkedIn não aparece a imagem de preview — e é justamente aí que os recrutadores veem o link primeiro.
- Gero o `sitemap.xml` com os endereços certos, pro Google indexar direito.
- Crio o arquivo `CNAME` que o GitHub usa pra fixar o domínio.

---

## Como atualizar o site depois

Sempre que quiser mudar algo: entra no repositório, clica no arquivo, no ícone de lápis, edita e commita. O site atualiza sozinho em ~1 minuto.

Ou, mais fácil: me pede a alteração aqui, eu te devolvo o arquivo pronto e você sobe por cima.

---

## Ainda pendente

- **Currículo**: tirei o link "Resume" do rodapé porque ele estava morto (`href="#"`). Recrutador clicar e não acontecer nada é pior do que não ter o link. Quando o PDF estiver pronto, me manda que eu coloco de volta.
- **Meta tags sociais**: dependem do domínio final (item 4 acima).
- **Fotos dos depoimentos**: confere se `tst-1.jpg`, `tst-2.jpg` e `tst-3.jpg` são realmente do Romulo, da Lívia e do Arthur, nessa ordem. Se alguma foto estiver trocada, é o tipo de erro que queima confiança.
