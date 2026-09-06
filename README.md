# Monitoramento Geo-Financeiro do Crédito Rural

Projeto desenvolvido como estudo prático de compliance socioambiental no crédito agrícola, inspirado nas diretrizes do Projeto Geotec do Banco Central do Brasil (BCB). 

O pipeline cruza dados espaciais de operações de crédito com camadas geoespaciais públicas para identificar sobreposições com áreas embargadas, unidades de conservação e terras indígenas, mitigando riscos legais e socioambientais na concessão de financiamentos rurais.

---

## 🛠️ Tecnologias Utilizadas
- **Linguagem & Bibliotecas:** Python (GeoPandas, Shapely)
- **Banco de Dados Espacial:** PostgreSQL / PostGIS
- **Visualização & BI:** Power BI / QGIS
- **Formatos de Dados:** GeoJSON, Shapefile, CSV

---

## 🎯 Regras de Negócio e Validações
O pipeline valida cada polígono de gleba financiada contra bases oficiais:
- **Embargos Ambientais (IBAMA):** Verificação de áreas com atividade suspensa por infração ambiental.
- **Terras Indígenas Homologadas (FUNAI):** Impedimento total de sobreposição.
- **Unidades de Conservação de Proteção Integral (ICMBio):** Restrições legais conforme o SNUC.

---

## 🚀 Status do Projeto
- [x] Estruturação da arquitetura e bases públicas
- [ ] Pipeline de cruzamento espacial em Python/PostGIS
- [ ] Exportação dos indicadores e criação do Dashboard no Power BI
