# Banco de Dados de Atributos Funcionais de Espécies Arbóreas

## Functional Traits Database for Subtropical Forest Tree Species in Southern Brazil

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-blue.svg)](https://creativecommons.org/licenses/by/4.0/)
[![R](https://img.shields.io/badge/R-%3E%3D%203.6.0-blue.svg)](https://www.r-project.org/)
[![Status](https://img.shields.io/badge/status-active-success.svg)](https://github.com/higuchip/FT_database)
[![Contributions](https://img.shields.io/badge/contributions-welcome-brightgreen.svg)](https://github.com/higuchip/FT_database/issues)

**Laboratório de Dendrologia e Fitossociologia**  
**Universidade do Estado de Santa Catarina (UDESC)**

---

## 📋 Descrição

Este repositório contém dados de atributos funcionais de espécies arbóreas ocorrentes em florestas subtropicais do Sul do Brasil, com ênfase na Floresta Ombrófila Mista (Floresta com Araucária) do Planalto Catarinense.

O banco de dados compila medições de atributos funcionais foliares, de madeira e características categóricas de espécies nativas e exóticas, fornecendo uma base de dados essencial para estudos de ecologia funcional, sucessão florestal e conservação.

### 📊 Estatísticas do Banco de Dados

![Native Species](https://img.shields.io/badge/native%20species-90-success.svg)
![Exotic Species](https://img.shields.io/badge/exotic%20species-5-orange.svg)
![Functional Traits](https://img.shields.io/badge/functional%20traits-7-blue.svg)
![Myrtaceae](https://img.shields.io/badge/Myrtaceae-20%20spp-green.svg)
![Region](https://img.shields.io/badge/region-Santa%20Catarina%20Plateau-blueviolet.svg)

---

## 🌳 Dados Disponíveis

### Atributos Funcionais Contínuos

- **Área Foliar** (LA - Leaf Area, cm²)
- **Área Foliar Específica** (SLA - Specific Leaf Area, cm²/g)
- **Densidade da Madeira** (WD - Wood Density, g/cm³)
- **Altura Máxima** (H - Maximum Height, m)

### Atributos Categóricos

- **Origem** (origin): Nativa (Native) ou Exótica (Exotic)
- **Síndrome de Dispersão** (disp): Zoocórica (z) ou Não-zoocórica (nz)
- **Deciduidade** (dec): Decídua (dec) ou Perene (per)

---

## 📊 Estrutura dos Arquivos

### `atributos_funcionais_por_especies.csv`
Arquivo principal contendo valores médios de atributos funcionais por espécie.

**Colunas:**
- Espécie (row names)
- `mean.la`: Área foliar média (cm²)
- `mean.sla`: Área foliar específica média (cm²/g)
- `mean.wd`: Densidade da madeira média (g/cm³)
- `mean.h`: Altura máxima média (m)
- `origin`: Origem da espécie
- `disp`: Síndrome de dispersão
- `dec`: Deciduidade

**Formato:** CSV com separador `;` e decimal `,`

### `categorical_traits.csv`
Atributos categóricos de todas as espécies registradas.

### `data_manipulation.R`
Script R documentando o processamento dos dados brutos e geração das médias por espécie.

---

## 📈 Informações sobre a Amostragem

- **Árvores/amostras de madeira mensuradas:** Ver script `data_manipulation.R`
- **Número de folhas analisadas:** Calculado a partir de `leaf_traits.csv`
- **Espécies com caracterização completa:** 95 espécies
- **Espécies exóticas incluídas:** 5 espécies (*Hovenia dulcis*, *Ligustrum lucidum*, *Morus nigra*, *Pinus elliottii*, *Pinus taeda*)

---

## 💻 Como Usar

### Importar no R

```r
# Instalar pacotes necessários
library(tidyverse)

# Importar dados
traits <- read.table("atributos_funcionais_por_especies.csv", 
                     header = TRUE, 
                     sep = ";", 
                     dec = ",",
                     row.names = 1)

# Visualizar estrutura
str(traits)
head(traits)
```

### Importar no Python

```python
import pandas as pd

# Importar dados
traits = pd.read_csv("atributos_funcionais_por_especies.csv",
                     sep=";",
                     decimal=",",
                     index_col=0)

# Visualizar
print(traits.head())
```

---

## 🔬 Aplicações

Este banco de dados pode ser utilizado para:

- Análises de diversidade funcional
- Estudos de sucessão ecológica
- Modelagem de dinâmica florestal
- Análises filogenéticas comparativas
- Estratégias de restauração ecológica
- Estudos de invasões biológicas
- Meta-análises sobre florestas subtropicais

---

## 📖 Como Citar

Se você utilizar estes dados em publicações, por favor cite:

```
Higuchi, P.; Silva, A.C. (2025). Banco de Dados de Atributos Funcionais de Espécies 
Arbóreas de Floresta Subtropical no Sul do Brasil. Laboratório de Dendrologia e 
Fitossociologia, Universidade do Estado de Santa Catarina - UDESC. 
Disponível em: [https://github.com/higuchip/FT_database]
```

---

## 👥 Equipe

**Laboratório de Dendrologia e Fitossociologia**  
Departamento de Engenharia Florestal  
Centro de Ciências Agroveterinárias - CAV  
Universidade do Estado de Santa Catarina - UDESC

**Coordenação:** Prof. Dr. Pedro Higuchi e Profa. Dra. Ana Carolina da Silva

---

## ⚖️ Termos de Uso

### Uso Livre com Atribuição

Este banco de dados foi desenvolvido com recursos públicos e tem como objetivo **democratizar o acesso a dados científicos** de qualidade sobre florestas subtropicais brasileiras.

**Você pode usar estes dados para:**
- 🔬 Pesquisa científica (teses, dissertações, artigos)
- 📚 Fins educacionais e didáticos
- 🌳 Projetos de restauração ecológica
- 📊 Análises ambientais e consultorias
- 💻 Desenvolvimento de aplicações e ferramentas
- 📈 Meta-análises e sínteses científicas

**Compromissos ao usar os dados:**
1. **Cite adequadamente** usando o formato fornecido
2. **Mencione a licença** CC BY 4.0 quando redistribuir
3. **Indique modificações** se você alterar/processar os dados
4. **Considere colaborar** - entre em contato para possíveis parcerias
5. **Compartilhe melhorias** - contribuições são bem-vindas!

### 🤝 Colaborações

Se você está desenvolvendo um projeto que faz uso extensivo destes dados, considere:
- Entrar em contato para possíveis colaborações
- Citar trabalhos relacionados do laboratório
- Compartilhar seus resultados/códigos (se possível)
- Contribuir com novos dados ou correções

**Nota:** A citação é obrigatória pela licença, mas colaborações científicas são sempre bem-vindas e podem enriquecer ambos os trabalhos!

---

## 📧 Contato

Para questões sobre os dados ou colaborações:
- **Email:** pedro.higuchi@udesc.br
- **Laboratório:** Laboratório de Dendrologia e Fitossociologia - UDESC

## 📄 Licença

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Licença Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a>

Este banco de dados está licenciado sob a **Creative Commons Atribuição 4.0 Internacional (CC BY 4.0)**.

### ✅ Você tem a liberdade de:

- **Compartilhar** — copiar e redistribuir o material em qualquer suporte ou formato
- **Adaptar** — remixar, transformar e criar a partir do material para qualquer finalidade, mesmo comercial

### ⚠️ Sob as seguintes condições:

- **Atribuição** — Você deve dar o crédito apropriado, prover um link para a licença e indicar se mudanças foram feitas. Você pode fazê-lo de qualquer forma razoável, mas não de maneira que sugira que o licenciante apoia você ou o seu uso.

### 📝 Como atribuir corretamente:

Ao usar estes dados, inclua a citação:

```
Higuchi, P.; Silva, A.C. (2025). Banco de Dados de Atributos Funcionais de Espécies 
Arbóreas de Floresta Subtropical no Sul do Brasil. Laboratório de Dendrologia e 
Fitossociologia, Universidade do Estado de Santa Catarina - UDESC. 
Disponível em: [https://github.com/higuchip/FT_database]. Licença: CC BY 4.0.
```

### 💼 Usos permitidos incluem:

- Pesquisa científica e acadêmica
- Análises e meta-análises
- Ensino e educação
- Aplicações comerciais (consultorias, softwares, etc.)
- Publicações científicas
- Relatórios técnicos

**Não há necessidade de solicitar permissão prévia** — basta citar adequadamente!

Para mais informações: [https://creativecommons.org/licenses/by/4.0/deed.pt_BR](https://creativecommons.org/licenses/by/4.0/deed.pt_BR)

---

## 🔄 Atualizações

- **Versão 1.0** (2025): Primeira versão do banco de dados

---

## ⚠️ Notas Importantes

- Valores ausentes (NA) indicam que o atributo não foi mensurado para aquela espécie
- Os dados de espécies exóticas estão incluídos para fins comparativos
- Para detalhes sobre metodologia de coleta e mensuração, consultar as publicações associadas

### 🔍 Garantia de Qualidade

Os dados foram coletados e processados seguindo protocolos científicos padronizados. No entanto:
- Os autores não se responsabilizam por interpretações ou usos inadequados dos dados
- Recomenda-se verificar a adequabilidade dos dados para seu objetivo específico
- Para dúvidas metodológicas, entre em contato com o laboratório

### 🐛 Reportando Erros

Se você identificar inconsistências ou erros nos dados:
1. Abra uma [Issue no GitHub](https://github.com/higuchip/FT_database/issues)
2. Ou envie um email para: pedro.higuchi@udesc.br

Contribuições para melhorar a qualidade dos dados são muito apreciadas!

---

## 📚 Publicações Relacionadas

[....]

---

**Última atualização:** Novembro 2025
