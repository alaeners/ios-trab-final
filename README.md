# DESENVOLVIMENTO DE APLICAÇÕES PARA IOS – AVANÇADO
### POS GRADUAÇAO EM DESENVOLVIMENTO MOVEL - PUC MINAS
 Grupo: Alaene, Diego e Gustavo

# TMDB App

<img src="https://github.com/alaeners/ios-trab-final/blob/main/docs_trabalho/brand_do_trabalho.png?raw=true" alt="brand do trabalho">

> Linha adicional de texto informativo sobre o que o projeto faz. Sua introdução deve ter cerca de 2 ou 3 linhas. Não exagere, as pessoas não vão ler.

### Resumo do projeto TMDB App

O projeto ainda está em desenvolvimento e as próximas atualizações serão voltadas nas seguintes tarefas:

- Professor: Jhoney Lopes 
- PUC Minas
- Nota: 50 pontos


## 💻 Pré-requisitos do projeto

- *Objetivo:* Esse projeto tem como objetivo aplicar os conhecimentos adquiridos no curso de Desenvolvimento de Aplicações para IOS – Avançado, nesse projeto a expectativa é que a pessoa utilize a API externa da <https:// www.themoviedb.org> para requisitar uma lista de filmes e exibir na tela da aplicação.
- *Solução:* Serão duas telas, uma delas é a tela inicial da aplicação com uma lista dos filmes dispostos em duas colunas e a segunda tela será a tela de detalhes do filme, conforme pode ser visto nas próximas páginas.
- *APIs acesse em:* https://developers.themoviedb.org/3/getting-started/introduction e use as seguintes APIs
```
GET /movie/top_rated] 
GET /movie/{movie_id}
```

## 🚀 TELA INICIAL
<p align="center">
    <img src="https://github.com/alaeners/ios-trab-final/blob/main/docs_trabalho/tela_inicial.png?raw=true" height=600px alt="tela inicial trabalho">
</p>

- *Objetivo:*
A tela inicial da aplicação com uma lista dos filmes dispostos em duas colunas cada item ocupando metade da tela e com altura da célula de 1.5x da largura. No topo um título na navigation bar
- API
```
GET /movie/top_rated
```

Bônus para quem quiser um desafio a mais:
```
Criar um “infinite scroll” ou seja, no final da tela chamar novamente a API 
passando a nova página e manter os itens já carregados.
```

## ☕ TELA DE DETALHES
<p align="center">
    <img src="https://github.com/alaeners/ios-trab-final/blob/main/docs_trabalho/tela_detalhes.png?raw=true" height=400px alt="tela de detalhes trabalho">
</p>

- *Objetivo:*
Ao clicar em um item da tela inicial iremos abrir uma tela simples, com os detalhes do filme que selecionamos. Essa tela deve exibir o título do filme, a imagem do poster, o ano de lançamento, a popularidade do filme e a descrição do filme.

- API
```
GET /movie/{movie_id}
```

## 📫 Se der, vamos tentar colocar testes


## 🤝 Colaboradores

Agradecemos às seguintes pessoas que contribuíram para este projeto:

<table>
  <tr>
    <td align="center">
      <a href="#">
        <img src="https://avatars.githubusercontent.com/u/9036350?v=4" width="100px;" alt="Foto da Alaene no GitHub"/><br>
        <sub>
          <b>Alaene</b>
        </sub>
      </a>
    </td>
    <td align="center">
      <a href="#">
        <img src="https://avatars.githubusercontent.com/u/51254362?v=4" width="100px;" alt="Foto do Gustavo no GitHub"/><br>
        <sub>
          <b>Gustavo</b>
        </sub>
      </a>
    </td>
    <td align="center">
      <a href="#">
        <img src="" width="100px;" alt="Foto do Diego no GitHub"/><br>
        <sub>
          <b>Diego</b>
        </sub>
      </a>
    </td>
  </tr>
</table>

[⬆ Voltar ao topo](#nome-do-projeto)<br>
