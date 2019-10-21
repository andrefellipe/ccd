**`README.md`.** Pra gerar o relatório final (1 página) e ao mesmo tempo documentar o repositório, vamos usar `pandoc` para *parse* o `README.md` e gerar um PDF. Logo, basta editar o `README.md` (este arquivo) diretamente. Para gerar o PDF a partir do Markdown, usar `pandoc` com o comando

```bash
pandoc README.yaml README.md -o README.pdf
```

Nota. O arquivo `README.yaml` contém os metadados para formatar o documento.

+ Manual `pandocs-markdown`: <https://pandoc.org/MANUAL.html#pandocs-markdown>.
+ Mastering Markdown: <https://guides.github.com/features/mastering-markdown/>.
+ Exemplo: <http://www.unexpected-vortices.com/sw/rippledoc/quick-markdown-example.html>.

## Dados
Info. sobre os dados + *preprocessing*.

## Análise
Info. sobre a análise -- modelo matemático (e.g., de distrib.), decisão de tamanho de histograma, estabilização de variância, redução de dimensionalidade, análise de variáveis latentes/SVD, etc., transformações, análise de correlação, funções de distância, etc.

**Nota técnica.**

Regressão com penalização $L_1$ possui boa *explainability* das dimensões, ver <https://en.wikipedia.org/wiki/Lasso_(statistics)>.

SVD também serve para *explainability* dos "fatores", ver <https://en.wikipedia.org/wiki/Singular_value_decomposition#Low-rank_matrix_approximation>.

PCA robusto é a melhor maneira de preencher valores não-previamente existentes (garantias matemáticas + supõe estrutura linear de baixo posto), ver <https://en.wikipedia.org/wiki/Matrix_completion>.

A melhor forma de realizar estabilização de variância é através casamento (especificação) de histograma, ver também <https://en.wikipedia.org/wiki/Variance-stabilizing_transformation>.

## Ferramentas
Lista descritiva sobre as ferramentas -- basta links. Pode incluir documentação de função específica. Por exemplo,  
**[`seaborn`](https://seaborn.pydata.org/index.html).** Ferramenta de visualização estatística.  
**[`fbprophet`](https://facebook.github.io/prophet/).** Ferramenta do Facebook *Core Data Science* para *forecasting*.  
**[`sklearn.linear_model.Lasso`](https://scikit-learn.org/stable/modules/generated/sklearn.linear_model.Lasso.html).** Função para regressão linear com penalização $L_1$, também conhecido como *Lasso*.  
**[Google Colab](https://colab.research.google.com/).** Sugestão: usar o Google Colab. Teste: <https://colab.research.google.com/drive/1fyO0j9NYzzdR7Y1wcNuk6-BfompCsMxv>.

**Mais info. sobre Google Colab.** Para importar dados, salvar dados relevantes como CSV e *push* para esse repositório em uma pasta e.g. `./data`. Para importar, usar `pd.read_csv()` com o link (URI) do arquivo binário. Exemplo (`README.md`): <https://raw.githubusercontent.com/vitorsr/ccd/master/README.md?token=AJW2VYP2UJOLZ2MWPBFM4UK5W4BRI>.

Outra possibilidade é ler de arquivos no Google Drive.

```python
from google.colab import drive
drive.mount('/gdrive')
%cd /gdrive
```

## Visualização
Info. sobre visualização -- basta links -- ou para o próprio repo em `./viz`, ou no [Zenodo](https://zenodo.org/) ou no [fig**share**](https://figshare.com/). As figuras correspondem às ilustrações que serão usadas nos slides (slides = 1 título + 3 análise).

**Nota técnica.**

Melhor focar em uma análise que gere um resultado que possua visualização "boa" (ninguém se importa com os detalhes).

Exemplos do `seaborn`: <https://seaborn.pydata.org/examples/index.html>.

Matriz de correlação cruzada é a melhor forma de visualizar acoplamentos estatísticos entre os dados, ver <https://en.wikipedia.org/wiki/Covariance_matrix#Correlation_matrix>, <https://en.wikipedia.org/wiki/Pearson_correlation_coefficient#Interpretation> e <https://seaborn.pydata.org/examples/many_pairwise_correlations.html>.

*Pair-wise plot* é a melhor forma de visualizar dados *high-dimensional* até ~30 $D$, ver <https://seaborn.pydata.org/generated/seaborn.pairplot.html>.

Outra maneira de visualizar dados *high-dimensional* é dividir em *facets* (*subsets*), como <https://seaborn.pydata.org/examples/faceted_histogram.html>.

*Heatmap* é a melhor forma de visualizar dados 3 $D$, com 2 variáveis fixas, ver <https://seaborn.pydata.org/examples/heatmap_annotation.html>.
