# [Competição de Ciência de Dados da UFRN 2019](https://marcusnunes.me/posts/competicao-de-ciencia-de-dados-da-ufrn-2019/)

    André Fellipe               oooo oooo    ooo  .ooooo.   .ooooo.   .ooooo.   .ooooo.  
    André Luis       8888888     `88. `88.  .8'  d88' `88b d88' `88b d88' `88b d88' `88b 
    Mariana Costa                 `88..]88..8'   888ooo888 888ooo888 888ooo888 888ooo888 
    Ianca Leite      8888888       `888'`888'    888    .o 888    .o 888    .o 888    .o 
    Vítor Ramos                     `8'  `8'     `Y8bod8P' `Y8bod8P' `Y8bod8P' `Y8bod8P' 

## `weeee`: uma *wee little* análise do dia que "virou noite"

### Relatório

O relatório se encontra em [`docs/README.md`](./docs/README.md). Título etc. estão nos metadados YAML [`docs/README.yaml`](./docs/README.yaml). Nele também se encontram metadados para formatação [LaTeX](https://pandoc.org/MANUAL.html#variables-for-latex) usando [`pandoc`](https://pandoc.org/MANUAL.html#pandocs-markdown). Para gerar um PDF a partir de [Markdown](https://guides.github.com/features/mastering-markdown/), usar `pandoc` com o comando

```bash
pandoc docs/README.yaml docs/README.md -o docs/report.pdf
```

### *Slides*

Os slides estão disponíveis no [Google Slides](https://docs.google.com/presentation/d/12wG8uIg7QklofTIYKPcVazenvoP67ua8atwCVvnD_VU/edit?usp=sharing). Estes apresentam as visualizações das análises conduzidas.

*Slide* 1: GIF do delta e mapa do *baseline* ([`main.ipynb`](https://github.com/vitorsr/ccd/blob/master/main.ipynb) → [`baseline.ipynb`](https://github.com/vitorsr/ccd/blob/master/baseline.ipynb) → [`maps.ipynb`](https://github.com/vitorsr/ccd/blob/master/maps.ipynb) + [`new_maps.ipynb`](https://github.com/vitorsr/ccd/blob/master/new_maps.ipynb))  
*Slide* 2: PCA e *scree plot* ([`baseline.ipynb`](https://github.com/vitorsr/ccd/blob/master/baseline.ipynb) → [`new_maps.ipynb`](https://github.com/vitorsr/ccd/blob/master/new_maps.ipynb))  
*Slide* 3: *forecast* [`fbprophet`](https://github.com/facebook/prophet) ([`forecast.ipynb`](https://github.com/vitorsr/ccd/blob/master/forecast.ipynb))

### Código fonte

A análise foi realizada em Python 3 utilizando notebooks Jupyter no [Google Colab](https://research.google.com/colaboratory/faq.html). Estes se encontram na raíz do repositório com extensão `.ipynb` (também notados acima).
