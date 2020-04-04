---
title: "Fallthrough em GO!"
date: 2020-04-04T17:23:33-03:00
description: "Executando casos em cascata dentro de um switch em Golang"
toc: true
author: Alan Santos
authorEmoji: 👨🏻‍💻
authorDesc: IT Consultant
authorImage: "/images/whoami/avatar.jpg"
categories:
- Dev
tags:
- Go
meta_image:
image:
draft: false
---

Em Golang, assim como no Java, Javascript e outras linguagens de programação, é possivel passar em cascata por casos dentro de um  `switch` (falltrough). Porém, em Go isso deve ser feito de forma explícita (segura), através da declaração da keyword `falltrough`.

Para melhor entendimento, vamos comparar a técnica usando primeiro Javascript e depois Go.

```Javascript
const protecao = 'mascara de pano';
switch (protecao) {
  case 'mascara cirurgica':
    console.log('Material de proteção para profissionais de saude');
    break;
  case 'mascara de pano':
  case 'alcool gel':
    console.log('Mascara de pano e alcool gel são materiais de proteção pessoal.');
    break;
  default:
    console.log(protecao + ' não é material de proteção contra Covid.');
}
```

{{< boxmd >}}
**Resultado:**
Mascara de pano e alcool gel são materiais de proteção pessoal.
{{< /boxmd >}}


```golang
switch protecao := "mascara de pano" {
    case "mascara cirurgica":
        fmt.Println("Material de proteção para profissionais de saude")
        break
    case "mascara de pano":
        fmt.Println("Mascara de pano - material de proteção pessoal.")
        falltrough
    case "alcool gel":
        fmt.Println("Alcool gel - material de proteção pessoal.")
        break
    default:
        fmt.Printf("%v não é material de proteção contra Covid.\n", protecao)
}
```

{{< boxmd >}}
**Resultado:**
Mascara de pano - material de proteção pessoal.
Alcool gel - material de proteção pessoal.
{{< /boxmd >}}

É interessante notar que em GO! pelo fato do `falltrough` ser declarado explicitamente, é possível executar as declarações internas de cada um dos casos em cascata. Essa diferença dá um pouco mais de flexibilidade no uso do `switch`.
