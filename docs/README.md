## Dados

**Origem.** Se tratam de séries temporais de variáveis meteorológicas coletadas pelo [INMET](http://www.inmet.gov.br/portal/) (Instituto Nacional de Meteorologia), em um grande número de estações no Brasil. Para este projeto, os dados foram obtidos via *query* do [BDMEP](http://www.inmet.gov.br/projetos/rede/pesquisa/) (Banco de Dados Meteorológicos para Ensino e Pesquisa) através da biblioteca [`inmetr`](https://github.com/lhmet/inmetr), em R.  
***Dataset.*** O *dataset* principal possui cerca de 14 milhões de linhas, mais de 15 variáveis numéricas observadas -- as mais antigas datando dos anos 60, além de metadados georeferenciados.  
**Desafio.** Um dos desafios encontrados foi manuseio dos dados (problema de *big data*) para o fim de realizar as operações necessárias para análise (problema também de computação numérica de alta performance).

## Análise

**Contexto.** Para nortear a análise, foi utilizada informação externa de que este ano houve atividade atípica de queimadas no Brasil. Pontuamos o evento anômalo em que [o dia "virou noite"](https://g1.globo.com/sp/sao-paulo/noticia/2019/08/19/dia-vira-noite-em-sao-paulo-com-chegada-de-frente-fria-nesta-segunda.ghtml) em São Paulo no dia 19/08/2019 por conta de fumaça vinda de queimadas.  
**Objetivo.** Com este norte, realizamos uma investigação exploratória dos dados com um viés de visualização geográfica. A investigação possuiu o objetivo de aferir esta anomalia sob a ótica das variáveis meteorológicas observadas nos dados. No total foram realizadas três análises (listadas abaixo), correspondendo aos 3 slides de conteúdo apresentado possível.  
**1. Temperatura do ar.** De início, realizamos uma visualização da temperatura do ar em agosto de 2019, em relação ao *baseline* histórico para cada dia e para cada estação. O resultado é um mapa de contorno tridimensional cuja terceira dimensão é a cor -- um escalar que representa a diferença da temperatura observada para o *baseline*.  
O *baseline* foi obtido calculando a média (regressão polinomial de ordem zero -- sem regularização), para cada variável, para cada estação. A maneira relativamente simples de obter o *baseline* se deu pela (1) grande irregularidade dos dados e (2) grande volume de dados.  
**2. PCA.** O passo incremental mais intuitivo é olhar para todas as variáveis meteorológicas. Notamos que haviam 15 dimensões numéricas. Logo, nós lançamos mão da análise de componentes principais para observar a variação da primeira componente principal. Notamos através de um *scree plot* que a variância explicada pela primeira componente era próximo de 50%, indicando alta covariância entre as variáveis meteorológicas. Intuímos que uma grande variação da primeira componente indica grande atividade climática. Esta análise também foi visualizada geograficamente.  
**3. *Forecast.*** Por fim, realizamos um *forecast* utilizando um modelo ARIMA com ajuste automático de *trends* por dia do ano e por dia da semana. A ferramenta que usamos também estima o ajuste de trend. Todos estes parâmetros estão presentes na apresentação.

## Ferramentas

A análise somente foi possível através da utilização de poderosas ferramentas de computação numérica. Utilizamos R para extrair os dados e Python para realizar as demais computações. Listamos abaixo as principais bibliotecas que foram utilizadas.

**[Google Colab](https://colab.research.google.com/).** Ferramenta do Google Research para pesquisa e educação em aprendizagem de máquina. Se trata de um servidor de Jupyter Notebook em uma VM Linux. Foi utilizado para escrever e executar os *notebooks* necessários para o trabalho.  
**[`inmetr`](https://github.com/lhmet/inmetr).** Pacote de R para realizar *query* do BDMEP. Tivemos que minerar os dados de 2019 para prosseguir com nossas análises.  
**[`fbprophet`](https://facebook.github.io/prophet/).** Ferramenta do Facebook *Core Data Science* para *forecasting*. Utilizado para realizar o *forecast* de dados de temperatura.  

## Visualização

Info. sobre visualização.
