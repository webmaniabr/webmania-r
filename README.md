<p align="center"><img src=".github/assets/webmania-logo.png" alt="Webmania" width="320"></p>

# Webmania SDK para R

Através do emissor fiscal da Webmania®, você conta com a emissão e o arquivamento dos seus documentos fiscais, cálculo automático de impostos, geração do DANFE para impressão e envio automático de e-mails para os clientes. Com este SDK, o seu sistema em R se integra à nossa REST API para emitir, consultar e cancelar NF-e, NFC-e, NFS-e, CT-e, MDF-e, NFCom e DC-e, baixar XML e PDF dos documentos e usar o Monitor Fiscal.

- Emissor de Nota Fiscal Webmania®: [Saiba mais](https://webmania.com.br/nota-fiscal-eletronica/)
- Documentação da REST API: [Visualizar](https://webmania.com.br/docs/)
- Índice da documentação para assistentes de IA: [llms.txt](https://webmania.com.br/docs/llms.txt)

## Requisitos

- Contrate um dos planos de Nota Fiscal Eletrônica da Webmania®: [Assine agora mesmo](https://webmania.com.br/nota-fiscal-eletronica/#plans-section).
- R 4.6.2 ou superior, com compilador C11 e POSIX threads.
- Linux arm64. O pacote já traz o SDK para C e o worker nativo que faz as requisições HTTPS.
- Credenciais de acesso da sua empresa, disponíveis no [Painel de Controle](https://webmania.com.br/painel/).

## Instalação

O SDK é distribuído pelo repositório [github.com/webmaniabr/webmania-r](https://github.com/webmaniabr/webmania-r) e ainda não está publicado no CRAN. Clone o repositório e instale o pacote com as ferramentas normais do R:

```sh
git clone https://github.com/webmaniabr/webmania-r.git
mkdir -p ./r-library
R CMD INSTALL --library=./r-library webmania-r
```

Execute a sua aplicação com essa biblioteca:

```sh
R_LIBS=./r-library Rscript app.R
```

## Credenciais

Cada serviço usa a sua própria credencial. Guarde-as em variáveis de ambiente (ou em um cofre de segredos) no servidor e nunca as escreva no código-fonte:

| Variável de ambiente | Uso |
|---|---|
| `WEBMANIA_CONSUMER_KEY`, `WEBMANIA_CONSUMER_SECRET`, `WEBMANIA_ACCESS_TOKEN`, `WEBMANIA_ACCESS_TOKEN_SECRET` | NF-e e NFC-e (`wm_nfe_client`) e arquivos da NF-e (`wm_nfe_files_client`) |
| `WEBMANIA_ISSUER_TOKEN` | NFS-e, CT-e, MDF-e, NFCom e DC-e (`wm_emitter_client`) e seus arquivos (`wm_emitter_files_client`) |
| `WEBMANIA_MONITOR_TOKEN` | Monitor Fiscal (`wm_monitor_client`) |

```r
library(webmania)

config <- wm_config()  # usa o worker incluído no pacote instalado
credenciais <- wm_company_credentials(
  Sys.getenv("WEBMANIA_CONSUMER_KEY"), Sys.getenv("WEBMANIA_CONSUMER_SECRET"),
  Sys.getenv("WEBMANIA_ACCESS_TOKEN"), Sys.getenv("WEBMANIA_ACCESS_TOKEN_SECRET"))
token_emissor <- wm_issuer_token(Sys.getenv("WEBMANIA_ISSUER_TOKEN"))

nfe <- wm_nfe_client(credenciais, config)          # NF-e e NFC-e
emissor <- wm_emitter_client(token_emissor, config) # NFS-e, CT-e, MDF-e, NFCom e DC-e
```

Cada operação devolve uma tarefa; `wm_await()` espera o resultado, com o valor em `$value` ou a falha em `$error`. Feche clientes, tarefas e resultados com `wm_close()` quando não precisar mais deles.

## Utilização

Os exemplos abaixo usam o ambiente de **homologação** (`ambiente` 2), em que os documentos não têm validade fiscal. Para emitir em produção, envie `ambiente` 1. Os pedidos são montados a partir de JSON; informe valores decimais como texto (`"44.90"`) para manter a precisão.

### Status do SEFAZ e certificado A1

```r
sefaz <- wm_await(nfe_get_sefaz_status(nfe))
if (is.null(sefaz$error)) cat(wm_get(sefaz$value, "status"), "\n")  # online ou offline

certificado <- wm_await(nfe_get_certificate_validity(nfe))
if (is.null(certificado$error)) cat(wm_get(certificado$value, "expiration"), "dias\n")  # dias até o vencimento do certificado A1
```

### Emitir NF-e

Para emitir uma NF-e, monte o pedido a partir do JSON da nota e use `nfe_issue_document`. A mesma função emite NFC-e com `"modelo": 2`.

```r
pedido <- wm_from_json(api1_fiscal_NfeIssueRequest, '{
  "operacao": 1,
  "natureza_operacao": "Venda de produção do estabelecimento",
  "modelo": 1,
  "finalidade": 1,
  "ambiente": 2,
  "cliente": {
    "cpf": "000.000.000-00", "nome_completo": "Nome do Cliente",
    "endereco": "Av. Brg. Faria Lima", "numero": "1000", "bairro": "Itaim Bibi",
    "cidade": "São Paulo", "uf": "SP", "cep": "00000-000", "email": "nome@email.com"
  },
  "produtos": [{
    "nome": "Nome do produto", "codigo": "nome-do-produto", "ncm": "6109.10.00",
    "quantidade": "1", "unidade": "UN", "origem": 0,
    "subtotal": "44.90", "total": "44.90", "classe_imposto": "REF1000"
  }],
  "pedido": {"presenca": 2, "modalidade_frete": 9, "pagamento": 0, "forma_pagamento": "01", "total": "44.90"}
}', config)

emissao <- wm_await(nfe_issue_document(nfe, pedido))
if (is.null(emissao$error)) {
  nota <- wm_get(emissao$value, "NfeDocument", config)
  uuid <- wm_get(nota, "uuid")      # identificador único da nota fiscal
  cat(wm_get(nota, "status"), "\n") # aprovado, reprovado, processamento...
  cat(wm_get(nota, "chave"), "\n")  # chave de acesso
  cat(wm_get(nota, "xml"), "\n")    # URL do XML
  cat(wm_get(nota, "danfe"), "\n")  # URL do DANFE (PDF)
  cat(wm_get(nota, "motivo"), "\n") # retorno do SEFAZ
}
```

Somente o status `aprovado` indica uma nota autorizada. Quando o retorno for `processamento`, consulte a nota alguns segundos depois.

### Consultar NF-e

```r
consulta <- wm_from_json(api1_fiscal_NfeGetDocumentQuery, sprintf('{"uuid": "%s"}', uuid), config)
resposta <- wm_await(nfe_get_document(nfe, consulta))
if (is.null(resposta$error)) cat(wm_get(wm_get(resposta$value, "NfeDocument", config), "status"), "\n")
```

A consulta também aceita a chave de acesso (`{"chave": "..."}`).

### Cancelar NF-e

```r
cancelamento <- wm_from_json(api1_fiscal_NfeCancelRequest,
  sprintf('{"uuid": "%s", "motivo": "Cancelamento por erro no pedido."}', uuid), config)  # motivo: mínimo de 15 caracteres
resultado <- wm_await(nfe_cancel_document(nfe, cancelamento))
if (is.null(resultado$error)) cat(wm_get(resultado$value, "status"), "\n")
```

### Baixar o DANFE e o XML

O cliente de arquivos usa uma configuração própria, que confia na origem pública dos arquivos da NF-e:

```r
config_arquivos <- wm_config(file_origins = "https://nfe.webmania.com.br")
arquivos <- wm_nfe_files_client(credenciais, config_arquivos)
acesso <- wm_file_auth("company")

danfe <- wm_await(nfe_download_danfe(arquivos, uuid, acesso))
if (is.null(danfe$error)) writeBin(wm_file_bytes(danfe$value), "danfe.pdf")

xml <- wm_await(nfe_download_xml(arquivos, uuid, wm_from_json(api1_files_NfeDownloadXmlQuery, "{}", config_arquivos), acesso))
if (is.null(xml$error)) writeBin(wm_file_bytes(xml$value), "nfe.xml")
```

### Emitir, consultar e cancelar NFS-e

A NFS-e é emitida a partir de um ou mais RPS com `emitter_issue_nfse`:

```r
rps <- wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayload, '{
  "ambiente": 2,
  "rps": [{
    "servico": {
      "valor_servicos": "15.00",
      "discriminacao": "Prestação de serviço referente ao mês 10/2026",
      "classe_imposto": "REF000000"
    },
    "tomador": {"cpf": "000.000.000-00", "nome_completo": "Nome do tomador"}
  }]
}', config)
nfse <- wm_await(emitter_issue_nfse(emissor, rps))
uuid_nfse <- wm_get(nfse$value, "uuid")
cat(wm_get(nfse$value, "status"), "\n")

consulta_nfse <- wm_await(emitter_get_nfse(emissor, uuid_nfse))
cat(wm_get(consulta_nfse$value, "status"), wm_get(consulta_nfse$value, "numero"), "\n")

cancela <- wm_from_json(api2_nfse_issuance_EmitterCancelNfsePayload, sprintf(
  '{"uuid": "%s", "motivo": "1", "justificativa": "Serviço cancelado a pedido do tomador."}', uuid_nfse), config)
# motivo: código do motivo (veja a documentação da NFS-e); justificativa: mínimo de 15 caracteres
cancelada <- wm_await(emitter_cancel_nfse(emissor, cancela))
cat(wm_get(cancelada$value, "status"), "\n")
```

### Tratamento de erros

Quando a operação falha, `$error` informa o tipo, o status HTTP e a mensagem:

```r
emissao <- wm_await(nfe_issue_document(nfe, pedido))
if (!is.null(emissao$error)) {
  cat(wm_error_kind(emissao$error), "\n")    # validation (dados recusados antes do envio), business (recusa da API ou do SEFAZ), http, timeout...
  cat(wm_error_status(emissao$error), "\n")  # status HTTP, quando houver
  cat(wm_error_message(emissao$error), "\n") # mensagem, com dados sensíveis mascarados
  if (isTRUE(wm_outcome_unknown(emissao$error))) {
    # A requisição pode ter sido processada: consulte a nota antes de emitir de novo.
  }
}
```

O SDK não repete requisições automaticamente. Se uma emissão ou um cancelamento terminar com `wm_outcome_unknown()` verdadeiro, consulte o documento antes de tentar novamente, para não emitir em duplicidade.

## Métodos disponíveis

**NF-e e NFC-e** — `wm_nfe_client`

- **nfe_issue_document**: Emissão de NF-e ou NFC-e junto ao SEFAZ.
- **nfe_get_document**: Consulta da nota fiscal pelo UUID, pela chave de acesso ou pelo ID do pedido.
- **nfe_cancel_document**: Cancelamento de NF-e ou NFC-e.
- **nfe_create_correction**: Carta de correção.
- **nfe_void_numbering**: Inutilização de sequência de numeração.
- **nfe_issue_return**: Emissão de NF-e de devolução.
- **nfe_issue_complement**: Emissão de NF-e complementar.
- **nfe_issue_adjustment**: Emissão de NF-e de ajuste.
- **nfe_create_manifestation**: Manifestação do destinatário.
- **nfe_create_payment_event** / **nfe_cancel_payment_event**: Evento de conciliação financeira (ECONF) e o seu cancelamento.
- **nfe_create_ibs_cbs_event** / **nfe_cancel_ibs_cbs_event**: Eventos de IBS/CBS e o seu cancelamento.
- **nfe_list_tax_classes** / **nfe_save_tax_classes** / **nfe_delete_tax_classes**: Classes de imposto.
- **fiscal_create_or_poll_report**: Relatórios fiscais.
- **fiscal_update_company**: Atualização dos dados da empresa emissora.
- **nfe_get_sefaz_status**: Verifica se o SEFAZ está online ou offline.
- **nfe_get_certificate_validity**: Verifica quantos dias faltam para o certificado A1 expirar.

**NFS-e** — `wm_emitter_client`

- **emitter_issue_nfse**: Emissão de NFS-e a partir de RPS.
- **emitter_get_nfse**: Consulta da NFS-e.
- **emitter_cancel_nfse**: Cancelamento da NFS-e.
- **emitter_replace_nfse**: Substituição de NFS-e.
- **emitter_manifest_nfse**: Manifestação sobre NFS-e nacional.
- **emitter_get_nfse_provider_status**: Recursos do provedor de NFS-e do município da empresa.

**CT-e e CT-e OS** — `wm_emitter_client`

- **emitter_issue_cte** / **emitter_issue_simplified_cte**: Emissão de CT-e, CT-e OS e CT-e simplificado.
- **emitter_get_cte**: Consulta do CT-e.
- **emitter_cancel_cte**: Cancelamento do CT-e.
- **emitter_correct_cte**: Carta de correção do CT-e.
- **emitter_confirm_cte_delivery** / **emitter_cancel_cte_delivery**: Comprovante de entrega e o seu cancelamento.
- **emitter_link_cte_payment** / **emitter_cancel_cte_payment_link** / **emitter_get_cte_payment_events**: Eventos de pagamento do CT-e.

**MDF-e** — `wm_emitter_client`

- **emitter_issue_mdfe**: Emissão do MDF-e.
- **emitter_get_mdfe**: Consulta do MDF-e pela chave de acesso.
- **emitter_close_mdfe**: Encerramento do MDF-e.
- **emitter_cancel_mdfe**: Cancelamento do MDF-e.
- **emitter_add_mdfe_conductor**: Inclusão de condutor.

**NFCom e DC-e** — `wm_emitter_client`

- **emitter_issue_nfcom** / **emitter_get_nfcom** / **emitter_cancel_nfcom**: Emissão, consulta e cancelamento da NFCom.
- **emitter_get_nfcom_payment_events**: Eventos de pagamento da NFCom.
- **emitter_get_nfcom_service_status**: Disponibilidade do serviço da NFCom no SEFAZ.
- **emitter_issue_dce** / **emitter_get_dce** / **emitter_cancel_dce**: Emissão, consulta e cancelamento da DC-e.

**Arquivos (XML e PDF)** — `wm_nfe_files_client` e `wm_emitter_files_client`

- **nfe_download_danfe** / **nfe_download_simple_danfe** / **nfe_download_label_danfe**: DANFE completo, simplificado e etiqueta.
- **nfe_download_xml** / **nfe_download_cancellation_xml**: XML da NF-e e do cancelamento.
- **nfe_download_correction_pdf** / **nfe_download_correction_xml**: PDF e XML da carta de correção.
- **file_get_nfse_xml** / **file_get_nfse_pdf** / **file_get_nfse_rps_pdf**: XML e PDF da NFS-e e PDF do RPS.
- **file_get_cte_xml** / **file_get_cte_pdf** / **file_get_mdfe_xml** / **file_get_mdfe_pdf** / **file_get_nfcom_xml** / **file_get_nfcom_pdf** / **file_get_dce_xml** / **file_get_dce_pdf**: XML e PDF de CT-e, MDF-e, NFCom e DC-e.

**Monitor Fiscal** — `wm_monitor_client`

- **monitor_search_documents** / **monitor_get_document** / **monitor_list_document_events**: Busca e consulta de documentos recebidos e do histórico de eventos.
- **monitor_manifest_document**: Manifestação do destinatário.
- **monitor_import_document** / **monitor_get_import_status**: Importação por chave de acesso, XML ou ZIP.
- **monitor_list_companies** / **monitor_create_company** / **monitor_update_company**: Empresas monitoradas.

**Gerencial B2B** — `wm_reseller_client`

- **b2b_v1_create_companies** / **b2b_v1_list_companies** / **b2b_v1_get_processed_requests**: Cadastro de empresas, listagem e contagem de notas processadas por empresa.

A lista completa, com todas as funções do Monitor Fiscal e dos arquivos, está em [docs/OPERATIONS.md](docs/OPERATIONS.md).

## Exemplo completo em homologação

A pasta [examples/homologacao](examples/homologacao) traz um programa que emite, consulta, baixa os arquivos e cancela uma NF-e e uma NFS-e em homologação, usando as credenciais das variáveis de ambiente. Por segurança, ele só envia requisições quando `WEBMANIA_LIVE=1` está definido e `WEBMANIA_LIVE_ALLOWED_HOSTS` lista os hosts da API. Para rodar só as consultas (status do SEFAZ, certificado e provedor de NFS-e):

```sh
WEBMANIA_LIVE=1 WEBMANIA_LIVE_SCOPE=readonly WEBMANIA_LIVE_ALLOWED_HOSTS=webmania.com.br,nfe.webmania.com.br,api.webmania.com.br sh examples/homologacao/run.sh
```

As variáveis aceitas e o formato da saída estão em [examples/homologacao/README.md](examples/homologacao/README.md).

## Documentação

- Documentação da REST API: [NF-e / NFC-e](https://webmania.com.br/docs/rest-api-nfe/) · [NFS-e](https://webmania.com.br/docs/rest-api-nfse/) · [CT-e](https://webmania.com.br/docs/rest-api-cte/) · [MDF-e](https://webmania.com.br/docs/rest-api-mdfe/) · [NFCom](https://webmania.com.br/docs/rest-api-nfcom/) · [DC-e](https://webmania.com.br/docs/rest-api-dce/) · [Monitor Fiscal](https://webmania.com.br/docs/rest-api-monitor-fiscal/) · [Gerencial B2B](https://webmania.com.br/docs/rest-api-gerencial-b2b/)
- Contratos OpenAPI: [API 2.0](https://api.webmania.com.br/docs/openapi) e [NF-e](https://webmania.com.br/docs/rest-api-nfe/?format=openapi)
- Detalhes técnicos do SDK (URL base, arquivos, relatórios, limites): [docs/INTEGRATION.md](docs/INTEGRATION.md)
- Lista completa de funções: [docs/OPERATIONS.md](docs/OPERATIONS.md)
- Desenvolvimento e testes do SDK: [docs/TESTING.md](docs/TESTING.md)
- Histórico de versões: [CHANGELOG.md](CHANGELOG.md)

## Suporte

Qualquer dúvida entre em contato na nossa [Central de Ajuda](https://ajuda.webmania.com.br) ou acesse o [Painel de Controle](https://webmania.com.br/painel/) para conversar em tempo real no Chat ou Abrir um chamado.

## Licença

Licença proprietária Webmania®: veja [LICENSE](LICENSE) e os [Termos de Uso](https://webmania.com.br/termos-de-uso/). As dependências de terceiros mantêm as suas próprias licenças.
