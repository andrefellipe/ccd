## Files

* **`83781.csv`:** Dados de 2019 da estação de Mirante de Santana (id = 83781)._Created in [`forecast.ipynb`](https://github.com/vitorsr/ccd/blob/master/forecast.ipynb)._
* **`baseline.csv`:** média diária de agosto para todos os anos anteriores a 2019. _Created in [`baseline.ipynb`](https://github.com/vitorsr/ccd/blob/master/baseline.ipynb)._
* **`delta.csv`:** a diferença entre cada medida diária de agosto de 2019 e `baseline_historic_mean.csv`. _Created in [`baseline.ipynb`](https://github.com/vitorsr/ccd/blob/master/baseline.ipynb)._
* **`inmetr_201908.csv`:** dados de todas as plataformas que apresentam medições em agosto de 2019, extraídos em [`met_data.R`](https://github.com/vitorsr/ccd/blob/master/met_data.R) . _Created in [`main.ipynb`](https://github.com/vitorsr/ccd/blob/master/main.ipynb)._
* **`pca_components_08-19.csv`**: Componentes do PCA (3 Componentes) aplicado ao Mês de Agosto de todos os Dados Disponíveis (1970-2019). _Created in [`baseline.ipynb`](https://github.com/vitorsr/ccd/blob/master/baseline.ipynb)._
* **`pca_values_08-19.csv`**: Resultado de Aplicação do PCA (3 Componentes) ao Mês de Agosto de todos os Dados Disponíveis (1970-2019). _Created in [`baseline.ipynb`](https://github.com/vitorsr/ccd/blob/master/baseline.ipynb)._
* **`pc1_2019.csv`**: Projeção do dia 19 de Agosto na componente PC1 do PCA calculado. _Created in [`baseline.ipynb`](https://github.com/vitorsr/ccd/blob/master/baseline.ipynb)._

## Dropbox (main)

    !wget -q "https://www.dropbox.com/s/7rriacb7c6vzf3m/ccd_2019.zip" -O ccd_2019.zip
    !unzip -qq ccd_2019.zip

## OneDrive (self-hosted)

| File             | Link |
|:----------------:|------|
| `bdmep_meta.csv` | https://onedrive.live.com/download?cid=BCBADB0836C97273&resid=BCBADB0836C97273%21115089&authkey=AN3WuZnSKh9jgC8 |
| `inmetr.csv`     | https://onedrive.live.com/download?cid=BCBADB0836C97273&resid=BCBADB0836C97273%21115090&authkey=AHJ7x3UN1MzJW1M |
| `2019.zip`       | https://onedrive.live.com/download?cid=BCBADB0836C97273&resid=BCBADB0836C97273%21115485&authkey=AJlb41BWz0YiBd8 |

    !wget -q "https://onedrive.live.com/download?cid=BCBADB0836C97273&resid=BCBADB0836C97273%21115089&authkey=AN3WuZnSKh9jgC8" -O bdmep_meta.csv
    !wget -q "https://onedrive.live.com/download?cid=BCBADB0836C97273&resid=BCBADB0836C97273%21115090&authkey=AHJ7x3UN1MzJW1M" -O inmetr.csv
    !wget -q "https://onedrive.live.com/download?cid=BCBADB0836C97273&resid=BCBADB0836C97273%21115485&authkey=AJlb41BWz0YiBd8" -O 2019.zip
    !unzip -qq 2019.zip
