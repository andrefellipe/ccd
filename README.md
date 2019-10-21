**`README.md`.** Pra gerar o relatório final (1 página) e ao mesmo tempo documentar o repositório, vamos usar `pandoc` para *parse* o `README.md` e gerar um PDF. Logo, basta editar o `README.md` (este arquivo) diretamente. Para gerar o PDF a partir do Markdown, usar `pandoc` com o comando

```bash
pandoc README.yaml README.md -o README.pdf
```

**Nota.** O arquivo [`README.yaml`](https://github.com/vitorsr/ccd/blob/master/README.yaml) contém os metadados para formatar o documento.

+ Manual `pandocs-markdown`: <https://pandoc.org/MANUAL.html#pandocs-markdown>.
+ *Mastering Markdown*: <https://guides.github.com/features/mastering-markdown/>.
+ Exemplo: <http://www.unexpected-vortices.com/sw/rippledoc/quick-markdown-example.html>.


# `weeee`: uma *wee little* análise
Título e resumo (*abstract*) estão nos metadados YAML. Estrutura do documento final:

1. Dados
2. Análise
3. Ferramentas
4. Visualização

## Dados
Info. sobre os dados e o *preprocessing*. Idealmente o *preprocessing* tem que estar casado com a análise subsequente, e.g.

    *raw data* -> `pandas.DataFrame` -> `numpy.ndarray`
    > *preprocessing* - - - - - - -     > *analysis* - - 

## Análise
Info. sobre a análise.

**Nota técnica.**

Regressão com penalização $L_1$ possui boa *explainability* das dimensões -- seleção esparsa (parcimoniosa) de coeficientes, ver <https://en.wikipedia.org/wiki/Lasso_(statistics)>. Lasso, Ridge, Elastic Net, etc. = fundamentos de *statistical learning*.

SVD também serve para *explainability* dos "fatores", ver <https://en.wikipedia.org/wiki/Singular_value_decomposition#Low-rank_matrix_approximation>. Resolve problema de análise de fatores de síntese. Também usado em *recommender systems*, ver <https://en.wikipedia.org/wiki/Matrix_factorization_(recommender_systems)>.

PCA robusto (ver, <https://en.wikipedia.org/wiki/Robust_principal_component_analysis>) é a melhor maneira de preencher valores não-previamente existentes (garantias matemáticas + supõe estrutura linear de baixo posto), ver <https://en.wikipedia.org/wiki/Matrix_completion>. Resolve problema de falta de dados. O mesmo algoritmo pode também pode ser usado para separar dados em *sparse* + *low-rank*, ferramenta de restauração de dados corrompidos ("denoise") com garantias teóricas, ver <https://en.wikipedia.org/wiki/Low-rank_approximation>.

Noto que esse algoritmo (RPCA/PCP) é estado da arte e ainda em vias de ser contribuído para o `sklearn`, ver <https://github.com/scikit-learn/scikit-learn/issues/5851>. Pode-se usar <http://tensorly.org/stable/modules/generated/tensorly.decomposition.robust_pca.html>, <https://github.com/dganguli/robust-pca>, <https://github.com/dfm/pcp>, ou <https://github.com/glennq/tga>.

![*Sparse and low-rank approximation*](https://www.mdpi.com/sensors/sensors-16-00848/article_deploy/html/images/sensors-16-00848-g009-1024.png){width=40%}

A melhor forma de realizar estabilização de variância (boa prática) é através casamento (especificação) de histograma, ver também <https://en.wikipedia.org/wiki/Variance-stabilizing_transformation>. Estabilização + análise de correlação cruzada = instrumento de redução de dimensionalidade não-linear. Estabilização deve ser incluida em paradigmas que incluem suposições matemáticas de "*Gaussianity*" nos dados, estabilização pode ser revertida depois de processamento.

Outras análises de decomposição possuem interpretabilidade boa dos resultados e não são usualmente feitos. Ver <https://scikit-learn.org/stable/modules/generated/sklearn.decomposition.non_negative_factorization.html>, 
<https://scikit-learn.org/stable/modules/generated/sklearn.decomposition.fastica.html>.

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
Info. sobre visualização -- basta links -- ou para o próprio repo em `./viz`, ou [Zenodo](https://zenodo.org/) ou [fig**share**](https://figshare.com/). As figuras correspondem às ilustrações que serão usadas nos slides (slides = 1 título + 3 análise).

**Nota técnica.**

Melhor focar em uma análise que gere um resultado que possua visualização "boa" (ninguém se importa com os detalhes).

Exemplos do `seaborn`: <https://seaborn.pydata.org/examples/index.html>.

Matriz de correlação cruzada é a melhor forma de visualizar acoplamentos estatísticos entre os dados, ver <https://en.wikipedia.org/wiki/Covariance_matrix#Correlation_matrix>, <https://en.wikipedia.org/wiki/Pearson_correlation_coefficient#Interpretation> e <https://seaborn.pydata.org/examples/many_pairwise_correlations.html>.

*Pair-wise plot* é a melhor forma de visualizar dados *high-dimensional* até ~30 $D$, ver <https://seaborn.pydata.org/generated/seaborn.pairplot.html>.

Outra maneira de visualizar dados *high-dimensional* é dividir em *facets* (*subsets*), como <https://seaborn.pydata.org/examples/faceted_histogram.html>.

Outra maneira é via *dot plot*, ver <https://seaborn.pydata.org/examples/pairgrid_dotplot.html>.

*Heatmap* é a melhor forma de visualizar dados 3 $D$, com 2 variáveis fixas, ver <https://seaborn.pydata.org/examples/heatmap_annotation.html>.
