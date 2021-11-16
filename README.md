# DESENVOLVIMENTO DE APLICAÇÕES PARA IOS – AVANÇADO
### POS GRADUAÇAO EM DESENVOLVIMENTO MOVEL - PUC MINAS
 Grupo: Alaene, Diego e Gustavo

# TMDB App

<!---Esses são exemplos. Veja https://shields.io para outras pessoas ou para personalizar este conjunto de escudos. Você pode querer incluir dependências, status do projeto e informações de licença aqui--->

![GitHub repo size](https://img.shields.io/github/repo-size/iuricode/README-template?style=for-the-badge)
![GitHub language count](https://img.shields.io/github/languages/count/iuricode/README-template?style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/iuricode/README-template?style=for-the-badge)
![Bitbucket open issues](https://img.shields.io/bitbucket/issues/iuricode/README-template?style=for-the-badge)
![Bitbucket open pull requests](https://img.shields.io/bitbucket/pr-raw/iuricode/README-template?style=for-the-badge)

<img src="exemplo-image.png" alt="exemplo imagem">

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
