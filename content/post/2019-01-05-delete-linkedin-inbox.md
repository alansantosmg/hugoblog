---
author: Alan Santos
authorEmoji: 👨🏻‍💻
authorDesc: Consultor em TI | Mestre em Sistemas de informação
authorImage: "/images/whoami/avatar.jpg"
categories:
- Programação
- Tecnologia
date: "2019-01-05T00:00:00Z"
tags:
- Javascript
title: Deletar mensagens no Linkedin em lote
image: img/code-file.png
---

Hoje uma usuária do Linkedin, postou uma dúvida sobre como esvaziar sua caixa de entrada de mensagens. O Linkedin permite apagar manualmente cada mensagem, mas o que fazer se o usuário possuir algo como 1.000 mensagens?


Para minha surpresa, após consultar a ajuda do próprio Linkedin, constatei que não existe uma opção para zerar o inbox. Cheguei a responder à usuária, que não era possível executar tal operação, mas fiquei muito intrigado com o problema.
Depois de algumas pesquisas e vários testes , encontrei uma solução funcional.

Vamos à receita:

Você deve estar utilizando o Google Chrome para executar a operação.

Use Control-C para copiar o seguinte código para memória do computador:

```javascript
(function() {
  setInterval(() => {
    let deleted = false;
    $('artdeco-dropdown-item').each((i, elem) => {
      let txt = $(elem)
        .text()
        .trim();
      if (txt === 'Delete') {
        deleted = true;
        $(elem).click();
      }
    });
    if (deleted) {
      setTimeout(() => $('.js-msg-delete').click(), 500);
    } else {
      $('.msg-conversation-card__list-action-icon')
        .eq(1)
        .click();
    }
  }, 1000);
})();
```
