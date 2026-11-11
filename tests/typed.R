library(webmania)
bad <- wm_json("{}")
checked <- 0L
expect_error <- function(expr) stopifnot(inherits(try(force(expr),silent=TRUE),"try-error"))
x <- api1_b2b_B2bError()
expect_error(wm_set(x,"message",bad));checked <- checked+1L
expect_error(wm_set(x,"success",bad));checked <- checked+1L
wm_close(x)
x <- api1_b2b_ResellerCreateCompaniesRequest()
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
wm_close(x)
x <- api1_b2b_ResellerCompanyCredentials()
expect_error(wm_set(x,"consumer_key",bad));checked <- checked+1L
expect_error(wm_set(x,"consumer_secret",bad));checked <- checked+1L
expect_error(wm_set(x,"access_token",bad));checked <- checked+1L
expect_error(wm_set(x,"access_token_secret",bad));checked <- checked+1L
expect_error(wm_set(x,"bearer_access_token",bad));checked <- checked+1L
expect_error(wm_set(x,"bearer_access_token_status",bad));checked <- checked+1L
expect_error(wm_set(x,"bearer_access_token_pending",bad));checked <- checked+1L
expect_error(wm_set(x,"direct_link_login",bad));checked <- checked+1L
wm_close(x)
x <- api1_b2b_ResellerCreatedCompany()
expect_error(wm_set(x,"consumer_key",bad));checked <- checked+1L
expect_error(wm_set(x,"consumer_secret",bad));checked <- checked+1L
expect_error(wm_set(x,"access_token",bad));checked <- checked+1L
expect_error(wm_set(x,"access_token_secret",bad));checked <- checked+1L
expect_error(wm_set(x,"bearer_access_token",bad));checked <- checked+1L
expect_error(wm_set(x,"bearer_access_token_status",bad));checked <- checked+1L
expect_error(wm_set(x,"bearer_access_token_pending",bad));checked <- checked+1L
expect_error(wm_set(x,"direct_link_login",bad));checked <- checked+1L
expect_error(wm_set(x,"id",bad));checked <- checked+1L
expect_error(wm_set(x,"bearer_access_token_recovery_queued",bad));checked <- checked+1L
expect_error(wm_set(x,"bearer_access_token_recovery_queue_status",bad));checked <- checked+1L
wm_close(x)
x <- api1_b2b_ResellerCompany()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"estado",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"id",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_empresa",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"credenciais",bad));checked <- checked+1L
wm_close(x)
x <- api1_b2b_ResellerCompanyProcessedRequests()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"estado",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"id",bad));checked <- checked+1L
expect_error(wm_set(x,"notas_processadas",bad));checked <- checked+1L
wm_close(x)
x <- api1_b2b_ResellerProcessedRequests()
expect_error(wm_set(x,"total_notas_processadas",bad));checked <- checked+1L
expect_error(wm_set(x,"empresas",bad));checked <- checked+1L
wm_close(x)
x <- api1_b2b_B2bFunctionalError()
expect_error(wm_set(x,"message",bad));checked <- checked+1L
expect_error(wm_set(x,"success",bad));checked <- checked+1L
wm_close(x)
x <- api1_b2b_B2bV1GetProcessedRequestsQuery()
expect_error(wm_set(x,"mes",bad));checked <- checked+1L
expect_error(wm_set(x,"ano",bad));checked <- checked+1L
wm_close(x)
x <- api1_files_Api1Error()
expect_error(wm_set(x,"error",bad));checked <- checked+1L
expect_error(wm_set(x,"message",bad));checked <- checked+1L
expect_error(wm_set(x,"code",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
wm_close(x)
x <- api1_files_Api1ErrorLogVariant1()
expect_error(wm_set(x,"cStat",bad));checked <- checked+1L
expect_error(wm_set(x,"xMotivo",bad));checked <- checked+1L
wm_close(x)
x <- api1_files_NfeDownloadXmlQuery()
expect_error(wm_set(x,"download",bad));checked <- checked+1L
wm_close(x)
x <- api1_files_NfeDownloadCancellationXmlQuery()
expect_error(wm_set(x,"download",bad));checked <- checked+1L
wm_close(x)
x <- api1_files_NfeDownloadCorrectionXmlQuery()
expect_error(wm_set(x,"download",bad));checked <- checked+1L
wm_close(x)
x <- api1_files_NfeDownloadCorrectionXmlSequenceQuery()
expect_error(wm_set(x,"download",bad));checked <- checked+1L
wm_close(x)
x <- api1_files_NfeDownloadManifestationXmlQuery()
expect_error(wm_set(x,"download",bad));checked <- checked+1L
wm_close(x)
x <- api1_files_NfeDownloadPaymentEventXmlQuery()
expect_error(wm_set(x,"download",bad));checked <- checked+1L
wm_close(x)
x <- api1_files_NfeDownloadPaymentEventXmlSequenceQuery()
expect_error(wm_set(x,"download",bad));checked <- checked+1L
wm_close(x)
x <- api1_files_NfeDownloadIbsCbsEventXmlQuery()
expect_error(wm_set(x,"download",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_Api1Error()
expect_error(wm_set(x,"error",bad));checked <- checked+1L
expect_error(wm_set(x,"message",bad));checked <- checked+1L
expect_error(wm_set(x,"code",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_Api1ErrorLogVariant1()
expect_error(wm_set(x,"cStat",bad));checked <- checked+1L
expect_error(wm_set(x,"xMotivo",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_SefazLog()
expect_error(wm_set(x,"cStat",bad));checked <- checked+1L
expect_error(wm_set(x,"xMotivo",bad));checked <- checked+1L
expect_error(wm_set(x,"nProt",bad));checked <- checked+1L
expect_error(wm_set(x,"tpAmb",bad));checked <- checked+1L
expect_error(wm_set(x,"dhRecbto",bad));checked <- checked+1L
expect_error(wm_set(x,"chNFe",bad));checked <- checked+1L
expect_error(wm_set(x,"verAplic",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_SefazLogEventoVariant0()
expect_error(wm_set(x,"cStat",bad));checked <- checked+1L
expect_error(wm_set(x,"xMotivo",bad));checked <- checked+1L
expect_error(wm_set(x,"nProt",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_SefazLogEventoVariant1Item()
expect_error(wm_set(x,"cStat",bad));checked <- checked+1L
expect_error(wm_set(x,"xMotivo",bad));checked <- checked+1L
expect_error(wm_set(x,"nProt",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeDocument()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"nfe",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"recibo",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"epec",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"danfe",bad));checked <- checked+1L
expect_error(wm_set(x,"danfe_simples",bad));checked <- checked+1L
expect_error(wm_set(x,"danfe_etiqueta",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"log_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"data",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"dacce",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeEventResult()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"dacce",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeCancelResult()
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeVoidResult()
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeCertificateValidity()
expect_error(wm_set(x,"expiration",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeSefazStatus()
expect_error(wm_set(x,"status",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeLookupRequest()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"id",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeCorrectionRequest()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"correcao",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeManifestationRequest()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeCancelRequest()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"nfce_referenciada",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeVoidRequest()
expect_error(wm_set(x,"sequencia",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"ver_aplic",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfePaymentEventItem()
expect_error(wm_set(x,"indicador_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"forma_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"desc_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"data_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_transacional_pag",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_instituicao_financeira",bad));checked <- checked+1L
expect_error(wm_set(x,"bandeira",bad));checked <- checked+1L
expect_error(wm_set(x,"autorizacao",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_beneficiario",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_beneficiario",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfePaymentEventRequest()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"pagamentos",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfePaymentEventCancelRequest()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeIbsCbsEventCancelRequest()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_TaxClassDeleteRequest()
expect_error(wm_set(x,"referencia",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_TaxClassDeleteItem()
expect_error(wm_set(x,"referencia",bad));checked <- checked+1L
expect_error(wm_set(x,"msg",bad));checked <- checked+1L
expect_error(wm_set(x,"error",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_TaxClassNoResults()
expect_error(wm_set(x,"msg",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_TaxClassListItem()
expect_error(wm_set(x,"referencia",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"icms",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"issqn",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_fisco",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_complementares",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"tributos_federais",bad));checked <- checked+1L
expect_error(wm_set(x,"tributos_estaduais",bad));checked <- checked+1L
expect_error(wm_set(x,"type",bad));checked <- checked+1L
expect_error(wm_set(x,"data",bad));checked <- checked+1L
expect_error(wm_set(x,"updated_date",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_TaxClassListIcms()
expect_error(wm_set(x,"tipo_tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"cenario",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_pessoa",bad));checked <- checked+1L
expect_error(wm_set(x,"nao_contribuinte",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_importacao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_mva",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_st",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_fcp",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_fcp_st",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento_fcp",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao_st",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva_icms",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva_icms_st",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_beneficio_reducao_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_desoneracao",bad));checked <- checked+1L
expect_error(wm_set(x,"deducao_desoneracao",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_desoneracao_st",bad));checked <- checked+1L
expect_error(wm_set(x,"beneficio_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_TaxClassListStateRate()
expect_error(wm_set(x,"estado",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G043()
expect_error(wm_set(x,"estado",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_TaxClassListIcmsPresumedCredit()
expect_error(wm_set(x,"estado",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_beneficio_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_TaxClassListIpi()
expect_error(wm_set(x,"cenario",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_pessoa",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_enquadramento",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_TaxClassListPis()
expect_error(wm_set(x,"cenario",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_pessoa",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_TaxClassListCofins()
expect_error(wm_set(x,"cenario",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_pessoa",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_TaxClassListIssqn()
expect_error(wm_set(x,"cenario",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_pessoa",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"exigibilidade",bad));checked <- checked+1L
expect_error(wm_set(x,"item_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"incentivo_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_TaxClassListIbsCbs()
expect_error(wm_set(x,"cenario",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_pessoa",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_TaxClassListIbsCbsDeferral()
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_TaxClassListPresumedCredit()
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G002()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"nfe",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"recibo",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"epec",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"danfe",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"data",bad));checked <- checked+1L
expect_error(wm_set(x,"log_cancelamento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeIssueRequest()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_debito",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"cliente",bad));checked <- checked+1L
expect_error(wm_set(x,"produtos",bad));checked <- checked+1L
expect_error(wm_set(x,"pedido",bad));checked <- checked+1L
expect_error(wm_set(x,"transporte",bad));checked <- checked+1L
expect_error(wm_set(x,"fatura",bad));checked <- checked+1L
expect_error(wm_set(x,"parcelas",bad));checked <- checked+1L
expect_error(wm_set(x,"exportacao",bad));checked <- checked+1L
expect_error(wm_set(x,"agropecuario",bad));checked <- checked+1L
expect_error(wm_set(x,"compra_governamental",bad));checked <- checked+1L
expect_error(wm_set(x,"inscricao_suframa",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_indicador_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_entrada_saida",bad));checked <- checked+1L
expect_error(wm_set(x,"data_previsao_entrega",bad));checked <- checked+1L
expect_error(wm_set(x,"data_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"nfe_referenciada",bad));checked <- checked+1L
expect_error(wm_set(x,"cte_referenciada",bad));checked <- checked+1L
expect_error(wm_set(x,"ecf_referenciada",bad));checked <- checked+1L
expect_error(wm_set(x,"nf_rural_referenciada",bad));checked <- checked+1L
expect_error(wm_set(x,"calculo_impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"previa_danfe",bad));checked <- checked+1L
expect_error(wm_set(x,"assincrono",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel_tecnico",bad));checked <- checked+1L
expect_error(wm_set(x,"duplicatas",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeCustomer()
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"suframa",bad));checked <- checked+1L
expect_error(wm_set(x,"substituto_tributario",bad));checked <- checked+1L
expect_error(wm_set(x,"consumidor_final",bad));checked <- checked+1L
expect_error(wm_set(x,"contribuinte",bad));checked <- checked+1L
expect_error(wm_set(x,"microcervejaria",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
expect_error(wm_set(x,"id_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_pais",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeProduct()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"ncm",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"peso",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto",bad));checked <- checked+1L
expect_error(wm_set(x,"subtotal",bad));checked <- checked+1L
expect_error(wm_set(x,"subtotal_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"total",bad));checked <- checked+1L
expect_error(wm_set(x,"ind_valor_total",bad));checked <- checked+1L
expect_error(wm_set(x,"classe_imposto",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"dfe_referenciado",bad));checked <- checked+1L
expect_error(wm_set(x,"cest",bad));checked <- checked+1L
expect_error(wm_set(x,"beneficio_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_adicionais",bad));checked <- checked+1L
expect_error(wm_set(x,"ind_escala",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_fabricante",bad));checked <- checked+1L
expect_error(wm_set(x,"gtin",bad));checked <- checked+1L
expect_error(wm_set(x,"gtin_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_barras",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_barras_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"nve",bad));checked <- checked+1L
expect_error(wm_set(x,"nrecopi",bad));checked <- checked+1L
expect_error(wm_set(x,"ativo_permanente",bad));checked <- checked+1L
expect_error(wm_set(x,"veiculo_usado",bad));checked <- checked+1L
expect_error(wm_set(x,"ex_ipi",bad));checked <- checked+1L
expect_error(wm_set(x,"combustiveis",bad));checked <- checked+1L
expect_error(wm_set(x,"medicamento",bad));checked <- checked+1L
expect_error(wm_set(x,"armamentos",bad));checked <- checked+1L
expect_error(wm_set(x,"veiculos_novos",bad));checked <- checked+1L
expect_error(wm_set(x,"rastro",bad));checked <- checked+1L
expect_error(wm_set(x,"drawback",bad));checked <- checked+1L
expect_error(wm_set(x,"reg_exportacao",bad));checked <- checked+1L
expect_error(wm_set(x,"nfe_exportacao",bad));checked <- checked+1L
expect_error(wm_set(x,"qtd_exportacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ndoc_importacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ddoc_importacao",bad));checked <- checked+1L
expect_error(wm_set(x,"local_desembaraco",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_desembaraco",bad));checked <- checked+1L
expect_error(wm_set(x,"data_desembaraco",bad));checked <- checked+1L
expect_error(wm_set(x,"via_transporte",bad));checked <- checked+1L
expect_error(wm_set(x,"intermediacao",bad));checked <- checked+1L
expect_error(wm_set(x,"adicao",bad));checked <- checked+1L
expect_error(wm_set(x,"seq_adicao",bad));checked <- checked+1L
expect_error(wm_set(x,"fabricante",bad));checked <- checked+1L
expect_error(wm_set(x,"desc_di",bad));checked <- checked+1L
expect_error(wm_set(x,"afrmm",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_terceiro",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf_terceiro",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_terceiro",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_exportador",bad));checked <- checked+1L
expect_error(wm_set(x,"nfci",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G069()
expect_error(wm_set(x,"icms",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"issqn",bad));checked <- checked+1L
expect_error(wm_set(x,"retencao_tributos",bad));checked <- checked+1L
expect_error(wm_set(x,"importacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeIcms()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_fcp",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_interestadual",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_importacao",bad));checked <- checked+1L
expect_error(wm_set(x,"industria",bad));checked <- checked+1L
expect_error(wm_set(x,"majoracao",bad));checked <- checked+1L
expect_error(wm_set(x,"bc_icms",bad));checked <- checked+1L
expect_error(wm_set(x,"bc_icms_st",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_icms",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_st",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_fcp_st",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_mva",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao_st",bad));checked <- checked+1L
expect_error(wm_set(x,"bc_st_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_st_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_st_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_icms_substituto",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_fcp_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_fcp_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_bc_efetivo",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_icms_efetivo",bad));checked <- checked+1L
expect_error(wm_set(x,"difal_antecipacao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_beneficio_reducao_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"pauta_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_desoneracao_st",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_desoneracao",bad));checked <- checked+1L
expect_error(wm_set(x,"deducao_desoneracao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento_fcp",bad));checked <- checked+1L
expect_error(wm_set(x,"bc_st_dest",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_st_dest",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_beneficio_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G091()
expect_error(wm_set(x,"codigo_beneficio_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G092()
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_enquadramento",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_selo",bad));checked <- checked+1L
expect_error(wm_set(x,"qtd_selo",bad));checked <- checked+1L
expect_error(wm_set(x,"bc_ipi",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G093()
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"majoracao",bad));checked <- checked+1L
expect_error(wm_set(x,"bc_pis",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G094()
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"majoracao",bad));checked <- checked+1L
expect_error(wm_set(x,"bc_cofins",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G095()
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"exigibilidade",bad));checked <- checked+1L
expect_error(wm_set(x,"item_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"incentivo_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"deducao",bad));checked <- checked+1L
expect_error(wm_set(x,"retencoes",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_incondicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_condicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"processo",bad));checked <- checked+1L
expect_error(wm_set(x,"cnae",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G096()
expect_error(wm_set(x,"valor_pis",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_csll",bad));checked <- checked+1L
expect_error(wm_set(x,"bc_irrf",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_irrf",bad));checked <- checked+1L
expect_error(wm_set(x,"bc_previdencia",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_previdencia",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G097()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"iof",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G100()
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao_monofasica",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
expect_error(wm_set(x,"transferencia_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"ajuste_competencia",bad));checked <- checked+1L
expect_error(wm_set(x,"estorno_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G101()
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G102()
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G103()
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"alc_zfm_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G104()
expect_error(wm_set(x,"tipo_aplicacao",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_processo_suframa",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva_referencia",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_efetivo_referencia",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G105()
expect_error(wm_set(x,"quantidade_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_bc_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_bc_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G106()
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G108()
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G109()
expect_error(wm_set(x,"competencia_apuracao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G110()
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G015()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"item",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G016()
expect_error(wm_set(x,"codigo_anp",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao_anp",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_consumo",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual_glp",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual_gnn",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual_gni",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual_biodiesel",bad));checked <- checked+1L
expect_error(wm_set(x,"partida",bad));checked <- checked+1L
expect_error(wm_set(x,"codif",bad));checked <- checked+1L
expect_error(wm_set(x,"qtd_temperatura",bad));checked <- checked+1L
expect_error(wm_set(x,"bc_cide",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cide",bad));checked <- checked+1L
expect_error(wm_set(x,"bico",bad));checked <- checked+1L
expect_error(wm_set(x,"bomba",bad));checked <- checked+1L
expect_error(wm_set(x,"tanque",bad));checked <- checked+1L
expect_error(wm_set(x,"encerrante_inicio",bad));checked <- checked+1L
expect_error(wm_set(x,"encerrante_final",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G017()
expect_error(wm_set(x,"indicador_importacao",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_origem",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual_originario",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G018()
expect_error(wm_set(x,"codigo_anvisa",bad));checked <- checked+1L
expect_error(wm_set(x,"pmc",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G019()
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_arma",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_cano",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G020()
expect_error(wm_set(x,"tipo_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"chassi",bad));checked <- checked+1L
expect_error(wm_set(x,"cor",bad));checked <- checked+1L
expect_error(wm_set(x,"cor_descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"cv",bad));checked <- checked+1L
expect_error(wm_set(x,"cilindrada",bad));checked <- checked+1L
expect_error(wm_set(x,"peso_liquido",bad));checked <- checked+1L
expect_error(wm_set(x,"peso_bruto",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_combustivel",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_motor",bad));checked <- checked+1L
expect_error(wm_set(x,"cmt",bad));checked <- checked+1L
expect_error(wm_set(x,"dist",bad));checked <- checked+1L
expect_error(wm_set(x,"ano_modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"ano_fabricacao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_pintura",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_veiculo",bad));checked <- checked+1L
expect_error(wm_set(x,"especie_veiculo",bad));checked <- checked+1L
expect_error(wm_set(x,"vin",bad));checked <- checked+1L
expect_error(wm_set(x,"condicao_veiculo",bad));checked <- checked+1L
expect_error(wm_set(x,"marca_modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"cor_denatran",bad));checked <- checked+1L
expect_error(wm_set(x,"lotacao",bad));checked <- checked+1L
expect_error(wm_set(x,"restricao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G014()
expect_error(wm_set(x,"lote",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"data_fabricacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_validade",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_agregacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeOrder()
expect_error(wm_set(x,"presenca",bad));checked <- checked+1L
expect_error(wm_set(x,"intermediador",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_intermediador",bad));checked <- checked+1L
expect_error(wm_set(x,"id_intermediador",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade_frete",bad));checked <- checked+1L
expect_error(wm_set(x,"frete",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto",bad));checked <- checked+1L
expect_error(wm_set(x,"total",bad));checked <- checked+1L
expect_error(wm_set(x,"despesas_acessorias",bad));checked <- checked+1L
expect_error(wm_set(x,"despesas_aduaneiras",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_fisco",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_complementares",bad));checked <- checked+1L
expect_error(wm_set(x,"observacoes_contribuinte",bad));checked <- checked+1L
expect_error(wm_set(x,"pedido_compra",bad));checked <- checked+1L
expect_error(wm_set(x,"contrato",bad));checked <- checked+1L
expect_error(wm_set(x,"nota_empenho",bad));checked <- checked+1L
expect_error(wm_set(x,"pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"forma_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"desc_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"data_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_transacional_pag",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_estabelecimento_pag",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_integracao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_credenciadora",bad));checked <- checked+1L
expect_error(wm_set(x,"bandeira",bad));checked <- checked+1L
expect_error(wm_set(x,"autorizacao",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_beneficiario",bad));checked <- checked+1L
expect_error(wm_set(x,"id_terminal_pag",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeContributorObservation()
expect_error(wm_set(x,"campo",bad));checked <- checked+1L
expect_error(wm_set(x,"texto",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeTransport()
expect_error(wm_set(x,"volume",bad));checked <- checked+1L
expect_error(wm_set(x,"especie",bad));checked <- checked+1L
expect_error(wm_set(x,"peso_bruto",bad));checked <- checked+1L
expect_error(wm_set(x,"peso_liquido",bad));checked <- checked+1L
expect_error(wm_set(x,"marca",bad));checked <- checked+1L
expect_error(wm_set(x,"numeracao",bad));checked <- checked+1L
expect_error(wm_set(x,"lacres",bad));checked <- checked+1L
expect_error(wm_set(x,"reboque",bad));checked <- checked+1L
expect_error(wm_set(x,"entrega",bad));checked <- checked+1L
expect_error(wm_set(x,"retirada",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"placa",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_veiculo",bad));checked <- checked+1L
expect_error(wm_set(x,"rntc",bad));checked <- checked+1L
expect_error(wm_set(x,"seguro",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G025()
expect_error(wm_set(x,"placa",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_veiculo",bad));checked <- checked+1L
expect_error(wm_set(x,"rntc",bad));checked <- checked+1L
expect_error(wm_set(x,"vagao",bad));checked <- checked+1L
expect_error(wm_set(x,"balsa",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G026()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"pais",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G027()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"pais",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G028()
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_liquido",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G029()
expect_error(wm_set(x,"vencimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G030()
expect_error(wm_set(x,"uf_embarque",bad));checked <- checked+1L
expect_error(wm_set(x,"local_embarque",bad));checked <- checked+1L
expect_error(wm_set(x,"local_despacho",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G031()
expect_error(wm_set(x,"defensivos",bad));checked <- checked+1L
expect_error(wm_set(x,"guia_transito",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G032()
expect_error(wm_set(x,"numero_receituario",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf_responsavel_tecnico",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G033()
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G034()
expect_error(wm_set(x,"tipo_ente_governamental",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual_redutor",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_operacao_governamental",bad));checked <- checked+1L
expect_error(wm_set(x,"dfes_anteriores",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G006()
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"n_ecf",bad));checked <- checked+1L
expect_error(wm_set(x,"n_coo",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G007()
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"data",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G068()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"contato",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"id_csrt",bad));checked <- checked+1L
expect_error(wm_set(x,"csrt",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G003()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_debito",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"cliente",bad));checked <- checked+1L
expect_error(wm_set(x,"produtos",bad));checked <- checked+1L
expect_error(wm_set(x,"pedido",bad));checked <- checked+1L
expect_error(wm_set(x,"transporte",bad));checked <- checked+1L
expect_error(wm_set(x,"fatura",bad));checked <- checked+1L
expect_error(wm_set(x,"parcelas",bad));checked <- checked+1L
expect_error(wm_set(x,"exportacao",bad));checked <- checked+1L
expect_error(wm_set(x,"agropecuario",bad));checked <- checked+1L
expect_error(wm_set(x,"compra_governamental",bad));checked <- checked+1L
expect_error(wm_set(x,"inscricao_suframa",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_indicador_operacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G004()
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_entrada_saida",bad));checked <- checked+1L
expect_error(wm_set(x,"data_previsao_entrega",bad));checked <- checked+1L
expect_error(wm_set(x,"data_servico",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G005()
expect_error(wm_set(x,"nfe_referenciada",bad));checked <- checked+1L
expect_error(wm_set(x,"cte_referenciada",bad));checked <- checked+1L
expect_error(wm_set(x,"ecf_referenciada",bad));checked <- checked+1L
expect_error(wm_set(x,"nf_rural_referenciada",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G008()
expect_error(wm_set(x,"calculo_impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"previa_danfe",bad));checked <- checked+1L
expect_error(wm_set(x,"assincrono",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G009()
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"suframa",bad));checked <- checked+1L
expect_error(wm_set(x,"substituto_tributario",bad));checked <- checked+1L
expect_error(wm_set(x,"consumidor_final",bad));checked <- checked+1L
expect_error(wm_set(x,"contribuinte",bad));checked <- checked+1L
expect_error(wm_set(x,"microcervejaria",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G010()
expect_error(wm_set(x,"id_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G011()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"ncm",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"peso",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto",bad));checked <- checked+1L
expect_error(wm_set(x,"subtotal",bad));checked <- checked+1L
expect_error(wm_set(x,"subtotal_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"total",bad));checked <- checked+1L
expect_error(wm_set(x,"ind_valor_total",bad));checked <- checked+1L
expect_error(wm_set(x,"classe_imposto",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"dfe_referenciado",bad));checked <- checked+1L
expect_error(wm_set(x,"cest",bad));checked <- checked+1L
expect_error(wm_set(x,"beneficio_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_adicionais",bad));checked <- checked+1L
expect_error(wm_set(x,"ind_escala",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_fabricante",bad));checked <- checked+1L
expect_error(wm_set(x,"gtin",bad));checked <- checked+1L
expect_error(wm_set(x,"gtin_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_barras",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_barras_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"nve",bad));checked <- checked+1L
expect_error(wm_set(x,"nrecopi",bad));checked <- checked+1L
expect_error(wm_set(x,"ativo_permanente",bad));checked <- checked+1L
expect_error(wm_set(x,"veiculo_usado",bad));checked <- checked+1L
expect_error(wm_set(x,"ex_ipi",bad));checked <- checked+1L
expect_error(wm_set(x,"combustiveis",bad));checked <- checked+1L
expect_error(wm_set(x,"medicamento",bad));checked <- checked+1L
expect_error(wm_set(x,"armamentos",bad));checked <- checked+1L
expect_error(wm_set(x,"veiculos_novos",bad));checked <- checked+1L
expect_error(wm_set(x,"rastro",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G012()
expect_error(wm_set(x,"drawback",bad));checked <- checked+1L
expect_error(wm_set(x,"reg_exportacao",bad));checked <- checked+1L
expect_error(wm_set(x,"nfe_exportacao",bad));checked <- checked+1L
expect_error(wm_set(x,"qtd_exportacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G013()
expect_error(wm_set(x,"subtotal",bad));checked <- checked+1L
expect_error(wm_set(x,"total",bad));checked <- checked+1L
expect_error(wm_set(x,"ndoc_importacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ddoc_importacao",bad));checked <- checked+1L
expect_error(wm_set(x,"local_desembaraco",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_desembaraco",bad));checked <- checked+1L
expect_error(wm_set(x,"data_desembaraco",bad));checked <- checked+1L
expect_error(wm_set(x,"via_transporte",bad));checked <- checked+1L
expect_error(wm_set(x,"intermediacao",bad));checked <- checked+1L
expect_error(wm_set(x,"adicao",bad));checked <- checked+1L
expect_error(wm_set(x,"seq_adicao",bad));checked <- checked+1L
expect_error(wm_set(x,"fabricante",bad));checked <- checked+1L
expect_error(wm_set(x,"desc_di",bad));checked <- checked+1L
expect_error(wm_set(x,"afrmm",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_terceiro",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf_terceiro",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_terceiro",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_exportador",bad));checked <- checked+1L
expect_error(wm_set(x,"nfci",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G021()
expect_error(wm_set(x,"presenca",bad));checked <- checked+1L
expect_error(wm_set(x,"intermediador",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_intermediador",bad));checked <- checked+1L
expect_error(wm_set(x,"id_intermediador",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade_frete",bad));checked <- checked+1L
expect_error(wm_set(x,"frete",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto",bad));checked <- checked+1L
expect_error(wm_set(x,"total",bad));checked <- checked+1L
expect_error(wm_set(x,"despesas_acessorias",bad));checked <- checked+1L
expect_error(wm_set(x,"despesas_aduaneiras",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_fisco",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_complementares",bad));checked <- checked+1L
expect_error(wm_set(x,"observacoes_contribuinte",bad));checked <- checked+1L
expect_error(wm_set(x,"pedido_compra",bad));checked <- checked+1L
expect_error(wm_set(x,"contrato",bad));checked <- checked+1L
expect_error(wm_set(x,"nota_empenho",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G022()
expect_error(wm_set(x,"pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"forma_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"desc_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"data_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_transacional_pag",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_estabelecimento_pag",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_integracao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_credenciadora",bad));checked <- checked+1L
expect_error(wm_set(x,"bandeira",bad));checked <- checked+1L
expect_error(wm_set(x,"autorizacao",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_beneficiario",bad));checked <- checked+1L
expect_error(wm_set(x,"id_terminal_pag",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G023()
expect_error(wm_set(x,"volume",bad));checked <- checked+1L
expect_error(wm_set(x,"especie",bad));checked <- checked+1L
expect_error(wm_set(x,"peso_bruto",bad));checked <- checked+1L
expect_error(wm_set(x,"peso_liquido",bad));checked <- checked+1L
expect_error(wm_set(x,"marca",bad));checked <- checked+1L
expect_error(wm_set(x,"numeracao",bad));checked <- checked+1L
expect_error(wm_set(x,"lacres",bad));checked <- checked+1L
expect_error(wm_set(x,"reboque",bad));checked <- checked+1L
expect_error(wm_set(x,"entrega",bad));checked <- checked+1L
expect_error(wm_set(x,"retirada",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G024()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"placa",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_veiculo",bad));checked <- checked+1L
expect_error(wm_set(x,"rntc",bad));checked <- checked+1L
expect_error(wm_set(x,"seguro",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G035()
expect_error(wm_set(x,"referencia",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"icms",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"issqn",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_fisco",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_complementares",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G037()
expect_error(wm_set(x,"tipo_tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"cenario",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_pessoa",bad));checked <- checked+1L
expect_error(wm_set(x,"nao_contribuinte",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_importacao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_mva",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_icms",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_icms_st",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_fcp",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_fcp_st",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento_fcp",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao_st",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva_icms",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva_icms_st",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_beneficio_reducao_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_desoneracao",bad));checked <- checked+1L
expect_error(wm_set(x,"deducao_desoneracao",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_desoneracao_st",bad));checked <- checked+1L
expect_error(wm_set(x,"beneficio_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G038()
expect_error(wm_set(x,"estado",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G039()
expect_error(wm_set(x,"estado",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G040()
expect_error(wm_set(x,"estado",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G041()
expect_error(wm_set(x,"estado",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G042()
expect_error(wm_set(x,"estado",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G044()
expect_error(wm_set(x,"estado",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_beneficio_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G045()
expect_error(wm_set(x,"cenario",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_pessoa",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_enquadramento",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G046()
expect_error(wm_set(x,"cenario",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_pessoa",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G047()
expect_error(wm_set(x,"cenario",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_pessoa",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G048()
expect_error(wm_set(x,"cenario",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_pessoa",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"exigibilidade",bad));checked <- checked+1L
expect_error(wm_set(x,"item_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"incentivo_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G049()
expect_error(wm_set(x,"cenario",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_pessoa",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G050()
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G051()
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G052()
expect_error(wm_set(x,"referencia",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"iss",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"inss",bad));checked <- checked+1L
expect_error(wm_set(x,"ir",bad));checked <- checked+1L
expect_error(wm_set(x,"csll",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G053()
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G054()
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G055()
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"exigibilidade_iss",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_tributacao_municipio",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G056()
expect_error(wm_set(x,"codigo_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"local_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"cep_local_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G057()
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cnae",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G058()
expect_error(wm_set(x,"cfps",bad));checked <- checked+1L
expect_error(wm_set(x,"id_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G059()
expect_error(wm_set(x,"cenario",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfps",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G060()
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"regime_recolhimento",bad));checked <- checked+1L
expect_error(wm_set(x,"forma_recolhimento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G061()
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_tributacao_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G062()
expect_error(wm_set(x,"cenario",bad));checked <- checked+1L
expect_error(wm_set(x,"exigibilidade_iss",bad));checked <- checked+1L
expect_error(wm_set(x,"deducoes",bad));checked <- checked+1L
expect_error(wm_set(x,"iss",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"inss",bad));checked <- checked+1L
expect_error(wm_set(x,"ir",bad));checked <- checked+1L
expect_error(wm_set(x,"csll",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G063()
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel_retencao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G064()
expect_error(wm_set(x,"tipo_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_tributacao_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao_iss",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_imunidade",bad));checked <- checked+1L
expect_error(wm_set(x,"retencao_iss",bad));checked <- checked+1L
expect_error(wm_set(x,"cst_pis_cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"retencao_pis_cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G065()
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G066()
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel_retencao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G067()
expect_error(wm_set(x,"referencia",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G070()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_fcp",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_interestadual",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_importacao",bad));checked <- checked+1L
expect_error(wm_set(x,"industria",bad));checked <- checked+1L
expect_error(wm_set(x,"majoracao",bad));checked <- checked+1L
expect_error(wm_set(x,"bc_icms",bad));checked <- checked+1L
expect_error(wm_set(x,"bc_icms_st",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_icms",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G071()
expect_error(wm_set(x,"aliquota_credito",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G072()
expect_error(wm_set(x,"aliquota_st",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_fcp_st",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_mva",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao_st",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G073()
expect_error(wm_set(x,"aliquota_st",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_fcp_st",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_mva",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao_st",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G074()
expect_error(wm_set(x,"bc_st_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_st_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_st_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_icms_substituto",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_fcp_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_fcp_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_bc_efetivo",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_icms_efetivo",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G075()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_fcp",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_interestadual",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_importacao",bad));checked <- checked+1L
expect_error(wm_set(x,"industria",bad));checked <- checked+1L
expect_error(wm_set(x,"majoracao",bad));checked <- checked+1L
expect_error(wm_set(x,"difal_antecipacao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_beneficio_reducao_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"bc_icms",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_icms",bad));checked <- checked+1L
expect_error(wm_set(x,"bc_icms_st",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G076()
expect_error(wm_set(x,"pauta_fiscal",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G077()
expect_error(wm_set(x,"quantidade_bc",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G078()
expect_error(wm_set(x,"aliquota_st",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_fcp_st",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_mva",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao_st",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_desoneracao_st",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G079()
expect_error(wm_set(x,"quantidade_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_bc",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G080()
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_desoneracao",bad));checked <- checked+1L
expect_error(wm_set(x,"deducao_desoneracao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G081()
expect_error(wm_set(x,"motivo_desoneracao",bad));checked <- checked+1L
expect_error(wm_set(x,"deducao_desoneracao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G082()
expect_error(wm_set(x,"motivo_desoneracao",bad));checked <- checked+1L
expect_error(wm_set(x,"deducao_desoneracao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G083()
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento_fcp",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_beneficio_reducao_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_desoneracao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G084()
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_bc",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G085()
expect_error(wm_set(x,"bc_st_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_st_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_st_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"bc_st_dest",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_st_dest",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_fcp_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_fcp_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_bc_efetivo",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_icms_efetivo",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G086()
expect_error(wm_set(x,"quantidade_bc",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G087()
expect_error(wm_set(x,"aliquota_st",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_fcp_st",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_mva",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao_st",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_desoneracao",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_desoneracao_st",bad));checked <- checked+1L
expect_error(wm_set(x,"deducao_desoneracao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G088()
expect_error(wm_set(x,"aliquota_mva",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G089()
expect_error(wm_set(x,"pauta_fiscal",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G090()
expect_error(wm_set(x,"valor_operacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G111()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"classe_imposto",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"produtos",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"volume",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_fisco",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_complementares",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G112()
expect_error(wm_set(x,"operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_icms",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_icms_st",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"cliente",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_fisco",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_complementares",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G113()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"cliente",bad));checked <- checked+1L
expect_error(wm_set(x,"produtos",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"agropecuario",bad));checked <- checked+1L
expect_error(wm_set(x,"documento_adicao",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_fisco",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_complementares",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeComplementProduct()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"ncm",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"peso",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto",bad));checked <- checked+1L
expect_error(wm_set(x,"subtotal",bad));checked <- checked+1L
expect_error(wm_set(x,"subtotal_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"total",bad));checked <- checked+1L
expect_error(wm_set(x,"ind_valor_total",bad));checked <- checked+1L
expect_error(wm_set(x,"classe_imposto",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"dfe_referenciado",bad));checked <- checked+1L
expect_error(wm_set(x,"cest",bad));checked <- checked+1L
expect_error(wm_set(x,"beneficio_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_adicionais",bad));checked <- checked+1L
expect_error(wm_set(x,"ind_escala",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_fabricante",bad));checked <- checked+1L
expect_error(wm_set(x,"gtin",bad));checked <- checked+1L
expect_error(wm_set(x,"gtin_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_barras",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_barras_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"nve",bad));checked <- checked+1L
expect_error(wm_set(x,"nrecopi",bad));checked <- checked+1L
expect_error(wm_set(x,"ativo_permanente",bad));checked <- checked+1L
expect_error(wm_set(x,"veiculo_usado",bad));checked <- checked+1L
expect_error(wm_set(x,"ex_ipi",bad));checked <- checked+1L
expect_error(wm_set(x,"combustiveis",bad));checked <- checked+1L
expect_error(wm_set(x,"medicamento",bad));checked <- checked+1L
expect_error(wm_set(x,"armamentos",bad));checked <- checked+1L
expect_error(wm_set(x,"veiculos_novos",bad));checked <- checked+1L
expect_error(wm_set(x,"rastro",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeComplementTaxes()
expect_error(wm_set(x,"icms",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi",bad));checked <- checked+1L
expect_error(wm_set(x,"issqn",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G115()
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"bc_icms",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_icms",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_fcp",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"beneficio_fiscal",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G116()
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"bc_icms_st",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_icms_st",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_fcp_st",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_mva",bad));checked <- checked+1L
expect_error(wm_set(x,"beneficio_fiscal",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G117()
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"bc_ipi",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ipi",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G118()
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"exigibilidade",bad));checked <- checked+1L
expect_error(wm_set(x,"item_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"incentivo_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"bc_issqn",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_issqn",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeComplementIbsCbs()
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao_monofasica",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
expect_error(wm_set(x,"transferencia_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"ajuste_competencia",bad));checked <- checked+1L
expect_error(wm_set(x,"estorno_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G119()
expect_error(wm_set(x,"ndoc_importacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ddoc_importacao",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_desembaraco",bad));checked <- checked+1L
expect_error(wm_set(x,"local_desembaraco",bad));checked <- checked+1L
expect_error(wm_set(x,"data_desembaraco",bad));checked <- checked+1L
expect_error(wm_set(x,"via_transporte",bad));checked <- checked+1L
expect_error(wm_set(x,"intermediacao",bad));checked <- checked+1L
expect_error(wm_set(x,"fabricante",bad));checked <- checked+1L
expect_error(wm_set(x,"adicao",bad));checked <- checked+1L
expect_error(wm_set(x,"seq_adicao",bad));checked <- checked+1L
expect_error(wm_set(x,"afrmm",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G114()
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"subtotal",bad));checked <- checked+1L
expect_error(wm_set(x,"total",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"beneficio_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"gtin",bad));checked <- checked+1L
expect_error(wm_set(x,"gtin_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_barras",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_barras_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"subtotal_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_tributavel",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G114Impostos()
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G120()
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"nfe_referenciada",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G121()
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_debito",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G122()
expect_error(wm_set(x,"dfe_referenciado",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G122DfeReferenciado()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"item",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G123()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"correcao",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G124()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G125()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G127()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"controle_estoque",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G127ControleEstoque()
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G128()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"controle_estoque",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G128ControleEstoque()
expect_error(wm_set(x,"quantidade_perecimento",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_perecimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs_estorno",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs_estorno",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G129()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"controle_estoque",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G129ControleEstoque()
expect_error(wm_set(x,"quantidade_nao_fornecida",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_nao_fornecida",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G130()
expect_error(wm_set(x,"data_previsao_entrega",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G131()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G131CreditoPresumido()
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G132()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"controle_estoque",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G132ControleEstoque()
expect_error(wm_set(x,"quantidade_perecimento",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_perecimento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G133()
expect_error(wm_set(x,"indicador_aceitacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G134()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"controle_estoque",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G134ControleEstoque()
expect_error(wm_set(x,"quantidade_imobilizada",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_imobilizada",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G135()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"controle_estoque",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G135ControleEstoque()
expect_error(wm_set(x,"quantidade_combustivel",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_combustivel",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G136()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_credito_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_credito_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G137()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G138()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"pagamentos",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G139()
expect_error(wm_set(x,"indicador_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"forma_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"desc_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"data_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_transacional_pag",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_instituicao_financeira",bad));checked <- checked+1L
expect_error(wm_set(x,"bandeira",bad));checked <- checked+1L
expect_error(wm_set(x,"autorizacao",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_beneficiario",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_beneficiario",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G140()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G141()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G142()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"nfce_referenciada",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G143()
expect_error(wm_set(x,"sequencia",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G144()
expect_error(wm_set(x,"data_inicio",bad));checked <- checked+1L
expect_error(wm_set(x,"data_final",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_inicio",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_final",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"relatorio",bad));checked <- checked+1L
expect_error(wm_set(x,"separar_pdf",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"ordem",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G145()
expect_error(wm_set(x,"tipo_tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"regime_tributario",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_fantasia",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_empresa",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"conta_bancaria_banco",bad));checked <- checked+1L
expect_error(wm_set(x,"conta_bancaria_agencia",bad));checked <- checked+1L
expect_error(wm_set(x,"conta_bancaria_numero",bad));checked <- checked+1L
expect_error(wm_set(x,"conta_bancaria_digito",bad));checked <- checked+1L
expect_error(wm_set(x,"contabilidade",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"logomarca",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G146()
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G147()
expect_error(wm_set(x,"nfe_serie",bad));checked <- checked+1L
expect_error(wm_set(x,"nfe_numero",bad));checked <- checked+1L
expect_error(wm_set(x,"nfe_numero_dev",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_fisco",bad));checked <- checked+1L
expect_error(wm_set(x,"cnae_issqn",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G148()
expect_error(wm_set(x,"nfce_serie",bad));checked <- checked+1L
expect_error(wm_set(x,"nfce_numero",bad));checked <- checked+1L
expect_error(wm_set(x,"nfce_id_csc",bad));checked <- checked+1L
expect_error(wm_set(x,"nfce_codigo_csc",bad));checked <- checked+1L
expect_error(wm_set(x,"nfce_numero_dev",bad));checked <- checked+1L
expect_error(wm_set(x,"nfce_id_csc_dev",bad));checked <- checked+1L
expect_error(wm_set(x,"nfce_codigo_csc_dev",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_fisco",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G149()
expect_error(wm_set(x,"cte_serie",bad));checked <- checked+1L
expect_error(wm_set(x,"cte_number",bad));checked <- checked+1L
expect_error(wm_set(x,"cte_number_dev",bad));checked <- checked+1L
expect_error(wm_set(x,"cte_os_serie",bad));checked <- checked+1L
expect_error(wm_set(x,"cte_os_number",bad));checked <- checked+1L
expect_error(wm_set(x,"cte_os_number_dev",bad));checked <- checked+1L
expect_error(wm_set(x,"taf_cte_os",bad));checked <- checked+1L
expect_error(wm_set(x,"registro_estadual_cte_os",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G150()
expect_error(wm_set(x,"dce_serie",bad));checked <- checked+1L
expect_error(wm_set(x,"dce_numero",bad));checked <- checked+1L
expect_error(wm_set(x,"dce_numero_dev",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_emissor_dce",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_site_autorizador",bad));checked <- checked+1L
expect_error(wm_set(x,"site_marketplace",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G151()
expect_error(wm_set(x,"nfse_rps_serie",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_rps_numero",bad));checked <- checked+1L
expect_error(wm_set(x,"cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_login",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_password",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_token",bad));checked <- checked+1L
expect_error(wm_set(x,"regime_apuracao_sn",bad));checked <- checked+1L
expect_error(wm_set(x,"regime_especial_nacional",bad));checked <- checked+1L
expect_error(wm_set(x,"regime_especial_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_lote_rps_numero",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_rps_numero_dev",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G152()
expect_error(wm_set(x,"certificado",bad));checked <- checked+1L
expect_error(wm_set(x,"certificado_senha",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_G153()
expect_error(wm_set(x,"partilha_icms_contribuinte",bad));checked <- checked+1L
expect_error(wm_set(x,"partilha_icms_isento",bad));checked <- checked+1L
expect_error(wm_set(x,"orientacao_danfe",bad));checked <- checked+1L
expect_error(wm_set(x,"microcervejaria",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_ref_sp",bad));checked <- checked+1L
expect_error(wm_set(x,"refeicoes_sp",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_ref_df",bad));checked <- checked+1L
expect_error(wm_set(x,"exclusao_icms_pis_cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"exclusao_difal_pis_cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"deduzir_desconto_ipi",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo_ipi_sem_frete",bad));checked <- checked+1L
expect_error(wm_set(x,"email_automatico_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"ativar_epec",bad));checked <- checked+1L
expect_error(wm_set(x,"ocultar_total_etiqueta",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_Nfe55IssueRequest()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_debito",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"produtos",bad));checked <- checked+1L
expect_error(wm_set(x,"pedido",bad));checked <- checked+1L
expect_error(wm_set(x,"transporte",bad));checked <- checked+1L
expect_error(wm_set(x,"fatura",bad));checked <- checked+1L
expect_error(wm_set(x,"parcelas",bad));checked <- checked+1L
expect_error(wm_set(x,"exportacao",bad));checked <- checked+1L
expect_error(wm_set(x,"agropecuario",bad));checked <- checked+1L
expect_error(wm_set(x,"compra_governamental",bad));checked <- checked+1L
expect_error(wm_set(x,"inscricao_suframa",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_indicador_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_entrada_saida",bad));checked <- checked+1L
expect_error(wm_set(x,"data_previsao_entrega",bad));checked <- checked+1L
expect_error(wm_set(x,"data_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"nfe_referenciada",bad));checked <- checked+1L
expect_error(wm_set(x,"cte_referenciada",bad));checked <- checked+1L
expect_error(wm_set(x,"ecf_referenciada",bad));checked <- checked+1L
expect_error(wm_set(x,"nf_rural_referenciada",bad));checked <- checked+1L
expect_error(wm_set(x,"calculo_impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"previa_danfe",bad));checked <- checked+1L
expect_error(wm_set(x,"assincrono",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel_tecnico",bad));checked <- checked+1L
expect_error(wm_set(x,"duplicatas",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_Nfe55Customer()
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"suframa",bad));checked <- checked+1L
expect_error(wm_set(x,"substituto_tributario",bad));checked <- checked+1L
expect_error(wm_set(x,"consumidor_final",bad));checked <- checked+1L
expect_error(wm_set(x,"contribuinte",bad));checked <- checked+1L
expect_error(wm_set(x,"microcervejaria",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
expect_error(wm_set(x,"id_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_pais",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_Nfce65IssueRequest()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_debito",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"cliente",bad));checked <- checked+1L
expect_error(wm_set(x,"produtos",bad));checked <- checked+1L
expect_error(wm_set(x,"pedido",bad));checked <- checked+1L
expect_error(wm_set(x,"transporte",bad));checked <- checked+1L
expect_error(wm_set(x,"fatura",bad));checked <- checked+1L
expect_error(wm_set(x,"parcelas",bad));checked <- checked+1L
expect_error(wm_set(x,"exportacao",bad));checked <- checked+1L
expect_error(wm_set(x,"agropecuario",bad));checked <- checked+1L
expect_error(wm_set(x,"compra_governamental",bad));checked <- checked+1L
expect_error(wm_set(x,"inscricao_suframa",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_indicador_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_entrada_saida",bad));checked <- checked+1L
expect_error(wm_set(x,"data_previsao_entrega",bad));checked <- checked+1L
expect_error(wm_set(x,"data_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"nfe_referenciada",bad));checked <- checked+1L
expect_error(wm_set(x,"cte_referenciada",bad));checked <- checked+1L
expect_error(wm_set(x,"ecf_referenciada",bad));checked <- checked+1L
expect_error(wm_set(x,"nf_rural_referenciada",bad));checked <- checked+1L
expect_error(wm_set(x,"calculo_impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"previa_danfe",bad));checked <- checked+1L
expect_error(wm_set(x,"assincrono",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel_tecnico",bad));checked <- checked+1L
expect_error(wm_set(x,"duplicatas",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeReturnRequest()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"classe_imposto",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"produtos",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"volume",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_fisco",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_complementares",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ver_aplic",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeAdjustmentRequest()
expect_error(wm_set(x,"operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_icms",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_icms_st",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"cliente",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_fisco",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_complementares",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeComplementRequest()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"cliente",bad));checked <- checked+1L
expect_error(wm_set(x,"produtos",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"agropecuario",bad));checked <- checked+1L
expect_error(wm_set(x,"documento_adicao",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_fisco",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_complementares",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeProductTaxClass()
expect_error(wm_set(x,"referencia",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"icms",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"issqn",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_fisco",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_complementares",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"tributos_federais",bad));checked <- checked+1L
expect_error(wm_set(x,"tributos_estaduais",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfseTaxClassProvider55()
expect_error(wm_set(x,"referencia",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"iss",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"inss",bad));checked <- checked+1L
expect_error(wm_set(x,"ir",bad));checked <- checked+1L
expect_error(wm_set(x,"csll",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"exigibilidade_iss",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_tributacao_municipio",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfseTaxClassProvider56()
expect_error(wm_set(x,"referencia",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"iss",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"inss",bad));checked <- checked+1L
expect_error(wm_set(x,"ir",bad));checked <- checked+1L
expect_error(wm_set(x,"csll",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"local_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"cep_local_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfseTaxClassProvider57()
expect_error(wm_set(x,"referencia",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"iss",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"inss",bad));checked <- checked+1L
expect_error(wm_set(x,"ir",bad));checked <- checked+1L
expect_error(wm_set(x,"csll",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cnae",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfseTaxClassProvider58()
expect_error(wm_set(x,"referencia",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"iss",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"inss",bad));checked <- checked+1L
expect_error(wm_set(x,"ir",bad));checked <- checked+1L
expect_error(wm_set(x,"csll",bad));checked <- checked+1L
expect_error(wm_set(x,"cfps",bad));checked <- checked+1L
expect_error(wm_set(x,"id_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfseTaxClassProvider60()
expect_error(wm_set(x,"referencia",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"iss",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"inss",bad));checked <- checked+1L
expect_error(wm_set(x,"ir",bad));checked <- checked+1L
expect_error(wm_set(x,"csll",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"regime_recolhimento",bad));checked <- checked+1L
expect_error(wm_set(x,"forma_recolhimento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfseTaxClassProvider61()
expect_error(wm_set(x,"referencia",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"iss",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"inss",bad));checked <- checked+1L
expect_error(wm_set(x,"ir",bad));checked <- checked+1L
expect_error(wm_set(x,"csll",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_tributacao_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfseTaxClassProvider63()
expect_error(wm_set(x,"referencia",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"iss",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"inss",bad));checked <- checked+1L
expect_error(wm_set(x,"ir",bad));checked <- checked+1L
expect_error(wm_set(x,"csll",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel_retencao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfseTaxClassProvider64()
expect_error(wm_set(x,"referencia",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"iss",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"inss",bad));checked <- checked+1L
expect_error(wm_set(x,"ir",bad));checked <- checked+1L
expect_error(wm_set(x,"csll",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_tributacao_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao_iss",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_imunidade",bad));checked <- checked+1L
expect_error(wm_set(x,"retencao_iss",bad));checked <- checked+1L
expect_error(wm_set(x,"cst_pis_cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"retencao_pis_cofins",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfseTaxClassProvider66()
expect_error(wm_set(x,"referencia",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"iss",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"inss",bad));checked <- checked+1L
expect_error(wm_set(x,"ir",bad));checked <- checked+1L
expect_error(wm_set(x,"csll",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel_retencao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfcomCommunicationTaxClass()
expect_error(wm_set(x,"referencia",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"icms",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"fust",bad));checked <- checked+1L
expect_error(wm_set(x,"funttel",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfcomClassIcms()
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_fcp",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfcomClassPisCofins()
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfcomClassContribution()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_TaxClassCreatedResult()
expect_error(wm_set(x,"referencia",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"data",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_FiscalCompanyUpdateRequest()
expect_error(wm_set(x,"tipo_tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"regime_tributario",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_fantasia",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_empresa",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"conta_bancaria_banco",bad));checked <- checked+1L
expect_error(wm_set(x,"conta_bancaria_agencia",bad));checked <- checked+1L
expect_error(wm_set(x,"conta_bancaria_numero",bad));checked <- checked+1L
expect_error(wm_set(x,"conta_bancaria_digito",bad));checked <- checked+1L
expect_error(wm_set(x,"contabilidade",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"logomarca",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"nfe_serie",bad));checked <- checked+1L
expect_error(wm_set(x,"nfe_numero",bad));checked <- checked+1L
expect_error(wm_set(x,"nfe_numero_dev",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_fisco",bad));checked <- checked+1L
expect_error(wm_set(x,"cnae_issqn",bad));checked <- checked+1L
expect_error(wm_set(x,"nfce_serie",bad));checked <- checked+1L
expect_error(wm_set(x,"nfce_numero",bad));checked <- checked+1L
expect_error(wm_set(x,"nfce_id_csc",bad));checked <- checked+1L
expect_error(wm_set(x,"nfce_codigo_csc",bad));checked <- checked+1L
expect_error(wm_set(x,"nfce_numero_dev",bad));checked <- checked+1L
expect_error(wm_set(x,"nfce_id_csc_dev",bad));checked <- checked+1L
expect_error(wm_set(x,"nfce_codigo_csc_dev",bad));checked <- checked+1L
expect_error(wm_set(x,"cte_serie",bad));checked <- checked+1L
expect_error(wm_set(x,"cte_number",bad));checked <- checked+1L
expect_error(wm_set(x,"cte_number_dev",bad));checked <- checked+1L
expect_error(wm_set(x,"cte_os_serie",bad));checked <- checked+1L
expect_error(wm_set(x,"cte_os_number",bad));checked <- checked+1L
expect_error(wm_set(x,"cte_os_number_dev",bad));checked <- checked+1L
expect_error(wm_set(x,"taf_cte_os",bad));checked <- checked+1L
expect_error(wm_set(x,"registro_estadual_cte_os",bad));checked <- checked+1L
expect_error(wm_set(x,"dce_serie",bad));checked <- checked+1L
expect_error(wm_set(x,"dce_numero",bad));checked <- checked+1L
expect_error(wm_set(x,"dce_numero_dev",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_emissor_dce",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_site_autorizador",bad));checked <- checked+1L
expect_error(wm_set(x,"site_marketplace",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_rps_serie",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_rps_numero",bad));checked <- checked+1L
expect_error(wm_set(x,"cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_login",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_password",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_token",bad));checked <- checked+1L
expect_error(wm_set(x,"regime_apuracao_sn",bad));checked <- checked+1L
expect_error(wm_set(x,"regime_especial_nacional",bad));checked <- checked+1L
expect_error(wm_set(x,"regime_especial_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_lote_rps_numero",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_rps_numero_dev",bad));checked <- checked+1L
expect_error(wm_set(x,"certificado",bad));checked <- checked+1L
expect_error(wm_set(x,"certificado_senha",bad));checked <- checked+1L
expect_error(wm_set(x,"partilha_icms_contribuinte",bad));checked <- checked+1L
expect_error(wm_set(x,"partilha_icms_isento",bad));checked <- checked+1L
expect_error(wm_set(x,"orientacao_danfe",bad));checked <- checked+1L
expect_error(wm_set(x,"microcervejaria",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_ref_sp",bad));checked <- checked+1L
expect_error(wm_set(x,"refeicoes_sp",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_ref_df",bad));checked <- checked+1L
expect_error(wm_set(x,"exclusao_icms_pis_cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"exclusao_difal_pis_cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"deduzir_desconto_ipi",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo_ipi_sem_frete",bad));checked <- checked+1L
expect_error(wm_set(x,"email_automatico_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"ativar_epec",bad));checked <- checked+1L
expect_error(wm_set(x,"ocultar_total_etiqueta",bad));checked <- checked+1L
expect_error(wm_set(x,"validar_setup_completo",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_FiscalCompanyUpdateResult()
expect_error(wm_set(x,"success",bad));checked <- checked+1L
expect_error(wm_set(x,"alerts",bad));checked <- checked+1L
expect_error(wm_set(x,"warnings",bad));checked <- checked+1L
expect_error(wm_set(x,"bearer_access_token_status",bad));checked <- checked+1L
expect_error(wm_set(x,"bearer_access_token_pending",bad));checked <- checked+1L
expect_error(wm_set(x,"credenciais",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_FiscalCompanyUpdateResultWarningsItem()
expect_error(wm_set(x,"code",bad));checked <- checked+1L
expect_error(wm_set(x,"message",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_FiscalCompanyUpdateResultCredenciais()
expect_error(wm_set(x,"consumer_key",bad));checked <- checked+1L
expect_error(wm_set(x,"consumer_secret",bad));checked <- checked+1L
expect_error(wm_set(x,"access_token",bad));checked <- checked+1L
expect_error(wm_set(x,"access_token_secret",bad));checked <- checked+1L
expect_error(wm_set(x,"bearer_access_token",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_FiscalReportRequest()
expect_error(wm_set(x,"data_inicio",bad));checked <- checked+1L
expect_error(wm_set(x,"data_final",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_inicio",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_final",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"relatorio",bad));checked <- checked+1L
expect_error(wm_set(x,"separar_pdf",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"ordem",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_FiscalReportResult()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"data_inicio",bad));checked <- checked+1L
expect_error(wm_set(x,"data_final",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_inicio",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_final",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"relatorio",bad));checked <- checked+1L
expect_error(wm_set(x,"total",bad));checked <- checked+1L
expect_error(wm_set(x,"processado",bad));checked <- checked+1L
expect_error(wm_set(x,"url",bad));checked <- checked+1L
expect_error(wm_set(x,"expira",bad));checked <- checked+1L
expect_error(wm_set(x,"reason",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112110Details()
expect_error(wm_set(x,"indicador_quitacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112110Request()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"nSeqEvento",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_quitacao",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_evento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112120Details()
expect_error(wm_set(x,"itens",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112120DetailsItensItem()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"controle_estoque",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112120DetailsItensItemControleEstoque()
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112120Request()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"nSeqEvento",bad));checked <- checked+1L
expect_error(wm_set(x,"itens",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_evento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112120RequestItensItem()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"controle_estoque",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112120RequestItensItemControleEstoque()
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112130Details()
expect_error(wm_set(x,"itens",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112130DetailsItensItem()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"controle_estoque",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112130DetailsItensItemControleEstoque()
expect_error(wm_set(x,"quantidade_perecimento",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_perecimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs_estorno",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs_estorno",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112130Request()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"nSeqEvento",bad));checked <- checked+1L
expect_error(wm_set(x,"itens",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_evento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112130RequestItensItem()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"controle_estoque",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112130RequestItensItemControleEstoque()
expect_error(wm_set(x,"quantidade_perecimento",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_perecimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs_estorno",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs_estorno",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112140Details()
expect_error(wm_set(x,"itens",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112140DetailsItensItem()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"controle_estoque",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112140DetailsItensItemControleEstoque()
expect_error(wm_set(x,"quantidade_nao_fornecida",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_nao_fornecida",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112140Request()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"nSeqEvento",bad));checked <- checked+1L
expect_error(wm_set(x,"itens",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_evento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112140RequestItensItem()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"controle_estoque",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112140RequestItensItemControleEstoque()
expect_error(wm_set(x,"quantidade_nao_fornecida",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_nao_fornecida",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112150Details()
expect_error(wm_set(x,"data_previsao_entrega",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs112150Request()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"nSeqEvento",bad));checked <- checked+1L
expect_error(wm_set(x,"data_previsao_entrega",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_evento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211110Details()
expect_error(wm_set(x,"itens",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211110DetailsItensItem()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211110DetailsItensItemCreditoPresumido()
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211110Request()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"nSeqEvento",bad));checked <- checked+1L
expect_error(wm_set(x,"itens",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_evento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211110RequestItensItem()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211110RequestItensItemCreditoPresumido()
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211124Details()
expect_error(wm_set(x,"itens",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211124DetailsItensItem()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"controle_estoque",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211124DetailsItensItemControleEstoque()
expect_error(wm_set(x,"quantidade_perecimento",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_perecimento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211124Request()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"nSeqEvento",bad));checked <- checked+1L
expect_error(wm_set(x,"itens",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_evento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211124RequestItensItem()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"controle_estoque",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211124RequestItensItemControleEstoque()
expect_error(wm_set(x,"quantidade_perecimento",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_perecimento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211128Details()
expect_error(wm_set(x,"indicador_aceitacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211128Request()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"nSeqEvento",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_aceitacao",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_evento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211130Details()
expect_error(wm_set(x,"itens",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211130DetailsItensItem()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"controle_estoque",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211130DetailsItensItemControleEstoque()
expect_error(wm_set(x,"quantidade_imobilizada",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_imobilizada",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211130Request()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"nSeqEvento",bad));checked <- checked+1L
expect_error(wm_set(x,"itens",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_evento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211130RequestItensItem()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"controle_estoque",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211130RequestItensItemControleEstoque()
expect_error(wm_set(x,"quantidade_imobilizada",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_imobilizada",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211140Details()
expect_error(wm_set(x,"itens",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211140DetailsItensItem()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"controle_estoque",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211140DetailsItensItemControleEstoque()
expect_error(wm_set(x,"quantidade_combustivel",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_combustivel",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211140Request()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"nSeqEvento",bad));checked <- checked+1L
expect_error(wm_set(x,"itens",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_evento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211140RequestItensItem()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"controle_estoque",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211140RequestItensItemControleEstoque()
expect_error(wm_set(x,"quantidade_combustivel",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_combustivel",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211150Details()
expect_error(wm_set(x,"itens",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211150DetailsItensItem()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_credito_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_credito_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211150Request()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"nSeqEvento",bad));checked <- checked+1L
expect_error(wm_set(x,"itens",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_evento",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_IbsCbs211150RequestItensItem()
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_credito_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_credito_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfePreviewResult()
expect_error(wm_set(x,"danfe",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeTaxCalculationResult()
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquotas",bad));checked <- checked+1L
expect_error(wm_set(x,"pedido",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeTaxCalculationResultImpostos()
expect_error(wm_set(x,"ipi",bad));checked <- checked+1L
expect_error(wm_set(x,"icms",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_st",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_dest",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_dest_base",bad));checked <- checked+1L
expect_error(wm_set(x,"issqn",bad));checked <- checked+1L
expect_error(wm_set(x,"total_tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_desoneracao",bad));checked <- checked+1L
expect_error(wm_set(x,"importacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeTaxCalculationResultAliquotas()
expect_error(wm_set(x,"icms",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeTaxCalculationResultPedido()
expect_error(wm_set(x,"produtos",bad));checked <- checked+1L
expect_error(wm_set(x,"frete",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto",bad));checked <- checked+1L
expect_error(wm_set(x,"despesas_acessorias",bad));checked <- checked+1L
expect_error(wm_set(x,"seguro",bad));checked <- checked+1L
expect_error(wm_set(x,"total",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeNotification()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"nfe",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"recibo",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"epec",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"danfe",bad));checked <- checked+1L
expect_error(wm_set(x,"danfe_simples",bad));checked <- checked+1L
expect_error(wm_set(x,"danfe_etiqueta",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"log_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"data",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"dacce",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
wm_close(x)
x <- api1_fiscal_NfeGetDocumentQuery()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"id",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterError()
expect_error(wm_set(x,"error",bad));checked <- checked+1L
expect_error(wm_set(x,"message",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"configured",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_NfseServiceCode()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"id_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_sugerida",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_NfseServiceCodeAliquotaSugerida()
expect_error(wm_set(x,"iss",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_NfseProviderStatus()
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"versao",bad));checked <- checked+1L
expect_error(wm_set(x,"ambientes",bad));checked <- checked+1L
expect_error(wm_set(x,"autenticacao",bad));checked <- checked+1L
expect_error(wm_set(x,"emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"funcoes",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_sincrono",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"parametros_disponiveis",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_NfcomServiceStatus()
expect_error(wm_set(x,"operacional",bad));checked <- checked+1L
expect_error(wm_set(x,"mensagem",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_NfseFiscalResponse()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_lote",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_lote",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse_status",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"atualizado_em",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_substituida",bad));checked <- checked+1L
expect_error(wm_set(x,"info_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_NfseFiscalResponseNfseSubstituida()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_NfseFiscalResponseInfoNfseItem()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse_status",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_rps",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_NfcomPaymentEvent()
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_nfcom",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_vinculacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"n_seq_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"pagamento",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_NfcomPaymentEventPagamentoVariant0()
expect_error(wm_set(x,"nPag",bad));checked <- checked+1L
expect_error(wm_set(x,"idTransacao",bad));checked <- checked+1L
expect_error(wm_set(x,"tpMeioPgto",bad));checked <- checked+1L
expect_error(wm_set(x,"CNPJReceb",bad));checked <- checked+1L
expect_error(wm_set(x,"CNPJBasePSP",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_NfcomFiscalResponse()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"nfcom",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"contingencia",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"danfecom",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"data_autorizacao",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
expect_error(wm_set(x,"consulta_eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_NfcomPaymentEvents()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_NfseManifestationRequest()
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"manifestador",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_rejeicao",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa_rejeicao",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_CteFiscalResponse()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"cte",bad));checked <- checked+1L
expect_error(wm_set(x,"epec",bad));checked <- checked+1L
expect_error(wm_set(x,"dacte",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
expect_error(wm_set(x,"consulta_eventos_pagamento",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_CteFiscalResponseEventosPagamentoItem()
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_cte",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_vinculacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"n_seq_evento",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_MdfeFiscalResponse()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"mdfe",bad));checked <- checked+1L
expect_error(wm_set(x,"damdfe",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_DceFiscalResponse()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"dace",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_FiscalEventResponse()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"dacce",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"data_evento",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_CtePaymentEvents()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_CtePaymentEventsEventosPagamentoItem()
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_cte",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_vinculacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"n_seq_evento",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayload()
expect_error(wm_set(x,"aereo",bad));checked <- checked+1L
expect_error(wm_set(x,"alteracao_tomador",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"aquaviario",bad));checked <- checked+1L
expect_error(wm_set(x,"caracteristica_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"caracteristica_transporte",bad));checked <- checked+1L
expect_error(wm_set(x,"carga",bad));checked <- checked+1L
expect_error(wm_set(x,"cobranca",bad));checked <- checked+1L
expect_error(wm_set(x,"contribuicao_tomador",bad));checked <- checked+1L
expect_error(wm_set(x,"cte_referenciado",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"destinatario",bad));checked <- checked+1L
expect_error(wm_set(x,"detalhes_retirada",bad));checked <- checked+1L
expect_error(wm_set(x,"documentos_anteriores",bad));checked <- checked+1L
expect_error(wm_set(x,"documentos_fiscais",bad));checked <- checked+1L
expect_error(wm_set(x,"dutoviario",bad));checked <- checked+1L
expect_error(wm_set(x,"entrega",bad));checked <- checked+1L
expect_error(wm_set(x,"expedidor",bad));checked <- checked+1L
expect_error(wm_set(x,"ferroviario",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"globalizado",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_tomador",bad));checked <- checked+1L
expect_error(wm_set(x,"informacao_globalizado",bad));checked <- checked+1L
expect_error(wm_set(x,"local_inicio_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"local_termino_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"multimodal",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"observacoes_contribuinte",bad));checked <- checked+1L
expect_error(wm_set(x,"observacoes_fisco",bad));checked <- checked+1L
expect_error(wm_set(x,"observacoes_gerais",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
expect_error(wm_set(x,"pagamentos_vinculados",bad));checked <- checked+1L
expect_error(wm_set(x,"recebedor",bad));checked <- checked+1L
expect_error(wm_set(x,"remetente",bad));checked <- checked+1L
expect_error(wm_set(x,"rodoviario",bad));checked <- checked+1L
expect_error(wm_set(x,"servico",bad));checked <- checked+1L
expect_error(wm_set(x,"tomador",bad));checked <- checked+1L
expect_error(wm_set(x,"veiculos_novos",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"nfe_xml",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadAereo()
expect_error(wm_set(x,"natureza_carga",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_minuta",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_oca",bad));checked <- checked+1L
expect_error(wm_set(x,"previsao_entrega",bad));checked <- checked+1L
expect_error(wm_set(x,"produtos_perigosos",bad));checked <- checked+1L
expect_error(wm_set(x,"tarifa",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadAereoNaturezaCarga()
expect_error(wm_set(x,"dimensoes",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_manuseio",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadAereoProdutosPerigososItem()
expect_error(wm_set(x,"descricao_volumes",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_onu",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_total",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_medida",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadAereoTarifa()
expect_error(wm_set(x,"classe",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadAquaviario()
expect_error(wm_set(x,"adicional_frete",bad));checked <- checked+1L
expect_error(wm_set(x,"balsas",bad));checked <- checked+1L
expect_error(wm_set(x,"containers",bad));checked <- checked+1L
expect_error(wm_set(x,"direcao",bad));checked <- checked+1L
expect_error(wm_set(x,"identificacao_navio",bad));checked <- checked+1L
expect_error(wm_set(x,"irin_navio",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_viagem",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_navegacao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_prestacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadAquaviarioContainersItem()
expect_error(wm_set(x,"documentos",bad));checked <- checked+1L
expect_error(wm_set(x,"identificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"lacres",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadAquaviarioContainersItemDocumentosItem()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"medida_rateada",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadCarga()
expect_error(wm_set(x,"caracteristicas",bad));checked <- checked+1L
expect_error(wm_set(x,"fluxo",bad));checked <- checked+1L
expect_error(wm_set(x,"produto_predominante",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidades",bad));checked <- checked+1L
expect_error(wm_set(x,"seguro",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_averbacao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadCargaFluxo()
expect_error(wm_set(x,"destino",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
expect_error(wm_set(x,"passagens",bad));checked <- checked+1L
expect_error(wm_set(x,"rota",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadCargaQuantidadesItem()
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_medida",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_medida",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadCargaSeguro()
expect_error(wm_set(x,"nome_razao_seguradora",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_apolice",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadCobranca()
expect_error(wm_set(x,"duplicatas",bad));checked <- checked+1L
expect_error(wm_set(x,"fatura",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadCobrancaDuplicatasItem()
expect_error(wm_set(x,"data_vencimento",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadCobrancaFatura()
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_desconto",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_liquido",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_original",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadDestinatario()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"isuf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_razao",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_fantasia",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadDocumentosAnterioresItem()
expect_error(wm_set(x,"documentos",bad));checked <- checked+1L
expect_error(wm_set(x,"emissor",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadDocumentosAnterioresItemDocumentosItem()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadDocumentosAnterioresItemEmissor()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_razao",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadDocumentosFiscaisItem()
expect_error(wm_set(x,"base_calculo",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo_st",bad));checked <- checked+1L
expect_error(wm_set(x,"cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"icms",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_pedido",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_romaneio",bad));checked <- checked+1L
expect_error(wm_set(x,"peso",bad));checked <- checked+1L
expect_error(wm_set(x,"pin",bad));checked <- checked+1L
expect_error(wm_set(x,"previsao_entrega",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"unidades_carga",bad));checked <- checked+1L
expect_error(wm_set(x,"unidades_transporte",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_produtos",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
expect_error(wm_set(x,"CFOP",bad));checked <- checked+1L
expect_error(wm_set(x,"subserie",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesCargaItem()
expect_error(wm_set(x,"identificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"lacres",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_rateada",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesTransporteItem()
expect_error(wm_set(x,"identificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"lacres",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_rateada",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"unidades_carga",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesTransporteItemUnidadesCargaItem()
expect_error(wm_set(x,"identificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"lacres",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_rateada",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadDutoviario()
expect_error(wm_set(x,"data_inicio_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_termino_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_tarifa",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadEntrega()
expect_error(wm_set(x,"data",bad));checked <- checked+1L
expect_error(wm_set(x,"data_final",bad));checked <- checked+1L
expect_error(wm_set(x,"data_inicial",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadExpedidor()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_razao",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_fantasia",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadFerroviario()
expect_error(wm_set(x,"cte_origem",bad));checked <- checked+1L
expect_error(wm_set(x,"ferrovias",bad));checked <- checked+1L
expect_error(wm_set(x,"fluxo",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel_faturamento",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_trafego",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_frete",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadFerroviarioFerroviasItem()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_razao",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadImpostos()
expect_error(wm_set(x,"beneficio_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"csll",bad));checked <- checked+1L
expect_error(wm_set(x,"icms",bad));checked <- checked+1L
expect_error(wm_set(x,"inss",bad));checked <- checked+1L
expect_error(wm_set(x,"ir",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadImpostosIcms()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_st_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"bc_st_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_outorgado",bad));checked <- checked+1L
expect_error(wm_set(x,"devido_origem",bad));checked <- checked+1L
expect_error(wm_set(x,"partilha",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual_reducao",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadImpostosIcmsPartilha()
expect_error(wm_set(x,"aliquota_fcp_uf_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_icms_interestadual",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_icms_uf_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_icms_uf_origem",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_icms_uf_remetente",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadImpostosIbsCbs()
expect_error(wm_set(x,"compra_governamental",bad));checked <- checked+1L
expect_error(wm_set(x,"estorno_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_doacao",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadImpostosIbsCbsCompraGovernamentalVariant0()
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"ente",bad));checked <- checked+1L
expect_error(wm_set(x,"referencias_dfe",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_operacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadImpostosIbsCbsEstornoCredito()
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadImpostosIbsCbsIbsEstadual()
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadImpostosIbsCbsIbsMunicipal()
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadImpostosIbsCbsCbs()
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadImpostosIbsCbsCreditoPresumido()
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadLocalInicioPrestacao()
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_ibge",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadLocalTerminoPrestacao()
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_ibge",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadMultimodal()
expect_error(wm_set(x,"cotm",bad));checked <- checked+1L
expect_error(wm_set(x,"negociavel",bad));checked <- checked+1L
expect_error(wm_set(x,"seguro",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadMultimodalSeguro()
expect_error(wm_set(x,"cnpj_seguradora",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_razao_seguradora",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_apolice",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_averbacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadObservacoesContribuinteItem()
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"identificacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadObservacoesFiscoItem()
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"identificacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadPagamentosVinculadosItem()
expect_error(wm_set(x,"cnpj_base_psp",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_recebedor",bad));checked <- checked+1L
expect_error(wm_set(x,"id_transacao",bad));checked <- checked+1L
expect_error(wm_set(x,"n_pag",bad));checked <- checked+1L
expect_error(wm_set(x,"tp_meio_pagamento",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadRecebedor()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_razao",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_fantasia",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadRemetente()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_fantasia",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_razao",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadRodoviario()
expect_error(wm_set(x,"data_viagem",bad));checked <- checked+1L
expect_error(wm_set(x,"ordens_coleta",bad));checked <- checked+1L
expect_error(wm_set(x,"registro_estadual_cte_os",bad));checked <- checked+1L
expect_error(wm_set(x,"rntrc",bad));checked <- checked+1L
expect_error(wm_set(x,"taf_cte_os",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_fretamento",bad));checked <- checked+1L
expect_error(wm_set(x,"veiculo",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadRodoviarioOrdensColetaItem()
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"emissor",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadRodoviarioOrdensColetaItemEmissor()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadRodoviarioVeiculo()
expect_error(wm_set(x,"placa",bad));checked <- checked+1L
expect_error(wm_set(x,"proprietario",bad));checked <- checked+1L
expect_error(wm_set(x,"renavam",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_licenciamento",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadRodoviarioVeiculoProprietario()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_razao",bad));checked <- checked+1L
expect_error(wm_set(x,"registro_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"taf",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadServico()
expect_error(wm_set(x,"componentes",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_recebido",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadTomador()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_fantasia",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_razao",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueCtePayloadVeiculosNovosItem()
expect_error(wm_set(x,"chassi",bad));checked <- checked+1L
expect_error(wm_set(x,"cor",bad));checked <- checked+1L
expect_error(wm_set(x,"cor_descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"marca_modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_frete_unitario",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_unitario",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterIssueSimplifiedCtePayload()
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"nfe_xml",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterCancelCtePayload()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterCorrectCtePayload()
expect_error(wm_set(x,"alteracoes",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
expect_error(wm_set(x,"sequencia",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterCorrectCtePayloadAlteracoesItem()
expect_error(wm_set(x,"campo",bad));checked <- checked+1L
expect_error(wm_set(x,"grupo",bad));checked <- checked+1L
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterConfirmCteDeliveryPayload()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"comprovante",bad));checked <- checked+1L
expect_error(wm_set(x,"data_hora",bad));checked <- checked+1L
expect_error(wm_set(x,"documento_recebedor",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes",bad));checked <- checked+1L
expect_error(wm_set(x,"latitude",bad));checked <- checked+1L
expect_error(wm_set(x,"longitude",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_recebedor",bad));checked <- checked+1L
expect_error(wm_set(x,"notas_fiscais",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterCancelCteDeliveryPayload()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"sequencia",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterLinkCtePaymentPayload()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"sequencia",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterLinkCtePaymentPayloadPagamento()
expect_error(wm_set(x,"cnpj_base_psp",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_recebedor",bad));checked <- checked+1L
expect_error(wm_set(x,"id_transacao",bad));checked <- checked+1L
expect_error(wm_set(x,"n_pag",bad));checked <- checked+1L
expect_error(wm_set(x,"tp_meio_pagamento",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_EmitterCancelCtePaymentLinkPayload()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_vinculacao",bad));checked <- checked+1L
expect_error(wm_set(x,"sequencia",bad));checked <- checked+1L
expect_error(wm_set(x,"sequencia_vinculacao",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_CteDocumentedGroup654()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"epec",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"dacte",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_CteDocumentedGroup5669()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_CteDocumentedGroup5730()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"comprovante",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_recebedor",bad));checked <- checked+1L
expect_error(wm_set(x,"documento_recebedor",bad));checked <- checked+1L
expect_error(wm_set(x,"notas_fiscais",bad));checked <- checked+1L
expect_error(wm_set(x,"data_hora",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes",bad));checked <- checked+1L
expect_error(wm_set(x,"longitude",bad));checked <- checked+1L
expect_error(wm_set(x,"latitude",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_CteDocumentedGroup5835()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"sequencia",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_CteDocumentedGroup5904()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"alteracoes",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"sequencia",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_CteDocumentedGroup5949()
expect_error(wm_set(x,"grupo",bad));checked <- checked+1L
expect_error(wm_set(x,"campo",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"item",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_CteDocumentedGroup6032()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"sequencia",bad));checked <- checked+1L
expect_error(wm_set(x,"pagamento",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_CteDocumentedGroup6120()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_vinculacao",bad));checked <- checked+1L
expect_error(wm_set(x,"sequencia",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_CteServiceGroup()
expect_error(wm_set(x,"componentes",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_recebido",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
wm_close(x)
x <- api2_cte_issuance_CteOsServiceGroup()
expect_error(wm_set(x,"componentes",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_recebido",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_EmitterError()
expect_error(wm_set(x,"error",bad));checked <- checked+1L
expect_error(wm_set(x,"message",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"configured",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_NfseServiceCode()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"id_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_sugerida",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_NfseServiceCodeAliquotaSugerida()
expect_error(wm_set(x,"iss",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_NfseProviderStatus()
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"versao",bad));checked <- checked+1L
expect_error(wm_set(x,"ambientes",bad));checked <- checked+1L
expect_error(wm_set(x,"autenticacao",bad));checked <- checked+1L
expect_error(wm_set(x,"emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"funcoes",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_sincrono",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"parametros_disponiveis",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_NfcomServiceStatus()
expect_error(wm_set(x,"operacional",bad));checked <- checked+1L
expect_error(wm_set(x,"mensagem",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_NfseFiscalResponse()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_lote",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_lote",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse_status",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"atualizado_em",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_substituida",bad));checked <- checked+1L
expect_error(wm_set(x,"info_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_NfseFiscalResponseNfseSubstituida()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_NfseFiscalResponseInfoNfseItem()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse_status",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_rps",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_NfcomPaymentEvent()
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_nfcom",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_vinculacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"n_seq_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"pagamento",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_NfcomPaymentEventPagamentoVariant0()
expect_error(wm_set(x,"nPag",bad));checked <- checked+1L
expect_error(wm_set(x,"idTransacao",bad));checked <- checked+1L
expect_error(wm_set(x,"tpMeioPgto",bad));checked <- checked+1L
expect_error(wm_set(x,"CNPJReceb",bad));checked <- checked+1L
expect_error(wm_set(x,"CNPJBasePSP",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_NfcomFiscalResponse()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"nfcom",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"contingencia",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"danfecom",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"data_autorizacao",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
expect_error(wm_set(x,"consulta_eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_NfcomPaymentEvents()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_NfseManifestationRequest()
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"manifestador",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_rejeicao",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa_rejeicao",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_CteFiscalResponse()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"cte",bad));checked <- checked+1L
expect_error(wm_set(x,"epec",bad));checked <- checked+1L
expect_error(wm_set(x,"dacte",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
expect_error(wm_set(x,"consulta_eventos_pagamento",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_CteFiscalResponseEventosPagamentoItem()
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_cte",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_vinculacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"n_seq_evento",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_MdfeFiscalResponse()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"mdfe",bad));checked <- checked+1L
expect_error(wm_set(x,"damdfe",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_DceFiscalResponse()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"dace",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_FiscalEventResponse()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"dacce",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"data_evento",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_CtePaymentEvents()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_CtePaymentEventsEventosPagamentoItem()
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_cte",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_vinculacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"n_seq_evento",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_EmitterIssueDcePayload()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_adicionais",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_adicionais_emitente",bad));checked <- checked+1L
expect_error(wm_set(x,"itens",bad));checked <- checked+1L
expect_error(wm_set(x,"observacoes",bad));checked <- checked+1L
expect_error(wm_set(x,"observacoes_emitente",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
expect_error(wm_set(x,"solicitacao",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"cliente",bad));checked <- checked+1L
expect_error(wm_set(x,"emitente",bad));checked <- checked+1L
expect_error(wm_set(x,"transporte",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_EmitterIssueDcePayloadItensItem()
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_adicionais",bad));checked <- checked+1L
expect_error(wm_set(x,"ncm",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_unitario",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_EmitterIssueDcePayloadObservacoesVariant0Item()
expect_error(wm_set(x,"campo",bad));checked <- checked+1L
expect_error(wm_set(x,"texto",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_EmitterIssueDcePayloadObservacoesEmitenteVariant0Item()
expect_error(wm_set(x,"campo",bad));checked <- checked+1L
expect_error(wm_set(x,"texto",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_EmitterIssueDcePayloadCliente()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"identificacao_alternativa",bad));checked <- checked+1L
expect_error(wm_set(x,"logradouro",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"pais",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_EmitterIssueDcePayloadEmitente()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"identificacao_alternativa",bad));checked <- checked+1L
expect_error(wm_set(x,"logradouro",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_EmitterIssueDcePayloadTransporte()
expect_error(wm_set(x,"cnpj_transportadora",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_EmitterCancelDcePayload()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_DceDocumentedGroup282()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"dace",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_DceDocumentedGroup1106()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa",bad));checked <- checked+1L
wm_close(x)
x <- api2_dce_issuance_DceItemGroup()
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_adicionais",bad));checked <- checked+1L
expect_error(wm_set(x,"ncm",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_unitario",bad));checked <- checked+1L
wm_close(x)
x <- api2_emitter_files_FiscalFileError()
expect_error(wm_set(x,"message",bad));checked <- checked+1L
expect_error(wm_set(x,"msg",bad));checked <- checked+1L
wm_close(x)
x <- api2_emitter_files_NfsePdfPending()
expect_error(wm_set(x,"msg",bad));checked <- checked+1L
wm_close(x)
x <- api2_emitter_reads_EmitterError()
expect_error(wm_set(x,"error",bad));checked <- checked+1L
expect_error(wm_set(x,"message",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"configured",bad));checked <- checked+1L
wm_close(x)
x <- api2_emitter_reads_NfseServiceCode()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"id_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_sugerida",bad));checked <- checked+1L
wm_close(x)
x <- api2_emitter_reads_NfseServiceCodeAliquotaSugerida()
expect_error(wm_set(x,"iss",bad));checked <- checked+1L
wm_close(x)
x <- api2_emitter_reads_NfseProviderStatus()
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"versao",bad));checked <- checked+1L
expect_error(wm_set(x,"ambientes",bad));checked <- checked+1L
expect_error(wm_set(x,"autenticacao",bad));checked <- checked+1L
expect_error(wm_set(x,"emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"funcoes",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_sincrono",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"parametros_disponiveis",bad));checked <- checked+1L
wm_close(x)
x <- api2_emitter_reads_NfcomServiceStatus()
expect_error(wm_set(x,"operacional",bad));checked <- checked+1L
expect_error(wm_set(x,"mensagem",bad));checked <- checked+1L
wm_close(x)
x <- api2_emitter_reads_NfseFiscalResponse()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_lote",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_lote",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse_status",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"atualizado_em",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_substituida",bad));checked <- checked+1L
expect_error(wm_set(x,"info_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
wm_close(x)
x <- api2_emitter_reads_NfseFiscalResponseNfseSubstituida()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_emitter_reads_NfseFiscalResponseInfoNfseItem()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse_status",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_rps",bad));checked <- checked+1L
wm_close(x)
x <- api2_emitter_reads_NfcomPaymentEvent()
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_nfcom",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_vinculacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"n_seq_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"pagamento",bad));checked <- checked+1L
wm_close(x)
x <- api2_emitter_reads_NfcomPaymentEventPagamentoVariant0()
expect_error(wm_set(x,"nPag",bad));checked <- checked+1L
expect_error(wm_set(x,"idTransacao",bad));checked <- checked+1L
expect_error(wm_set(x,"tpMeioPgto",bad));checked <- checked+1L
expect_error(wm_set(x,"CNPJReceb",bad));checked <- checked+1L
expect_error(wm_set(x,"CNPJBasePSP",bad));checked <- checked+1L
wm_close(x)
x <- api2_emitter_reads_NfcomFiscalResponse()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"nfcom",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"contingencia",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"danfecom",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"data_autorizacao",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
expect_error(wm_set(x,"consulta_eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
wm_close(x)
x <- api2_emitter_reads_NfcomPaymentEvents()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
wm_close(x)
x <- api2_emitter_reads_NfseManifestationRequest()
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"manifestador",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_rejeicao",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa_rejeicao",bad));checked <- checked+1L
wm_close(x)
x <- api2_emitter_reads_EmitterFunctionalError()
expect_error(wm_set(x,"error",bad));checked <- checked+1L
expect_error(wm_set(x,"message",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"configured",bad));checked <- checked+1L
wm_close(x)
x <- api2_emitter_reads_EmitterGetNfseProviderStatusQuery()
expect_error(wm_set(x,"todos_servicos",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterError()
expect_error(wm_set(x,"error",bad));checked <- checked+1L
expect_error(wm_set(x,"message",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"configured",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_NfseServiceCode()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"id_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_sugerida",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_NfseServiceCodeAliquotaSugerida()
expect_error(wm_set(x,"iss",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_NfseProviderStatus()
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"versao",bad));checked <- checked+1L
expect_error(wm_set(x,"ambientes",bad));checked <- checked+1L
expect_error(wm_set(x,"autenticacao",bad));checked <- checked+1L
expect_error(wm_set(x,"emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"funcoes",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_sincrono",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"parametros_disponiveis",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_NfcomServiceStatus()
expect_error(wm_set(x,"operacional",bad));checked <- checked+1L
expect_error(wm_set(x,"mensagem",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_NfseFiscalResponse()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_lote",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_lote",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse_status",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"atualizado_em",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_substituida",bad));checked <- checked+1L
expect_error(wm_set(x,"info_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_NfseFiscalResponseNfseSubstituida()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_NfseFiscalResponseInfoNfseItem()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse_status",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_rps",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_NfcomPaymentEvent()
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_nfcom",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_vinculacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"n_seq_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"pagamento",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_NfcomPaymentEventPagamentoVariant0()
expect_error(wm_set(x,"nPag",bad));checked <- checked+1L
expect_error(wm_set(x,"idTransacao",bad));checked <- checked+1L
expect_error(wm_set(x,"tpMeioPgto",bad));checked <- checked+1L
expect_error(wm_set(x,"CNPJReceb",bad));checked <- checked+1L
expect_error(wm_set(x,"CNPJBasePSP",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_NfcomFiscalResponse()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"nfcom",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"contingencia",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"danfecom",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"data_autorizacao",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
expect_error(wm_set(x,"consulta_eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_NfcomPaymentEvents()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_NfseManifestationRequest()
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"manifestador",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_rejeicao",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa_rejeicao",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_CteFiscalResponse()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"cte",bad));checked <- checked+1L
expect_error(wm_set(x,"epec",bad));checked <- checked+1L
expect_error(wm_set(x,"dacte",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
expect_error(wm_set(x,"consulta_eventos_pagamento",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_CteFiscalResponseEventosPagamentoItem()
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_cte",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_vinculacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"n_seq_evento",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_MdfeFiscalResponse()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"mdfe",bad));checked <- checked+1L
expect_error(wm_set(x,"damdfe",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_DceFiscalResponse()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"dace",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_FiscalEventResponse()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"dacce",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"data_evento",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_CtePaymentEvents()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_CtePaymentEventsEventosPagamentoItem()
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_cte",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_vinculacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"n_seq_evento",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayload()
expect_error(wm_set(x,"aereo",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"aquaviario",bad));checked <- checked+1L
expect_error(wm_set(x,"carregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"data_inicio_viagem",bad));checked <- checked+1L
expect_error(wm_set(x,"descarregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"emitente",bad));checked <- checked+1L
expect_error(wm_set(x,"ferroviario",bad));checked <- checked+1L
expect_error(wm_set(x,"ind_canal_verde",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_complementares",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_fisco",bad));checked <- checked+1L
expect_error(wm_set(x,"lacres",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
expect_error(wm_set(x,"percurso",bad));checked <- checked+1L
expect_error(wm_set(x,"peso_bruto",bad));checked <- checked+1L
expect_error(wm_set(x,"produto_predominante",bad));checked <- checked+1L
expect_error(wm_set(x,"rodoviario",bad));checked <- checked+1L
expect_error(wm_set(x,"seguro",bad));checked <- checked+1L
expect_error(wm_set(x,"transportador",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_carregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_descarregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_carga",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadAereo()
expect_error(wm_set(x,"aerodromo_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"aerodromo_embarque",bad));checked <- checked+1L
expect_error(wm_set(x,"data_voo",bad));checked <- checked+1L
expect_error(wm_set(x,"matricula_aeronave",bad));checked <- checked+1L
expect_error(wm_set(x,"nacionalidade_aeronave",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_voo",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadAquaviario()
expect_error(wm_set(x,"carga_vazia",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_embarcacao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_porto_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_porto_embarque",bad));checked <- checked+1L
expect_error(wm_set(x,"embarcacao_comboio",bad));checked <- checked+1L
expect_error(wm_set(x,"irin",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_embarcacao",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_viagem",bad));checked <- checked+1L
expect_error(wm_set(x,"porto_transbordo",bad));checked <- checked+1L
expect_error(wm_set(x,"terminal_carregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"terminal_descarregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_embarcacao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_navegacao",bad));checked <- checked+1L
expect_error(wm_set(x,"transporte_vazio",bad));checked <- checked+1L
expect_error(wm_set(x,"mmsi",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadAquaviarioCargaVaziaItem()
expect_error(wm_set(x,"identificador",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_unidade",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadAquaviarioEmbarcacaoComboioItem()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"identificador_balsa",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadAquaviarioTerminalCarregamentoItem()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadAquaviarioTerminalDescarregamentoItem()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadAquaviarioTransporteVazioItem()
expect_error(wm_set(x,"identificador",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_unidade",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadCarregamentoItem()
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_municipio",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadDescarregamentoItem()
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"documentos_fiscais",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_municipio",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItem()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_barra",bad));checked <- checked+1L
expect_error(wm_set(x,"entrega_parcial",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_reentrega",bad));checked <- checked+1L
expect_error(wm_set(x,"periculosidade",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_transporte",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemEntregaParcial()
expect_error(wm_set(x,"quantidade_parcial",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_total",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemPericulosidadeItem()
expect_error(wm_set(x,"classe_risco",bad));checked <- checked+1L
expect_error(wm_set(x,"grupo_embalagem",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_embarque",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_onu",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_total",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_volumes",bad));checked <- checked+1L
expect_error(wm_set(x,"entrega_parcial",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemUnidadeTransporteItem()
expect_error(wm_set(x,"identificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"lacres",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_carga",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_rateada",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemUnidadeTransporteItemUnidadeCargaItem()
expect_error(wm_set(x,"id_carga",bad));checked <- checked+1L
expect_error(wm_set(x,"lacres",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_carga",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"identificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_rateada",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadFerroviario()
expect_error(wm_set(x,"trem",bad));checked <- checked+1L
expect_error(wm_set(x,"vagoes",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadFerroviarioTrem()
expect_error(wm_set(x,"data_liberacao",bad));checked <- checked+1L
expect_error(wm_set(x,"destino",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
expect_error(wm_set(x,"prefixo",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadFerroviarioVagoesItem()
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"peso_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"peso_real",bad));checked <- checked+1L
expect_error(wm_set(x,"sequencia_vagao",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_vagao",bad));checked <- checked+1L
expect_error(wm_set(x,"tonelada_util",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadProdutoPredominante()
expect_error(wm_set(x,"gtin",bad));checked <- checked+1L
expect_error(wm_set(x,"lotacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ncm",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_carga",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadProdutoPredominanteLotacao()
expect_error(wm_set(x,"carregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"descarregamento",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadProdutoPredominanteLotacaoCarregamento()
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"latitude",bad));checked <- checked+1L
expect_error(wm_set(x,"longitude",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadProdutoPredominanteLotacaoDescarregamento()
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"latitude",bad));checked <- checked+1L
expect_error(wm_set(x,"longitude",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadRodoviario()
expect_error(wm_set(x,"ciot",bad));checked <- checked+1L
expect_error(wm_set(x,"condutor",bad));checked <- checked+1L
expect_error(wm_set(x,"contratante",bad));checked <- checked+1L
expect_error(wm_set(x,"lacres",bad));checked <- checked+1L
expect_error(wm_set(x,"rntrc",bad));checked <- checked+1L
expect_error(wm_set(x,"vale_pedagio",bad));checked <- checked+1L
expect_error(wm_set(x,"veiculo_reboque",bad));checked <- checked+1L
expect_error(wm_set(x,"veiculo_tracao",bad));checked <- checked+1L
expect_error(wm_set(x,"combinacao_veicular",bad));checked <- checked+1L
expect_error(wm_set(x,"pagamento_frete",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadRodoviarioCiotItem()
expect_error(wm_set(x,"cnpj_responsavel",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_ciot",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf_responsavel",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadRodoviarioCondutorItem()
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadRodoviarioContratanteItem()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadRodoviarioValePedagioItem()
expect_error(wm_set(x,"cnpj_fornecedor",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_responsavel",bad));checked <- checked+1L
expect_error(wm_set(x,"comprovante",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf_responsavel",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadRodoviarioVeiculoReboqueItem()
expect_error(wm_set(x,"capacidade_kg",bad));checked <- checked+1L
expect_error(wm_set(x,"capacidade_m3",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_agendamento_porto",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_interno",bad));checked <- checked+1L
expect_error(wm_set(x,"placa",bad));checked <- checked+1L
expect_error(wm_set(x,"proprietario",bad));checked <- checked+1L
expect_error(wm_set(x,"renavam",bad));checked <- checked+1L
expect_error(wm_set(x,"tara",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_carroceria",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_licenciamento",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadRodoviarioVeiculoReboqueItemProprietario()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"rntrc",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_proprietario",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadRodoviarioVeiculoTracao()
expect_error(wm_set(x,"capacidade_kg",bad));checked <- checked+1L
expect_error(wm_set(x,"capacidade_m3",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_interno",bad));checked <- checked+1L
expect_error(wm_set(x,"placa",bad));checked <- checked+1L
expect_error(wm_set(x,"proprietario",bad));checked <- checked+1L
expect_error(wm_set(x,"renavam",bad));checked <- checked+1L
expect_error(wm_set(x,"tara",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_carroceria",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_rodado",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_licenciamento",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadRodoviarioVeiculoTracaoProprietario()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"rntrc",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_proprietario",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_MdfeFreightPaymentGroup()
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"id_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_contrato",bad));checked <- checked+1L
expect_error(wm_set(x,"forma_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"operacao_alto_desempenho",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_adiantamento",bad));checked <- checked+1L
expect_error(wm_set(x,"antecipar_adiantamento",bad));checked <- checked+1L
expect_error(wm_set(x,"permissao_antecipacao_parcela",bad));checked <- checked+1L
expect_error(wm_set(x,"componentes_pagamento_frete",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_bancarias",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_pagamento_prazo",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_MdfeFreightPaymentGroupComponentesPagamentoFreteItem()
expect_error(wm_set(x,"tipo_componente",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_componente",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao_componente",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_MdfeFreightPaymentGroupInformacoesBancarias()
expect_error(wm_set(x,"tipo_informacao_bancaria",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_banco",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_agencia",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_ipef",bad));checked <- checked+1L
expect_error(wm_set(x,"pix",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_MdfeFreightPaymentGroupInformacoesPagamentoPrazoItem()
expect_error(wm_set(x,"data_vencimento_parcela",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_parcela",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadSeguroItem()
expect_error(wm_set(x,"numero_apolice",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_averbacao",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel",bad));checked <- checked+1L
expect_error(wm_set(x,"seguradora",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadSeguroItemResponsavel()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_responsavel",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterIssueMdfePayloadSeguroItemSeguradora()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_seguradora",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterCloseMdfePayload()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterCancelMdfePayload()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_EmitterAddMdfeConductorPayload()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_MdfeDocumentedGroup465()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"mdfe",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"damdfe",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_MdfeDocumentedGroup3210()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_MdfeDocumentedGroup3297()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa",bad));checked <- checked+1L
wm_close(x)
x <- api2_mdfe_issuance_MdfeDocumentedGroup3362()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorError()
expect_error(wm_set(x,"error",bad));checked <- checked+1L
expect_error(wm_set(x,"message",bad));checked <- checked+1L
expect_error(wm_set(x,"msg",bad));checked <- checked+1L
expect_error(wm_set(x,"success",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorPagination()
expect_error(wm_set(x,"current_page",bad));checked <- checked+1L
expect_error(wm_set(x,"last_page",bad));checked <- checked+1L
expect_error(wm_set(x,"per_page",bad));checked <- checked+1L
expect_error(wm_set(x,"total",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorAddress()
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"estado",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorCompany()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"modelos_download",bad));checked <- checked+1L
expect_error(wm_set(x,"categorias_download",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente_download",bad));checked <- checked+1L
expect_error(wm_set(x,"certificado_vencimento",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"dfe_retroativas",bad));checked <- checked+1L
expect_error(wm_set(x,"dfe_retroativas_total",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorMunicipalityRegistration()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_download",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_ibge",bad));checked <- checked+1L
expect_error(wm_set(x,"login",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorAvailableMunicipality()
expect_error(wm_set(x,"municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_ibge",bad));checked <- checked+1L
expect_error(wm_set(x,"nativo",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"certificado",bad));checked <- checked+1L
expect_error(wm_set(x,"login_senha",bad));checked <- checked+1L
expect_error(wm_set(x,"cadastro_prefeitura",bad));checked <- checked+1L
expect_error(wm_set(x,"domicilio_fiscal_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"multiplos_servicos",bad));checked <- checked+1L
expect_error(wm_set(x,"download_emitidas",bad));checked <- checked+1L
expect_error(wm_set(x,"download_recebidas",bad));checked <- checked+1L
expect_error(wm_set(x,"guia_cadastro_prefeitura",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDownloadStatistics()
expect_error(wm_set(x,"total_downloads",bad));checked <- checked+1L
expect_error(wm_set(x,"empresas",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDownloadStatisticsEmpresasItem()
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"total_downloads",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorCompanyPage()
expect_error(wm_set(x,"data",bad));checked <- checked+1L
expect_error(wm_set(x,"meta",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorMunicipalityPage()
expect_error(wm_set(x,"data",bad));checked <- checked+1L
expect_error(wm_set(x,"meta",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorAvailableMunicipalities()
expect_error(wm_set(x,"data",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorPerson()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorManifestationStateVariant0()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"manifestado",bad));checked <- checked+1L
expect_error(wm_set(x,"automatica",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfe()
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"totais_issqn",bad));checked <- checked+1L
expect_error(wm_set(x,"produtos",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"totais",bad));checked <- checked+1L
expect_error(wm_set(x,"fatura",bad));checked <- checked+1L
expect_error(wm_set(x,"operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"pedido",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel_tecnico",bad));checked <- checked+1L
expect_error(wm_set(x,"emitente",bad));checked <- checked+1L
expect_error(wm_set(x,"transporte",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"docs",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"cliente",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"categoria",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"parcelas",bad));checked <- checked+1L
expect_error(wm_set(x,"data_captura",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor",bad));checked <- checked+1L
expect_error(wm_set(x,"qtd_produtos",bad));checked <- checked+1L
expect_error(wm_set(x,"manifestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"totais_ibs_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeTotaisIssqn()
expect_error(wm_set(x,"valor_servicos",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"data_competencia",bad));checked <- checked+1L
expect_error(wm_set(x,"deducao",bad));checked <- checked+1L
expect_error(wm_set(x,"outras_retencoes",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_incondicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_condicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"regime_especial_tributacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItem()
expect_error(wm_set(x,"cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_unitario",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
expect_error(wm_set(x,"cest",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"subtotal_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
expect_error(wm_set(x,"outras_despesas",bad));checked <- checked+1L
expect_error(wm_set(x,"seguro",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto",bad));checked <- checked+1L
expect_error(wm_set(x,"total",bad));checked <- checked+1L
expect_error(wm_set(x,"gtin_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"gtin",bad));checked <- checked+1L
expect_error(wm_set(x,"subtotal",bad));checked <- checked+1L
expect_error(wm_set(x,"frete",bad));checked <- checked+1L
expect_error(wm_set(x,"ncm",bad));checked <- checked+1L
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostos()
expect_error(wm_set(x,"imposto_importacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"icms",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"issqn",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi_devolvido",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosImpostoImportacao()
expect_error(wm_set(x,"ii_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"despesas_aduaneiras",bad));checked <- checked+1L
expect_error(wm_set(x,"ii_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"iof_valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIpi()
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"qtd_selo",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_selo",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_enquadramento",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosCofins()
expect_error(wm_set(x,"cofins_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_aliquota_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_quantidade_bc",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbs()
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_doacao",bad));checked <- checked+1L
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"compra_governamental",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao_monofasica",bad));checked <- checked+1L
expect_error(wm_set(x,"transferencia_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"ajuste_competencia",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido_zfm",bad));checked <- checked+1L
expect_error(wm_set(x,"estorno_credito",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsEstadual()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsMunicipal()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsCbs()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegular()
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsEstadual()
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsMunicipal()
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularCbs()
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamental()
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsEstadual()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsMunicipal()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalCbs()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoMonofasica()
expect_error(wm_set(x,"quantidade_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_bc_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_bc_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsTransferenciaCredito()
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsAjusteCompetencia()
expect_error(wm_set(x,"competencia_apuracao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumido()
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs_condicionado_suspensao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs_condicionado_suspensao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumidoZfm()
expect_error(wm_set(x,"competencia_apuracao",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsEstornoCredito()
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIcms()
expect_error(wm_set(x,"fcp_aliquota_uf_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_bc_uf_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_valor_uf_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_motivo_desoneracao",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_retido_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_valor_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_modalidade_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_st_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_st_retido_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_bc_uf_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_st_retido_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_substituto_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_uf",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_aliquota_reducao_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_st_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_bc_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_valor_dest",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_bc_operacao_propria",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_retido_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_bc_dest",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_aliquota_interestadual",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_aliquota_uf_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_valor_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_aliquota_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_aliquota_mva",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_st_retido_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_valor_efetivo",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_st_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_aliquota_partilha_interestadual",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_valor_desonerado",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_valor_uf_remetente",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_valor_uf_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_valor_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_modalidade_bc",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosPis()
expect_error(wm_set(x,"pis_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_quantidade_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_aliquota_valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIssqn()
expect_error(wm_set(x,"iss_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio_fato_gerador",bad));checked <- checked+1L
expect_error(wm_set(x,"item_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"deducao",bad));checked <- checked+1L
expect_error(wm_set(x,"retencoes",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_incondicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_condicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"exigibilidade",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio_incidencia",bad));checked <- checked+1L
expect_error(wm_set(x,"pais",bad));checked <- checked+1L
expect_error(wm_set(x,"processo",bad));checked <- checked+1L
expect_error(wm_set(x,"incentivo_fiscal",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIpiDevolvido()
expect_error(wm_set(x,"percentual_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi_devolvido_valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeProtocoloVariant1()
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"data_recebimento",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_protocolo",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeTotais()
expect_error(wm_set(x,"valor_desconto",bad));checked <- checked+1L
expect_error(wm_set(x,"ii_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_seguro",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_st_retido_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi_devolvido_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_st_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_produtos",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_outras_despesas",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_valor_desonerado",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_frete",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total_nfe",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_bc",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeFatura()
expect_error(wm_set(x,"valor_desconto",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_liquido",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_original",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfePedido()
expect_error(wm_set(x,"bandeira",bad));checked <- checked+1L
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_complementares",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_compra",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_credenciadora",bad));checked <- checked+1L
expect_error(wm_set(x,"intermediador",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_fisco",bad));checked <- checked+1L
expect_error(wm_set(x,"desc_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_pedido",bad));checked <- checked+1L
expect_error(wm_set(x,"autorizacao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto",bad));checked <- checked+1L
expect_error(wm_set(x,"forma_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_intermediador",bad));checked <- checked+1L
expect_error(wm_set(x,"frete",bad));checked <- checked+1L
expect_error(wm_set(x,"presenca",bad));checked <- checked+1L
expect_error(wm_set(x,"id_intermediador",bad));checked <- checked+1L
expect_error(wm_set(x,"pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade_frete",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_integracao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeResponsavelTecnico()
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"contato",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeTransporte()
expect_error(wm_set(x,"peso_liquido",bad));checked <- checked+1L
expect_error(wm_set(x,"volume",bad));checked <- checked+1L
expect_error(wm_set(x,"veiculo",bad));checked <- checked+1L
expect_error(wm_set(x,"especie",bad));checked <- checked+1L
expect_error(wm_set(x,"numeracao",bad));checked <- checked+1L
expect_error(wm_set(x,"peso_bruto",bad));checked <- checked+1L
expect_error(wm_set(x,"retirada",bad));checked <- checked+1L
expect_error(wm_set(x,"marca",bad));checked <- checked+1L
expect_error(wm_set(x,"entrega",bad));checked <- checked+1L
expect_error(wm_set(x,"volumes",bad));checked <- checked+1L
expect_error(wm_set(x,"transportadora",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade_frete",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeTransporteVeiculo()
expect_error(wm_set(x,"placa",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeTransporteRetirada()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_fantasia",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeTransporteEntrega()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_fantasia",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeTransporteVolumesItem()
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"especie",bad));checked <- checked+1L
expect_error(wm_set(x,"marca",bad));checked <- checked+1L
expect_error(wm_set(x,"numeracao",bad));checked <- checked+1L
expect_error(wm_set(x,"peso_liquido",bad));checked <- checked+1L
expect_error(wm_set(x,"peso_bruto",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeTransporteTransportadora()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_fantasia",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeDocs()
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeParcelasItem()
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"vencimento",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeFornecedorVariant0()
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"documento",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeTotaisIbsCbs()
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfeTotaisIbsCbsCbs()
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfse()
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"discriminacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_tributacao_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"totais",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_incondicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"identificacao_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_recebido",bad));checked <- checked+1L
expect_error(wm_set(x,"tomador",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_condicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_liquido",bad));checked <- checked+1L
expect_error(wm_set(x,"servicos",bad));checked <- checked+1L
expect_error(wm_set(x,"data_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"local_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"prestador",bad));checked <- checked+1L
expect_error(wm_set(x,"docs",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"categoria",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"data_captura",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfseTotais()
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_incondicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_condicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"inss_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"ir_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"csll_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"cp_valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfseImpostos()
expect_error(wm_set(x,"tributacao_iss",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao_descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"inss_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"inss_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"ir_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"ir_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"csll_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"csll_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"cp_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"cp_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfseImpostosIbsCbs()
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"localidade_incidencia",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_indicador_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_destinatario",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_calculo_reembolso_repasse",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfseImpostosIbsCbsCbs()
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfseImpostosIbsCbsIbsEstadual()
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfseImpostosIbsCbsIbsMunicipal()
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfseImpostosIbsCbsLocalidadeIncidencia()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfseIdentificacaoNfse()
expect_error(wm_set(x,"data_competencia",bad));checked <- checked+1L
expect_error(wm_set(x,"rps",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"provedor",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_substituida",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfseIdentificacaoNfseRps()
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfseServicosItem()
expect_error(wm_set(x,"desconto_condicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"discriminacao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_liquido",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_tributacao_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"local_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_incondicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_recebido",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfseServicosItemLocalPrestacaoVariant1()
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfseServicosItemImpostos()
expect_error(wm_set(x,"tributacao_iss",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao_descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"inss_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"inss_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"ir_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"ir_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"csll_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"csll_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"cp_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"cp_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfseServicosItemImpostosIbsCbs()
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"localidade_incidencia",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_indicador_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_destinatario",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_calculo_reembolso_repasse",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfseServicosItemImpostosIbsCbsCbs()
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfseServicosItemImpostosIbsCbsIbsEstadual()
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfseServicosItemImpostosIbsCbsIbsMunicipal()
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfseServicosItemImpostosIbsCbsLocalidadeIncidencia()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfseLocalPrestacaoVariant1()
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfseDocs()
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentNfseFornecedorVariant0()
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"documento",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfe()
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_carregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"carregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"seguro",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_mdfe",bad));checked <- checked+1L
expect_error(wm_set(x,"percurso",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_nfe",bad));checked <- checked+1L
expect_error(wm_set(x,"descarregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"ferroviario",bad));checked <- checked+1L
expect_error(wm_set(x,"produto_predominante",bad));checked <- checked+1L
expect_error(wm_set(x,"aquaviario",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"rodoviario",bad));checked <- checked+1L
expect_error(wm_set(x,"emitente",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"peso_bruto",bad));checked <- checked+1L
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"docs",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"categoria",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_descarregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"aereo",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_cte",bad));checked <- checked+1L
expect_error(wm_set(x,"data_captura",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeCarregamentoItem()
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"documentos",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeCarregamentoItemDocumentosItem()
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeSeguroItem()
expect_error(wm_set(x,"responsavel",bad));checked <- checked+1L
expect_error(wm_set(x,"seguradora",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_apolice",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_averbacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeSeguroItemResponsavel()
expect_error(wm_set(x,"tipo_responsavel",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeSeguroItemSeguradora()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_seguradora",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfePercursoItemVariant0()
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"ordem",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeDescarregamentoItem()
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"documentos_fiscais",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"documentos",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeDescarregamentoItemDocumentosFiscaisItem()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeDescarregamentoItemDocumentosItem()
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeFerroviario()
expect_error(wm_set(x,"trem",bad));checked <- checked+1L
expect_error(wm_set(x,"vagoes",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeFerroviarioTrem()
expect_error(wm_set(x,"prefixo",bad));checked <- checked+1L
expect_error(wm_set(x,"data_liberacao",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
expect_error(wm_set(x,"destino",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeFerroviarioVagoesItem()
expect_error(wm_set(x,"peso_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"peso_real",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_vagao",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"sequencia_vagao",bad));checked <- checked+1L
expect_error(wm_set(x,"tonelada_util",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeProdutoPredominante()
expect_error(wm_set(x,"tipo_carga",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
expect_error(wm_set(x,"gtin",bad));checked <- checked+1L
expect_error(wm_set(x,"ncm",bad));checked <- checked+1L
expect_error(wm_set(x,"lotacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeProdutoPredominanteLotacao()
expect_error(wm_set(x,"carregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"descarregamento",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeProdutoPredominanteLotacaoCarregamento()
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"latitude",bad));checked <- checked+1L
expect_error(wm_set(x,"longitude",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeProdutoPredominanteLotacaoDescarregamento()
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"latitude",bad));checked <- checked+1L
expect_error(wm_set(x,"longitude",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeAquaviario()
expect_error(wm_set(x,"irin",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_embarcacao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_embarcacao",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_embarcacao",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_viagem",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_porto_embarque",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_porto_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"porto_transbordo",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_navegacao",bad));checked <- checked+1L
expect_error(wm_set(x,"terminal_carregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"terminal_descarregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"embarcacao_comboio",bad));checked <- checked+1L
expect_error(wm_set(x,"carga_vazia",bad));checked <- checked+1L
expect_error(wm_set(x,"transporte_vazio",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeAquaviarioTerminalCarregamentoItem()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeAquaviarioTerminalDescarregamentoItem()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeAquaviarioEmbarcacaoComboioItem()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"identificador_balsa",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeAquaviarioCargaVaziaItem()
expect_error(wm_set(x,"identificador",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_unidade",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeAquaviarioTransporteVazioItem()
expect_error(wm_set(x,"identificador",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_unidade",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeRodoviario()
expect_error(wm_set(x,"contratantes",bad));checked <- checked+1L
expect_error(wm_set(x,"veiculo_reboque",bad));checked <- checked+1L
expect_error(wm_set(x,"lacres",bad));checked <- checked+1L
expect_error(wm_set(x,"veiculos",bad));checked <- checked+1L
expect_error(wm_set(x,"ciot",bad));checked <- checked+1L
expect_error(wm_set(x,"contratante",bad));checked <- checked+1L
expect_error(wm_set(x,"condutor",bad));checked <- checked+1L
expect_error(wm_set(x,"rntrc",bad));checked <- checked+1L
expect_error(wm_set(x,"veiculo_tracao",bad));checked <- checked+1L
expect_error(wm_set(x,"vale_pedagio",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeRodoviarioContratantesItem()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeRodoviarioVeiculoReboqueItem()
expect_error(wm_set(x,"codigo_interno",bad));checked <- checked+1L
expect_error(wm_set(x,"placa",bad));checked <- checked+1L
expect_error(wm_set(x,"renavam",bad));checked <- checked+1L
expect_error(wm_set(x,"tara",bad));checked <- checked+1L
expect_error(wm_set(x,"capacidade_kg",bad));checked <- checked+1L
expect_error(wm_set(x,"capacidade_m3",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_carroceria",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_licenciamento",bad));checked <- checked+1L
expect_error(wm_set(x,"proprietario",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeRodoviarioVeiculoReboqueItemProprietario()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"rntrc",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_proprietario",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeRodoviarioLacresItem()
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeRodoviarioVeiculosItem()
expect_error(wm_set(x,"tara",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"capacidade_kg",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_interno",bad));checked <- checked+1L
expect_error(wm_set(x,"placa",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_rodado",bad));checked <- checked+1L
expect_error(wm_set(x,"condutor",bad));checked <- checked+1L
expect_error(wm_set(x,"capacidade_m3",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_carroceria",bad));checked <- checked+1L
expect_error(wm_set(x,"renavam",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeRodoviarioVeiculosItemCondutor()
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeRodoviarioCiotItem()
expect_error(wm_set(x,"cnpj_responsavel",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf_responsavel",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf_cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_ciot",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeRodoviarioContratanteItem()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeRodoviarioCondutorItem()
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeRodoviarioVeiculoTracao()
expect_error(wm_set(x,"codigo_interno",bad));checked <- checked+1L
expect_error(wm_set(x,"placa",bad));checked <- checked+1L
expect_error(wm_set(x,"renavam",bad));checked <- checked+1L
expect_error(wm_set(x,"tara",bad));checked <- checked+1L
expect_error(wm_set(x,"capacidade_kg",bad));checked <- checked+1L
expect_error(wm_set(x,"capacidade_m3",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_rodado",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_carroceria",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_licenciamento",bad));checked <- checked+1L
expect_error(wm_set(x,"proprietario",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeRodoviarioVeiculoTracaoProprietario()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"rntrc",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_proprietario",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeRodoviarioValePedagioVariant0()
expect_error(wm_set(x,"cnpj_fornecedor",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_responsavel",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_comprovante",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeRodoviarioValePedagioVariant1Item()
expect_error(wm_set(x,"cnpj_fornecedor",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_responsavel",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf_responsavel",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"comprovante",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeDocs()
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeAereo()
expect_error(wm_set(x,"nacionalidade_aeronave",bad));checked <- checked+1L
expect_error(wm_set(x,"matricula_aeronave",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_voo",bad));checked <- checked+1L
expect_error(wm_set(x,"aerodromo_embarque",bad));checked <- checked+1L
expect_error(wm_set(x,"aerodromo_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"data_voo",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentMdfeFornecedorVariant0()
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"documento",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCte()
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"documentos_fiscais",bad));checked <- checked+1L
expect_error(wm_set(x,"servico",bad));checked <- checked+1L
expect_error(wm_set(x,"remetente",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"expedidor",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_termino_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_inicio_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"tomador",bad));checked <- checked+1L
expect_error(wm_set(x,"recebedor",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"emitente",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_tomador",bad));checked <- checked+1L
expect_error(wm_set(x,"destinatario",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"docs",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"categoria",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"data_captura",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor",bad));checked <- checked+1L
expect_error(wm_set(x,"relacao_empresa",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteDocumentosFiscaisItem()
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"pin",bad));checked <- checked+1L
expect_error(wm_set(x,"previsao_entrega",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
expect_error(wm_set(x,"cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteServico()
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_medida",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
expect_error(wm_set(x,"documentos_originarios",bad));checked <- checked+1L
expect_error(wm_set(x,"componentes_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_carga",bad));checked <- checked+1L
expect_error(wm_set(x,"modal",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_carga",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_recebido",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteServicoDocumentosOriginariosItem()
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteServicoComponentesValorItem()
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteServicoInformacoesCarga()
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
expect_error(wm_set(x,"produto_predominante",bad));checked <- checked+1L
expect_error(wm_set(x,"outras_caracteristicas",bad));checked <- checked+1L
expect_error(wm_set(x,"cubagem",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteServicoInformacoesCargaCubagem()
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteImpostos()
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"icms",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteImpostosIbsCbs()
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_doacao",bad));checked <- checked+1L
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"compra_governamental",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
expect_error(wm_set(x,"estorno_credito",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsIbsEstadual()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsIbsMunicipal()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsCbs()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsTributacaoRegular()
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsEstadual()
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsMunicipal()
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsTributacaoRegularCbs()
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsCompraGovernamental()
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsEstadual()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsMunicipal()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsCompraGovernamentalCbs()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsCreditoPresumido()
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs_condicionado_suspensao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs_condicionado_suspensao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsEstornoCredito()
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteImpostosIcms()
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteDocs()
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteFornecedorVariant0()
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"documento",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOs()
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"documentos_fiscais",bad));checked <- checked+1L
expect_error(wm_set(x,"servico",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_termino_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_inicio_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"tomador",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"emitente",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_tomador",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"docs",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"categoria",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"data_captura",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor",bad));checked <- checked+1L
expect_error(wm_set(x,"relacao_empresa",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsDocumentosFiscaisItem()
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"pin",bad));checked <- checked+1L
expect_error(wm_set(x,"previsao_entrega",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
expect_error(wm_set(x,"cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsServico()
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_medida",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
expect_error(wm_set(x,"documentos_originarios",bad));checked <- checked+1L
expect_error(wm_set(x,"componentes_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_carga",bad));checked <- checked+1L
expect_error(wm_set(x,"modal",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_carga",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_recebido",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsServicoDocumentosOriginariosItem()
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsServicoComponentesValorItem()
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsServicoInformacoesCarga()
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
expect_error(wm_set(x,"produto_predominante",bad));checked <- checked+1L
expect_error(wm_set(x,"outras_caracteristicas",bad));checked <- checked+1L
expect_error(wm_set(x,"cubagem",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsServicoInformacoesCargaCubagem()
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsImpostos()
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"icms",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbs()
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_doacao",bad));checked <- checked+1L
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"compra_governamental",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
expect_error(wm_set(x,"estorno_credito",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsIbsEstadual()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsIbsMunicipal()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsCbs()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsTributacaoRegular()
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsEstadual()
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsMunicipal()
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularCbs()
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsCompraGovernamental()
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsEstadual()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsMunicipal()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalCbs()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsCreditoPresumido()
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs_condicionado_suspensao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs_condicionado_suspensao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsEstornoCredito()
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsImpostosIcms()
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsDocs()
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentCteOsFornecedorVariant0()
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"documento",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorCursorPagination()
expect_error(wm_set(x,"per_page",bad));checked <- checked+1L
expect_error(wm_set(x,"next_cursor",bad));checked <- checked+1L
expect_error(wm_set(x,"prev_cursor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorDocumentPage()
expect_error(wm_set(x,"data",bad));checked <- checked+1L
expect_error(wm_set(x,"meta",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorReport()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"relatorio",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"processado",bad));checked <- checked+1L
expect_error(wm_set(x,"total",bad));checked <- checked+1L
expect_error(wm_set(x,"criado_em",bad));checked <- checked+1L
expect_error(wm_set(x,"atualizado_em",bad));checked <- checked+1L
expect_error(wm_set(x,"filtros",bad));checked <- checked+1L
expect_error(wm_set(x,"url",bad));checked <- checked+1L
expect_error(wm_set(x,"expira_em",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorReportFiltros()
expect_error(wm_set(x,"selecao_manual",bad));checked <- checked+1L
expect_error(wm_set(x,"periodo",bad));checked <- checked+1L
expect_error(wm_set(x,"empresas",bad));checked <- checked+1L
expect_error(wm_set(x,"categoria",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"manifestacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorReportFiltrosPeriodo()
expect_error(wm_set(x,"de",bad));checked <- checked+1L
expect_error(wm_set(x,"ate",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorReportPage()
expect_error(wm_set(x,"data",bad));checked <- checked+1L
expect_error(wm_set(x,"meta",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorSearchRequest()
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"categoria",bad));checked <- checked+1L
expect_error(wm_set(x,"data_inicial",bad));checked <- checked+1L
expect_error(wm_set(x,"data_final",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"manifestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor",bad));checked <- checked+1L
expect_error(wm_set(x,"pesquisa",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ncm",bad));checked <- checked+1L
expect_error(wm_set(x,"cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_carregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_descarregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"placa_veiculo",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_inicio_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_termino_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"relatorio",bad));checked <- checked+1L
expect_error(wm_set(x,"documentos",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"per_page",bad));checked <- checked+1L
expect_error(wm_set(x,"page",bad));checked <- checked+1L
expect_error(wm_set(x,"cursor",bad));checked <- checked+1L
expect_error(wm_set(x,"paginacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ordenar_por",bad));checked <- checked+1L
expect_error(wm_set(x,"ordem",bad));checked <- checked+1L
expect_error(wm_set(x,"novos_documentos",bad));checked <- checked+1L
expect_error(wm_set(x,"filtros",bad));checked <- checked+1L
expect_error(wm_set(x,"filtros_modelo",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorSearchRequestFiltros()
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"categoria",bad));checked <- checked+1L
expect_error(wm_set(x,"data_inicial",bad));checked <- checked+1L
expect_error(wm_set(x,"data_final",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"manifestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor",bad));checked <- checked+1L
expect_error(wm_set(x,"pesquisa",bad));checked <- checked+1L
expect_error(wm_set(x,"relatorio",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"per_page",bad));checked <- checked+1L
expect_error(wm_set(x,"novos_documentos",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorSearchRequestFiltrosModelo()
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ncm",bad));checked <- checked+1L
expect_error(wm_set(x,"cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_carregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_descarregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"placa_veiculo",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_inicio_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_termino_prestacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorEvent()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"documento_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"registrado_em",bad));checked <- checked+1L
expect_error(wm_set(x,"data_captura",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_autor",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf_autor",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa",bad));checked <- checked+1L
expect_error(wm_set(x,"correcao",bad));checked <- checked+1L
expect_error(wm_set(x,"chave_cte",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_cte",bad));checked <- checked+1L
expect_error(wm_set(x,"data_entrega",bad));checked <- checked+1L
expect_error(wm_set(x,"documento_recebedor",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_recebedor",bad));checked <- checked+1L
expect_error(wm_set(x,"data_encerramento",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade_encerramento",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_encerramento",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"resumo",bad));checked <- checked+1L
expect_error(wm_set(x,"alteracoes",bad));checked <- checked+1L
expect_error(wm_set(x,"latitude",bad));checked <- checked+1L
expect_error(wm_set(x,"longitude",bad));checked <- checked+1L
expect_error(wm_set(x,"chaves_nfe",bad));checked <- checked+1L
expect_error(wm_set(x,"mdfe",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"chave_substituta",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf_condutor",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_condutor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorEventAlteracoesItem()
expect_error(wm_set(x,"grupo",bad));checked <- checked+1L
expect_error(wm_set(x,"campo",bad));checked <- checked+1L
expect_error(wm_set(x,"alteracao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorEventMdfe()
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorEventLog()
expect_error(wm_set(x,"nProt",bad));checked <- checked+1L
expect_error(wm_set(x,"dhRegEvento",bad));checked <- checked+1L
expect_error(wm_set(x,"cStat",bad));checked <- checked+1L
expect_error(wm_set(x,"xEvento",bad));checked <- checked+1L
expect_error(wm_set(x,"xMotivo",bad));checked <- checked+1L
expect_error(wm_set(x,"tpEvento",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorManifestationRequest()
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"manifestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorImportRequest()
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"url_arquivo_zip",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorImportStatus()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"processado",bad));checked <- checked+1L
expect_error(wm_set(x,"total",bad));checked <- checked+1L
expect_error(wm_set(x,"importados",bad));checked <- checked+1L
expect_error(wm_set(x,"descartados",bad));checked <- checked+1L
expect_error(wm_set(x,"erro",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorImportStatusImportadosItem()
expect_error(wm_set(x,"arquivo",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorImportStatusDescartadosItem()
expect_error(wm_set(x,"arquivo",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorSearchDocumentsQuery()
expect_error(wm_set(x,"page",bad));checked <- checked+1L
expect_error(wm_set(x,"per_page",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorGetDocumentQuery()
expect_error(wm_set(x,"atualizar_status",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorListDocumentEventsResponse()
expect_error(wm_set(x,"data",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_documents_MonitorListReportsQuery()
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"page",bad));checked <- checked+1L
expect_error(wm_set(x,"per_page",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorError()
expect_error(wm_set(x,"error",bad));checked <- checked+1L
expect_error(wm_set(x,"message",bad));checked <- checked+1L
expect_error(wm_set(x,"msg",bad));checked <- checked+1L
expect_error(wm_set(x,"success",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorPagination()
expect_error(wm_set(x,"current_page",bad));checked <- checked+1L
expect_error(wm_set(x,"last_page",bad));checked <- checked+1L
expect_error(wm_set(x,"per_page",bad));checked <- checked+1L
expect_error(wm_set(x,"total",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorAddress()
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"estado",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorCompany()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"modelos_download",bad));checked <- checked+1L
expect_error(wm_set(x,"categorias_download",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente_download",bad));checked <- checked+1L
expect_error(wm_set(x,"certificado_vencimento",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"dfe_retroativas",bad));checked <- checked+1L
expect_error(wm_set(x,"dfe_retroativas_total",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorMunicipalityRegistration()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_download",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_ibge",bad));checked <- checked+1L
expect_error(wm_set(x,"login",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorAvailableMunicipality()
expect_error(wm_set(x,"municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_ibge",bad));checked <- checked+1L
expect_error(wm_set(x,"nativo",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"certificado",bad));checked <- checked+1L
expect_error(wm_set(x,"login_senha",bad));checked <- checked+1L
expect_error(wm_set(x,"cadastro_prefeitura",bad));checked <- checked+1L
expect_error(wm_set(x,"domicilio_fiscal_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"multiplos_servicos",bad));checked <- checked+1L
expect_error(wm_set(x,"download_emitidas",bad));checked <- checked+1L
expect_error(wm_set(x,"download_recebidas",bad));checked <- checked+1L
expect_error(wm_set(x,"guia_cadastro_prefeitura",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDownloadStatistics()
expect_error(wm_set(x,"total_downloads",bad));checked <- checked+1L
expect_error(wm_set(x,"empresas",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDownloadStatisticsEmpresasItem()
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"total_downloads",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorCompanyPage()
expect_error(wm_set(x,"data",bad));checked <- checked+1L
expect_error(wm_set(x,"meta",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorMunicipalityPage()
expect_error(wm_set(x,"data",bad));checked <- checked+1L
expect_error(wm_set(x,"meta",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorAvailableMunicipalities()
expect_error(wm_set(x,"data",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorPerson()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorManifestationStateVariant0()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"manifestado",bad));checked <- checked+1L
expect_error(wm_set(x,"automatica",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfe()
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"totais_issqn",bad));checked <- checked+1L
expect_error(wm_set(x,"produtos",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"totais",bad));checked <- checked+1L
expect_error(wm_set(x,"fatura",bad));checked <- checked+1L
expect_error(wm_set(x,"operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"pedido",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel_tecnico",bad));checked <- checked+1L
expect_error(wm_set(x,"emitente",bad));checked <- checked+1L
expect_error(wm_set(x,"transporte",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"docs",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"cliente",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"categoria",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"parcelas",bad));checked <- checked+1L
expect_error(wm_set(x,"data_captura",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor",bad));checked <- checked+1L
expect_error(wm_set(x,"qtd_produtos",bad));checked <- checked+1L
expect_error(wm_set(x,"manifestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"totais_ibs_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeTotaisIssqn()
expect_error(wm_set(x,"valor_servicos",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"data_competencia",bad));checked <- checked+1L
expect_error(wm_set(x,"deducao",bad));checked <- checked+1L
expect_error(wm_set(x,"outras_retencoes",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_incondicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_condicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"regime_especial_tributacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItem()
expect_error(wm_set(x,"cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_unitario",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
expect_error(wm_set(x,"cest",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"subtotal_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
expect_error(wm_set(x,"outras_despesas",bad));checked <- checked+1L
expect_error(wm_set(x,"seguro",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto",bad));checked <- checked+1L
expect_error(wm_set(x,"total",bad));checked <- checked+1L
expect_error(wm_set(x,"gtin_tributavel",bad));checked <- checked+1L
expect_error(wm_set(x,"gtin",bad));checked <- checked+1L
expect_error(wm_set(x,"subtotal",bad));checked <- checked+1L
expect_error(wm_set(x,"frete",bad));checked <- checked+1L
expect_error(wm_set(x,"ncm",bad));checked <- checked+1L
expect_error(wm_set(x,"item",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostos()
expect_error(wm_set(x,"imposto_importacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"icms",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"issqn",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi_devolvido",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosImpostoImportacao()
expect_error(wm_set(x,"ii_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"despesas_aduaneiras",bad));checked <- checked+1L
expect_error(wm_set(x,"ii_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"iof_valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIpi()
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"qtd_selo",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_selo",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_enquadramento",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosCofins()
expect_error(wm_set(x,"cofins_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_aliquota_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_quantidade_bc",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbs()
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_doacao",bad));checked <- checked+1L
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"compra_governamental",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao_monofasica",bad));checked <- checked+1L
expect_error(wm_set(x,"transferencia_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"ajuste_competencia",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido_zfm",bad));checked <- checked+1L
expect_error(wm_set(x,"estorno_credito",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsEstadual()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsMunicipal()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsCbs()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegular()
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsEstadual()
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsMunicipal()
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularCbs()
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamental()
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsEstadual()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsMunicipal()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalCbs()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoMonofasica()
expect_error(wm_set(x,"quantidade_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_bc_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_bc_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsTransferenciaCredito()
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsAjusteCompetencia()
expect_error(wm_set(x,"competencia_apuracao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumido()
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs_condicionado_suspensao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs_condicionado_suspensao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumidoZfm()
expect_error(wm_set(x,"competencia_apuracao",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsEstornoCredito()
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIcms()
expect_error(wm_set(x,"fcp_aliquota_uf_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_bc_uf_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_valor_uf_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_motivo_desoneracao",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_retido_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_valor_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_modalidade_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_st_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_st_retido_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_bc_uf_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_st_retido_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_substituto_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_uf",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_aliquota_reducao_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_st_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_bc_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_valor_dest",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_bc_operacao_propria",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_retido_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_bc_dest",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_aliquota_interestadual",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_aliquota_uf_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_valor_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_aliquota_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_aliquota_mva",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_st_retido_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_valor_efetivo",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_st_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_aliquota_partilha_interestadual",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_valor_desonerado",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_valor_uf_remetente",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_valor_uf_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_valor_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_modalidade_bc",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosPis()
expect_error(wm_set(x,"pis_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_quantidade_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_aliquota_valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIssqn()
expect_error(wm_set(x,"iss_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio_fato_gerador",bad));checked <- checked+1L
expect_error(wm_set(x,"item_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"deducao",bad));checked <- checked+1L
expect_error(wm_set(x,"retencoes",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_incondicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_condicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"exigibilidade",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio_incidencia",bad));checked <- checked+1L
expect_error(wm_set(x,"pais",bad));checked <- checked+1L
expect_error(wm_set(x,"processo",bad));checked <- checked+1L
expect_error(wm_set(x,"incentivo_fiscal",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIpiDevolvido()
expect_error(wm_set(x,"percentual_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi_devolvido_valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeProtocoloVariant1()
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"data_recebimento",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_protocolo",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeTotais()
expect_error(wm_set(x,"valor_desconto",bad));checked <- checked+1L
expect_error(wm_set(x,"ii_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_seguro",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_st_retido_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi_devolvido_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_st_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_produtos",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_outras_despesas",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_valor_desonerado",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_frete",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total_nfe",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"ipi_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"fcp_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"icms_st_bc",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeFatura()
expect_error(wm_set(x,"valor_desconto",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_liquido",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_original",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfePedido()
expect_error(wm_set(x,"bandeira",bad));checked <- checked+1L
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_complementares",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_compra",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_credenciadora",bad));checked <- checked+1L
expect_error(wm_set(x,"intermediador",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_fisco",bad));checked <- checked+1L
expect_error(wm_set(x,"desc_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_pedido",bad));checked <- checked+1L
expect_error(wm_set(x,"autorizacao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto",bad));checked <- checked+1L
expect_error(wm_set(x,"forma_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_intermediador",bad));checked <- checked+1L
expect_error(wm_set(x,"frete",bad));checked <- checked+1L
expect_error(wm_set(x,"presenca",bad));checked <- checked+1L
expect_error(wm_set(x,"id_intermediador",bad));checked <- checked+1L
expect_error(wm_set(x,"pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade_frete",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_integracao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeResponsavelTecnico()
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"contato",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeTransporte()
expect_error(wm_set(x,"peso_liquido",bad));checked <- checked+1L
expect_error(wm_set(x,"volume",bad));checked <- checked+1L
expect_error(wm_set(x,"veiculo",bad));checked <- checked+1L
expect_error(wm_set(x,"especie",bad));checked <- checked+1L
expect_error(wm_set(x,"numeracao",bad));checked <- checked+1L
expect_error(wm_set(x,"peso_bruto",bad));checked <- checked+1L
expect_error(wm_set(x,"retirada",bad));checked <- checked+1L
expect_error(wm_set(x,"marca",bad));checked <- checked+1L
expect_error(wm_set(x,"entrega",bad));checked <- checked+1L
expect_error(wm_set(x,"volumes",bad));checked <- checked+1L
expect_error(wm_set(x,"transportadora",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade_frete",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeTransporteVeiculo()
expect_error(wm_set(x,"placa",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeTransporteRetirada()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_fantasia",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeTransporteEntrega()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_fantasia",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeTransporteVolumesItem()
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"especie",bad));checked <- checked+1L
expect_error(wm_set(x,"marca",bad));checked <- checked+1L
expect_error(wm_set(x,"numeracao",bad));checked <- checked+1L
expect_error(wm_set(x,"peso_liquido",bad));checked <- checked+1L
expect_error(wm_set(x,"peso_bruto",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeTransporteTransportadora()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_fantasia",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeDocs()
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeParcelasItem()
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"vencimento",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeFornecedorVariant0()
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"documento",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeTotaisIbsCbs()
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfeTotaisIbsCbsCbs()
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfse()
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"discriminacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_tributacao_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"totais",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_incondicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"identificacao_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_recebido",bad));checked <- checked+1L
expect_error(wm_set(x,"tomador",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_condicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_liquido",bad));checked <- checked+1L
expect_error(wm_set(x,"servicos",bad));checked <- checked+1L
expect_error(wm_set(x,"data_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"local_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"prestador",bad));checked <- checked+1L
expect_error(wm_set(x,"docs",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"categoria",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"data_captura",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfseTotais()
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_incondicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_condicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"inss_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"ir_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"csll_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"cp_valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfseImpostos()
expect_error(wm_set(x,"tributacao_iss",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao_descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"inss_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"inss_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"ir_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"ir_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"csll_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"csll_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"cp_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"cp_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfseImpostosIbsCbs()
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"localidade_incidencia",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_indicador_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_destinatario",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_calculo_reembolso_repasse",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfseImpostosIbsCbsCbs()
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfseImpostosIbsCbsIbsEstadual()
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfseImpostosIbsCbsIbsMunicipal()
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfseImpostosIbsCbsLocalidadeIncidencia()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfseIdentificacaoNfse()
expect_error(wm_set(x,"data_competencia",bad));checked <- checked+1L
expect_error(wm_set(x,"rps",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"provedor",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_substituida",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfseIdentificacaoNfseRps()
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfseServicosItem()
expect_error(wm_set(x,"desconto_condicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"discriminacao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_liquido",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_tributacao_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"local_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_incondicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_recebido",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfseServicosItemLocalPrestacaoVariant1()
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfseServicosItemImpostos()
expect_error(wm_set(x,"tributacao_iss",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao_descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"inss_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"inss_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"ir_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"ir_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"csll_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"csll_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"cp_aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"cp_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfseServicosItemImpostosIbsCbs()
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"localidade_incidencia",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_indicador_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_destinatario",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_calculo_reembolso_repasse",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfseServicosItemImpostosIbsCbsCbs()
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfseServicosItemImpostosIbsCbsIbsEstadual()
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfseServicosItemImpostosIbsCbsIbsMunicipal()
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfseServicosItemImpostosIbsCbsLocalidadeIncidencia()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfseLocalPrestacaoVariant1()
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfseDocs()
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentNfseFornecedorVariant0()
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"documento",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfe()
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_carregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"carregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"seguro",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_mdfe",bad));checked <- checked+1L
expect_error(wm_set(x,"percurso",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_nfe",bad));checked <- checked+1L
expect_error(wm_set(x,"descarregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"ferroviario",bad));checked <- checked+1L
expect_error(wm_set(x,"produto_predominante",bad));checked <- checked+1L
expect_error(wm_set(x,"aquaviario",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"rodoviario",bad));checked <- checked+1L
expect_error(wm_set(x,"emitente",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"peso_bruto",bad));checked <- checked+1L
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"docs",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"categoria",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_descarregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"aereo",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_cte",bad));checked <- checked+1L
expect_error(wm_set(x,"data_captura",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeCarregamentoItem()
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"documentos",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeCarregamentoItemDocumentosItem()
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeSeguroItem()
expect_error(wm_set(x,"responsavel",bad));checked <- checked+1L
expect_error(wm_set(x,"seguradora",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_apolice",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_averbacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeSeguroItemResponsavel()
expect_error(wm_set(x,"tipo_responsavel",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeSeguroItemSeguradora()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_seguradora",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfePercursoItemVariant0()
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"ordem",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeDescarregamentoItem()
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"documentos_fiscais",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"documentos",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeDescarregamentoItemDocumentosFiscaisItem()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeDescarregamentoItemDocumentosItem()
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeFerroviario()
expect_error(wm_set(x,"trem",bad));checked <- checked+1L
expect_error(wm_set(x,"vagoes",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeFerroviarioTrem()
expect_error(wm_set(x,"prefixo",bad));checked <- checked+1L
expect_error(wm_set(x,"data_liberacao",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
expect_error(wm_set(x,"destino",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeFerroviarioVagoesItem()
expect_error(wm_set(x,"peso_bc",bad));checked <- checked+1L
expect_error(wm_set(x,"peso_real",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_vagao",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"sequencia_vagao",bad));checked <- checked+1L
expect_error(wm_set(x,"tonelada_util",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeProdutoPredominante()
expect_error(wm_set(x,"tipo_carga",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
expect_error(wm_set(x,"gtin",bad));checked <- checked+1L
expect_error(wm_set(x,"ncm",bad));checked <- checked+1L
expect_error(wm_set(x,"lotacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeProdutoPredominanteLotacao()
expect_error(wm_set(x,"carregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"descarregamento",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeProdutoPredominanteLotacaoCarregamento()
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"latitude",bad));checked <- checked+1L
expect_error(wm_set(x,"longitude",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeProdutoPredominanteLotacaoDescarregamento()
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"latitude",bad));checked <- checked+1L
expect_error(wm_set(x,"longitude",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeAquaviario()
expect_error(wm_set(x,"irin",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_embarcacao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_embarcacao",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_embarcacao",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_viagem",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_porto_embarque",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_porto_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"porto_transbordo",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_navegacao",bad));checked <- checked+1L
expect_error(wm_set(x,"terminal_carregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"terminal_descarregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"embarcacao_comboio",bad));checked <- checked+1L
expect_error(wm_set(x,"carga_vazia",bad));checked <- checked+1L
expect_error(wm_set(x,"transporte_vazio",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeAquaviarioTerminalCarregamentoItem()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeAquaviarioTerminalDescarregamentoItem()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeAquaviarioEmbarcacaoComboioItem()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"identificador_balsa",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeAquaviarioCargaVaziaItem()
expect_error(wm_set(x,"identificador",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_unidade",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeAquaviarioTransporteVazioItem()
expect_error(wm_set(x,"identificador",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_unidade",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeRodoviario()
expect_error(wm_set(x,"contratantes",bad));checked <- checked+1L
expect_error(wm_set(x,"veiculo_reboque",bad));checked <- checked+1L
expect_error(wm_set(x,"lacres",bad));checked <- checked+1L
expect_error(wm_set(x,"veiculos",bad));checked <- checked+1L
expect_error(wm_set(x,"ciot",bad));checked <- checked+1L
expect_error(wm_set(x,"contratante",bad));checked <- checked+1L
expect_error(wm_set(x,"condutor",bad));checked <- checked+1L
expect_error(wm_set(x,"rntrc",bad));checked <- checked+1L
expect_error(wm_set(x,"veiculo_tracao",bad));checked <- checked+1L
expect_error(wm_set(x,"vale_pedagio",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeRodoviarioContratantesItem()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeRodoviarioVeiculoReboqueItem()
expect_error(wm_set(x,"codigo_interno",bad));checked <- checked+1L
expect_error(wm_set(x,"placa",bad));checked <- checked+1L
expect_error(wm_set(x,"renavam",bad));checked <- checked+1L
expect_error(wm_set(x,"tara",bad));checked <- checked+1L
expect_error(wm_set(x,"capacidade_kg",bad));checked <- checked+1L
expect_error(wm_set(x,"capacidade_m3",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_carroceria",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_licenciamento",bad));checked <- checked+1L
expect_error(wm_set(x,"proprietario",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeRodoviarioVeiculoReboqueItemProprietario()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"rntrc",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_proprietario",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeRodoviarioLacresItem()
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeRodoviarioVeiculosItem()
expect_error(wm_set(x,"tara",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"capacidade_kg",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_interno",bad));checked <- checked+1L
expect_error(wm_set(x,"placa",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_rodado",bad));checked <- checked+1L
expect_error(wm_set(x,"condutor",bad));checked <- checked+1L
expect_error(wm_set(x,"capacidade_m3",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_carroceria",bad));checked <- checked+1L
expect_error(wm_set(x,"renavam",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeRodoviarioVeiculosItemCondutor()
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeRodoviarioCiotItem()
expect_error(wm_set(x,"cnpj_responsavel",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf_responsavel",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf_cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_ciot",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeRodoviarioContratanteItem()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeRodoviarioCondutorItem()
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeRodoviarioVeiculoTracao()
expect_error(wm_set(x,"codigo_interno",bad));checked <- checked+1L
expect_error(wm_set(x,"placa",bad));checked <- checked+1L
expect_error(wm_set(x,"renavam",bad));checked <- checked+1L
expect_error(wm_set(x,"tara",bad));checked <- checked+1L
expect_error(wm_set(x,"capacidade_kg",bad));checked <- checked+1L
expect_error(wm_set(x,"capacidade_m3",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_rodado",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_carroceria",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_licenciamento",bad));checked <- checked+1L
expect_error(wm_set(x,"proprietario",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeRodoviarioVeiculoTracaoProprietario()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"rntrc",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_proprietario",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeRodoviarioValePedagioVariant0()
expect_error(wm_set(x,"cnpj_fornecedor",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_responsavel",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_comprovante",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeRodoviarioValePedagioVariant1Item()
expect_error(wm_set(x,"cnpj_fornecedor",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_responsavel",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf_responsavel",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"comprovante",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeDocs()
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeAereo()
expect_error(wm_set(x,"nacionalidade_aeronave",bad));checked <- checked+1L
expect_error(wm_set(x,"matricula_aeronave",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_voo",bad));checked <- checked+1L
expect_error(wm_set(x,"aerodromo_embarque",bad));checked <- checked+1L
expect_error(wm_set(x,"aerodromo_destino",bad));checked <- checked+1L
expect_error(wm_set(x,"data_voo",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentMdfeFornecedorVariant0()
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"documento",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCte()
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"documentos_fiscais",bad));checked <- checked+1L
expect_error(wm_set(x,"servico",bad));checked <- checked+1L
expect_error(wm_set(x,"remetente",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"expedidor",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_termino_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_inicio_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"tomador",bad));checked <- checked+1L
expect_error(wm_set(x,"recebedor",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"emitente",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_tomador",bad));checked <- checked+1L
expect_error(wm_set(x,"destinatario",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"docs",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"categoria",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"data_captura",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor",bad));checked <- checked+1L
expect_error(wm_set(x,"relacao_empresa",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteDocumentosFiscaisItem()
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"pin",bad));checked <- checked+1L
expect_error(wm_set(x,"previsao_entrega",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
expect_error(wm_set(x,"cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteServico()
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_medida",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
expect_error(wm_set(x,"documentos_originarios",bad));checked <- checked+1L
expect_error(wm_set(x,"componentes_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_carga",bad));checked <- checked+1L
expect_error(wm_set(x,"modal",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_carga",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_recebido",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteServicoDocumentosOriginariosItem()
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteServicoComponentesValorItem()
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteServicoInformacoesCarga()
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
expect_error(wm_set(x,"produto_predominante",bad));checked <- checked+1L
expect_error(wm_set(x,"outras_caracteristicas",bad));checked <- checked+1L
expect_error(wm_set(x,"cubagem",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteServicoInformacoesCargaCubagem()
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteImpostos()
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"icms",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteImpostosIbsCbs()
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_doacao",bad));checked <- checked+1L
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"compra_governamental",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
expect_error(wm_set(x,"estorno_credito",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteImpostosIbsCbsIbsEstadual()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteImpostosIbsCbsIbsMunicipal()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteImpostosIbsCbsCbs()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteImpostosIbsCbsTributacaoRegular()
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsEstadual()
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsMunicipal()
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteImpostosIbsCbsTributacaoRegularCbs()
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteImpostosIbsCbsCompraGovernamental()
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsEstadual()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsMunicipal()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteImpostosIbsCbsCompraGovernamentalCbs()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteImpostosIbsCbsCreditoPresumido()
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs_condicionado_suspensao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs_condicionado_suspensao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteImpostosIbsCbsEstornoCredito()
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteImpostosIcms()
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteDocs()
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteFornecedorVariant0()
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"documento",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOs()
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"documentos_fiscais",bad));checked <- checked+1L
expect_error(wm_set(x,"servico",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_termino_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_inicio_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"tomador",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"emitente",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_tomador",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"docs",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"categoria",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"data_captura",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor",bad));checked <- checked+1L
expect_error(wm_set(x,"relacao_empresa",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsDocumentosFiscaisItem()
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"pin",bad));checked <- checked+1L
expect_error(wm_set(x,"previsao_entrega",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
expect_error(wm_set(x,"cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsServico()
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade_medida",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
expect_error(wm_set(x,"documentos_originarios",bad));checked <- checked+1L
expect_error(wm_set(x,"componentes_valor",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_carga",bad));checked <- checked+1L
expect_error(wm_set(x,"modal",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_carga",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_recebido",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsServicoDocumentosOriginariosItem()
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsServicoComponentesValorItem()
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsServicoInformacoesCarga()
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
expect_error(wm_set(x,"produto_predominante",bad));checked <- checked+1L
expect_error(wm_set(x,"outras_caracteristicas",bad));checked <- checked+1L
expect_error(wm_set(x,"cubagem",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsServicoInformacoesCargaCubagem()
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsImpostos()
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"icms",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbs()
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_doacao",bad));checked <- checked+1L
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"compra_governamental",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
expect_error(wm_set(x,"estorno_credito",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsIbsEstadual()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsIbsMunicipal()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsCbs()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsTributacaoRegular()
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsEstadual()
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsMunicipal()
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularCbs()
expect_error(wm_set(x,"aliquota_efetiva",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsCompraGovernamental()
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsEstadual()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsMunicipal()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalCbs()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsCreditoPresumido()
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs_condicionado_suspensao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs_condicionado_suspensao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsEstornoCredito()
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsImpostosIcms()
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"bc",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsDocs()
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentCteOsFornecedorVariant0()
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"documento",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorCursorPagination()
expect_error(wm_set(x,"per_page",bad));checked <- checked+1L
expect_error(wm_set(x,"next_cursor",bad));checked <- checked+1L
expect_error(wm_set(x,"prev_cursor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDocumentPage()
expect_error(wm_set(x,"data",bad));checked <- checked+1L
expect_error(wm_set(x,"meta",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorReport()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"relatorio",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"processado",bad));checked <- checked+1L
expect_error(wm_set(x,"total",bad));checked <- checked+1L
expect_error(wm_set(x,"criado_em",bad));checked <- checked+1L
expect_error(wm_set(x,"atualizado_em",bad));checked <- checked+1L
expect_error(wm_set(x,"filtros",bad));checked <- checked+1L
expect_error(wm_set(x,"url",bad));checked <- checked+1L
expect_error(wm_set(x,"expira_em",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorReportFiltros()
expect_error(wm_set(x,"selecao_manual",bad));checked <- checked+1L
expect_error(wm_set(x,"periodo",bad));checked <- checked+1L
expect_error(wm_set(x,"empresas",bad));checked <- checked+1L
expect_error(wm_set(x,"categoria",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"manifestacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorReportFiltrosPeriodo()
expect_error(wm_set(x,"de",bad));checked <- checked+1L
expect_error(wm_set(x,"ate",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorReportPage()
expect_error(wm_set(x,"data",bad));checked <- checked+1L
expect_error(wm_set(x,"meta",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorSearchRequest()
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"categoria",bad));checked <- checked+1L
expect_error(wm_set(x,"data_inicial",bad));checked <- checked+1L
expect_error(wm_set(x,"data_final",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"manifestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor",bad));checked <- checked+1L
expect_error(wm_set(x,"pesquisa",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ncm",bad));checked <- checked+1L
expect_error(wm_set(x,"cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_carregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_descarregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"placa_veiculo",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_inicio_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_termino_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"relatorio",bad));checked <- checked+1L
expect_error(wm_set(x,"documentos",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"per_page",bad));checked <- checked+1L
expect_error(wm_set(x,"page",bad));checked <- checked+1L
expect_error(wm_set(x,"cursor",bad));checked <- checked+1L
expect_error(wm_set(x,"paginacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ordenar_por",bad));checked <- checked+1L
expect_error(wm_set(x,"ordem",bad));checked <- checked+1L
expect_error(wm_set(x,"novos_documentos",bad));checked <- checked+1L
expect_error(wm_set(x,"filtros",bad));checked <- checked+1L
expect_error(wm_set(x,"filtros_modelo",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorSearchRequestFiltros()
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"categoria",bad));checked <- checked+1L
expect_error(wm_set(x,"data_inicial",bad));checked <- checked+1L
expect_error(wm_set(x,"data_final",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"manifestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor",bad));checked <- checked+1L
expect_error(wm_set(x,"pesquisa",bad));checked <- checked+1L
expect_error(wm_set(x,"relatorio",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"per_page",bad));checked <- checked+1L
expect_error(wm_set(x,"novos_documentos",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorSearchRequestFiltrosModelo()
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ncm",bad));checked <- checked+1L
expect_error(wm_set(x,"cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_carregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_descarregamento",bad));checked <- checked+1L
expect_error(wm_set(x,"placa_veiculo",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_inicio_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_termino_prestacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorEvent()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"documento_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"registrado_em",bad));checked <- checked+1L
expect_error(wm_set(x,"data_captura",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_autor",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf_autor",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa",bad));checked <- checked+1L
expect_error(wm_set(x,"correcao",bad));checked <- checked+1L
expect_error(wm_set(x,"chave_cte",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_cte",bad));checked <- checked+1L
expect_error(wm_set(x,"data_entrega",bad));checked <- checked+1L
expect_error(wm_set(x,"documento_recebedor",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_recebedor",bad));checked <- checked+1L
expect_error(wm_set(x,"data_encerramento",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade_encerramento",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_encerramento",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"resumo",bad));checked <- checked+1L
expect_error(wm_set(x,"alteracoes",bad));checked <- checked+1L
expect_error(wm_set(x,"latitude",bad));checked <- checked+1L
expect_error(wm_set(x,"longitude",bad));checked <- checked+1L
expect_error(wm_set(x,"chaves_nfe",bad));checked <- checked+1L
expect_error(wm_set(x,"mdfe",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"chave_substituta",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf_condutor",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_condutor",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorEventAlteracoesItem()
expect_error(wm_set(x,"grupo",bad));checked <- checked+1L
expect_error(wm_set(x,"campo",bad));checked <- checked+1L
expect_error(wm_set(x,"alteracao",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorEventMdfe()
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"modalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorEventLog()
expect_error(wm_set(x,"nProt",bad));checked <- checked+1L
expect_error(wm_set(x,"dhRegEvento",bad));checked <- checked+1L
expect_error(wm_set(x,"cStat",bad));checked <- checked+1L
expect_error(wm_set(x,"xEvento",bad));checked <- checked+1L
expect_error(wm_set(x,"xMotivo",bad));checked <- checked+1L
expect_error(wm_set(x,"tpEvento",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorManifestationRequest()
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"manifestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorImportRequest()
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"url_arquivo_zip",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorImportStatus()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"processado",bad));checked <- checked+1L
expect_error(wm_set(x,"total",bad));checked <- checked+1L
expect_error(wm_set(x,"importados",bad));checked <- checked+1L
expect_error(wm_set(x,"descartados",bad));checked <- checked+1L
expect_error(wm_set(x,"erro",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorImportStatusImportadosItem()
expect_error(wm_set(x,"arquivo",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorImportStatusDescartadosItem()
expect_error(wm_set(x,"arquivo",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorCreateCompanyRequest()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"certificado_base64",bad));checked <- checked+1L
expect_error(wm_set(x,"certificado_senha",bad));checked <- checked+1L
expect_error(wm_set(x,"modelos_download",bad));checked <- checked+1L
expect_error(wm_set(x,"categorias_download",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente_download",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"dfe_retroativas",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorUpdateCompanyRequest()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"certificado_base64",bad));checked <- checked+1L
expect_error(wm_set(x,"certificado_senha",bad));checked <- checked+1L
expect_error(wm_set(x,"modelos_download",bad));checked <- checked+1L
expect_error(wm_set(x,"categorias_download",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente_download",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"dfe_retroativas",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorCreateMunicipalityRequest()
expect_error(wm_set(x,"codigo_ibge",bad));checked <- checked+1L
expect_error(wm_set(x,"login",bad));checked <- checked+1L
expect_error(wm_set(x,"senha",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_download",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorUpdateMunicipalityRequest()
expect_error(wm_set(x,"login",bad));checked <- checked+1L
expect_error(wm_set(x,"senha",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorImportNotificationData()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"processado",bad));checked <- checked+1L
expect_error(wm_set(x,"total",bad));checked <- checked+1L
expect_error(wm_set(x,"importados",bad));checked <- checked+1L
expect_error(wm_set(x,"descartados",bad));checked <- checked+1L
expect_error(wm_set(x,"erro",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorImportNotificationDataImportadosItem()
expect_error(wm_set(x,"arquivo",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorImportNotificationDataDescartadosItem()
expect_error(wm_set(x,"arquivo",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorNotification1()
expect_error(wm_set(x,"tipo_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorNotification2()
expect_error(wm_set(x,"tipo_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data",bad));checked <- checked+1L
expect_error(wm_set(x,"documento",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorNotification3()
expect_error(wm_set(x,"tipo_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorNotification4()
expect_error(wm_set(x,"tipo_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorNotification4Data()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_download",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_ibge",bad));checked <- checked+1L
expect_error(wm_set(x,"login",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"erro",bad));checked <- checked+1L
expect_error(wm_set(x,"data_erro",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorNotification5()
expect_error(wm_set(x,"tipo_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_management_MonitorDeleteCompanyMunicipalityResponse()
expect_error(wm_set(x,"msg",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_reads_MonitorError()
expect_error(wm_set(x,"error",bad));checked <- checked+1L
expect_error(wm_set(x,"message",bad));checked <- checked+1L
expect_error(wm_set(x,"msg",bad));checked <- checked+1L
expect_error(wm_set(x,"success",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_reads_MonitorPagination()
expect_error(wm_set(x,"current_page",bad));checked <- checked+1L
expect_error(wm_set(x,"last_page",bad));checked <- checked+1L
expect_error(wm_set(x,"per_page",bad));checked <- checked+1L
expect_error(wm_set(x,"total",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_reads_MonitorAddress()
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"estado",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_reads_MonitorCompany()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"modelos_download",bad));checked <- checked+1L
expect_error(wm_set(x,"categorias_download",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente_download",bad));checked <- checked+1L
expect_error(wm_set(x,"certificado_vencimento",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"dfe_retroativas",bad));checked <- checked+1L
expect_error(wm_set(x,"dfe_retroativas_total",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_reads_MonitorMunicipalityRegistration()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_download",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_ibge",bad));checked <- checked+1L
expect_error(wm_set(x,"login",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_reads_MonitorAvailableMunicipality()
expect_error(wm_set(x,"municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_ibge",bad));checked <- checked+1L
expect_error(wm_set(x,"nativo",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"certificado",bad));checked <- checked+1L
expect_error(wm_set(x,"login_senha",bad));checked <- checked+1L
expect_error(wm_set(x,"cadastro_prefeitura",bad));checked <- checked+1L
expect_error(wm_set(x,"domicilio_fiscal_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"multiplos_servicos",bad));checked <- checked+1L
expect_error(wm_set(x,"download_emitidas",bad));checked <- checked+1L
expect_error(wm_set(x,"download_recebidas",bad));checked <- checked+1L
expect_error(wm_set(x,"guia_cadastro_prefeitura",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_reads_MonitorDownloadStatistics()
expect_error(wm_set(x,"total_downloads",bad));checked <- checked+1L
expect_error(wm_set(x,"empresas",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_reads_MonitorDownloadStatisticsEmpresasItem()
expect_error(wm_set(x,"empresa_uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"total_downloads",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_reads_MonitorCompanyPage()
expect_error(wm_set(x,"data",bad));checked <- checked+1L
expect_error(wm_set(x,"meta",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_reads_MonitorMunicipalityPage()
expect_error(wm_set(x,"data",bad));checked <- checked+1L
expect_error(wm_set(x,"meta",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_reads_MonitorAvailableMunicipalities()
expect_error(wm_set(x,"data",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_reads_MonitorListCompaniesQuery()
expect_error(wm_set(x,"page",bad));checked <- checked+1L
expect_error(wm_set(x,"per_page",bad));checked <- checked+1L
expect_error(wm_set(x,"pesquisa",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_reads_MonitorListCompanyMunicipalitiesQuery()
expect_error(wm_set(x,"page",bad));checked <- checked+1L
expect_error(wm_set(x,"per_page",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_ibge",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_reads_MonitorListAvailableMunicipalitiesQuery()
expect_error(wm_set(x,"codigo_ibge",bad));checked <- checked+1L
wm_close(x)
x <- api2_monitor_reads_MonitorGetDownloadStatisticsQuery()
expect_error(wm_set(x,"ano",bad));checked <- checked+1L
expect_error(wm_set(x,"mes",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterError()
expect_error(wm_set(x,"error",bad));checked <- checked+1L
expect_error(wm_set(x,"message",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"configured",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfseServiceCode()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"id_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_sugerida",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfseServiceCodeAliquotaSugerida()
expect_error(wm_set(x,"iss",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfseProviderStatus()
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"versao",bad));checked <- checked+1L
expect_error(wm_set(x,"ambientes",bad));checked <- checked+1L
expect_error(wm_set(x,"autenticacao",bad));checked <- checked+1L
expect_error(wm_set(x,"emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"funcoes",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_sincrono",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"parametros_disponiveis",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomServiceStatus()
expect_error(wm_set(x,"operacional",bad));checked <- checked+1L
expect_error(wm_set(x,"mensagem",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfseFiscalResponse()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_lote",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_lote",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse_status",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"atualizado_em",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_substituida",bad));checked <- checked+1L
expect_error(wm_set(x,"info_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfseFiscalResponseNfseSubstituida()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfseFiscalResponseInfoNfseItem()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse_status",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_rps",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomPaymentEvent()
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_nfcom",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_vinculacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"n_seq_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"pagamento",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomPaymentEventPagamentoVariant0()
expect_error(wm_set(x,"nPag",bad));checked <- checked+1L
expect_error(wm_set(x,"idTransacao",bad));checked <- checked+1L
expect_error(wm_set(x,"tpMeioPgto",bad));checked <- checked+1L
expect_error(wm_set(x,"CNPJReceb",bad));checked <- checked+1L
expect_error(wm_set(x,"CNPJBasePSP",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomFiscalResponse()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"nfcom",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"contingencia",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"danfecom",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"data_autorizacao",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
expect_error(wm_set(x,"consulta_eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomPaymentEvents()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfseManifestationRequest()
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"manifestador",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_rejeicao",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa_rejeicao",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_CteFiscalResponse()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"cte",bad));checked <- checked+1L
expect_error(wm_set(x,"epec",bad));checked <- checked+1L
expect_error(wm_set(x,"dacte",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
expect_error(wm_set(x,"consulta_eventos_pagamento",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_CteFiscalResponseEventosPagamentoItem()
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_cte",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_vinculacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"n_seq_evento",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_MdfeFiscalResponse()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"mdfe",bad));checked <- checked+1L
expect_error(wm_set(x,"damdfe",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_DceFiscalResponse()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"dace",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_FiscalEventResponse()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"dacce",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"data_evento",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_CtePaymentEvents()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_CtePaymentEventsEventosPagamentoItem()
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_cte",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_vinculacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"n_seq_evento",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterIssueNfcomPayload()
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"assinante",bad));checked <- checked+1L
expect_error(wm_set(x,"autorizar_download",bad));checked <- checked+1L
expect_error(wm_set(x,"cliente",bad));checked <- checked+1L
expect_error(wm_set(x,"cofaturamento",bad));checked <- checked+1L
expect_error(wm_set(x,"consumidor_final",bad));checked <- checked+1L
expect_error(wm_set(x,"fatura",bad));checked <- checked+1L
expect_error(wm_set(x,"faturamento_centralizado",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_cessao_meios_rede",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_nota_entrada",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_pre_pago",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_complementares",bad));checked <- checked+1L
expect_error(wm_set(x,"itens",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio_fato_gerador",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
expect_error(wm_set(x,"pgto_vinc",bad));checked <- checked+1L
expect_error(wm_set(x,"presenca_comprador",bad));checked <- checked+1L
expect_error(wm_set(x,"previa_danfecom",bad));checked <- checked+1L
expect_error(wm_set(x,"processo_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"substituicao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_faturamento",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterIssueNfcomPayloadAssinanteVariant0()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"contrato",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_servico",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterIssueNfcomPayloadAssinanteVariant0ContratoVariant0()
expect_error(wm_set(x,"data_fim",bad));checked <- checked+1L
expect_error(wm_set(x,"data_inicio",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterIssueNfcomPayloadCliente()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"exterior",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_ie",bad));checked <- checked+1L
expect_error(wm_set(x,"inscricao_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"inscricao_municipal",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterIssueNfcomPayloadClienteEndereco()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"logradouro",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"pais",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterIssueNfcomPayloadCofaturamentoVariant0()
expect_error(wm_set(x,"chave_nfcom_local",bad));checked <- checked+1L
expect_error(wm_set(x,"nf_referenciada",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterIssueNfcomPayloadCofaturamentoVariant0NfReferenciadaVariant0()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"competencia",bad));checked <- checked+1L
expect_error(wm_set(x,"hash115",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterIssueNfcomPayloadFaturaVariant0()
expect_error(wm_set(x,"codigo_barras_fatura",bad));checked <- checked+1L
expect_error(wm_set(x,"competencia_fatura",bad));checked <- checked+1L
expect_error(wm_set(x,"data_periodo_final",bad));checked <- checked+1L
expect_error(wm_set(x,"data_periodo_inicial",bad));checked <- checked+1L
expect_error(wm_set(x,"data_vencimento",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_debito_automatico",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterIssueNfcomPayloadFaturamentoCentralizadoVariant0()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterIssueNfcomPayloadImpostosVariant0()
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0()
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"compra_governamental",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
expect_error(wm_set(x,"estorno_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_doacao",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0CompraGovernamentalVariant0()
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"documentos_referenciados",bad));checked <- checked+1L
expect_error(wm_set(x,"ente",bad));checked <- checked+1L
expect_error(wm_set(x,"referencias_dfe",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_operacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0CreditoPresumido()
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0EstornoCredito()
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0Cbs()
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0IbsEstadual()
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0IbsMunicipal()
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomItemGroup()
expect_error(wm_set(x,"classe_imposto",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_total",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"unidade",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_unitario",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_desconto",bad));checked <- checked+1L
expect_error(wm_set(x,"outras_despesas",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomItemGroupImpostos()
expect_error(wm_set(x,"codigo_classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"funttel",bad));checked <- checked+1L
expect_error(wm_set(x,"fust",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"icms",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomItemGroupImpostosCofinsVariant0()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_base_calculo",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomItemGroupImpostosFunttelVariant0()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_base_calculo",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomItemGroupImpostosFustVariant0()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_base_calculo",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomItemGroupImpostosIbsCbsVariant0()
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"compra_governamental",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
expect_error(wm_set(x,"estorno_credito",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_doacao",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomItemGroupImpostosIbsCbsVariant0CompraGovernamentalVariant0()
expect_error(wm_set(x,"aliquota_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"documentos_referenciados",bad));checked <- checked+1L
expect_error(wm_set(x,"ente",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"referencias_dfe",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomItemGroupImpostosIbsCbsVariant0CreditoPresumido()
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomItemGroupImpostosIbsCbsVariant0EstornoCredito()
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomItemGroupImpostosIbsCbsVariant0Cbs()
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomItemGroupImpostosIbsCbsVariant0IbsEstadual()
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomItemGroupImpostosIbsCbsVariant0IbsMunicipal()
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomItemGroupImpostosIcmsVariant0()
expect_error(wm_set(x,"aliquota_icms",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cfop",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_base_calculo",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_icms",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomItemGroupImpostosPisVariant0()
expect_error(wm_set(x,"aliquota",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_base_calculo",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterIssueNfcomPayloadPgtoVincVariant0()
expect_error(wm_set(x,"pagamentos",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterIssueNfcomPayloadPgtoVincVariant0PagamentosItem()
expect_error(wm_set(x,"cnpj_base_psp",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj_receb",bad));checked <- checked+1L
expect_error(wm_set(x,"id_transacao",bad));checked <- checked+1L
expect_error(wm_set(x,"n_pag",bad));checked <- checked+1L
expect_error(wm_set(x,"tp_meio_pgto",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterIssueNfcomPayloadSubstituicaoVariant0()
expect_error(wm_set(x,"chave_nfcom_substituida",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"nf_referenciada",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterIssueNfcomPayloadSubstituicaoVariant0NfReferenciadaVariant0()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"competencia",bad));checked <- checked+1L
expect_error(wm_set(x,"hash115",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_EmitterCancelNfcomPayload()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomDocumentedGroup1906()
expect_error(wm_set(x,"autorizar_download",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomDocumentedGroup1953()
expect_error(wm_set(x,"indicador_pre_pago",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_cessao_meios_rede",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_nota_entrada",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomDocumentedGroup2114()
expect_error(wm_set(x,"substituicao",bad));checked <- checked+1L
expect_error(wm_set(x,"substituicao_chave_nfcom_substituida",bad));checked <- checked+1L
expect_error(wm_set(x,"substituicao_motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"substituicao_nf_referenciada",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfcom_issuance_NfcomDocumentedGroup2382()
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterError()
expect_error(wm_set(x,"error",bad));checked <- checked+1L
expect_error(wm_set(x,"message",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"configured",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceCode()
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"id_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_sugerida",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceCodeAliquotaSugerida()
expect_error(wm_set(x,"iss",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseProviderStatus()
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"versao",bad));checked <- checked+1L
expect_error(wm_set(x,"ambientes",bad));checked <- checked+1L
expect_error(wm_set(x,"autenticacao",bad));checked <- checked+1L
expect_error(wm_set(x,"emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"funcoes",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_sincrono",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"parametros_disponiveis",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfcomServiceStatus()
expect_error(wm_set(x,"operacional",bad));checked <- checked+1L
expect_error(wm_set(x,"mensagem",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseFiscalResponse()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_lote",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_lote",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse_status",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"atualizado_em",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_substituida",bad));checked <- checked+1L
expect_error(wm_set(x,"info_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseFiscalResponseNfseSubstituida()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseFiscalResponseInfoNfseItem()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse_status",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_rps",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfcomPaymentEvent()
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_nfcom",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_vinculacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"n_seq_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"pagamento",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfcomPaymentEventPagamentoVariant0()
expect_error(wm_set(x,"nPag",bad));checked <- checked+1L
expect_error(wm_set(x,"idTransacao",bad));checked <- checked+1L
expect_error(wm_set(x,"tpMeioPgto",bad));checked <- checked+1L
expect_error(wm_set(x,"CNPJReceb",bad));checked <- checked+1L
expect_error(wm_set(x,"CNPJBasePSP",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfcomFiscalResponse()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"nfcom",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"contingencia",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"danfecom",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"data_autorizacao",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
expect_error(wm_set(x,"consulta_eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfcomPaymentEvents()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseManifestationRequest()
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"manifestador",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_rejeicao",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa_rejeicao",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_CteFiscalResponse()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"cte",bad));checked <- checked+1L
expect_error(wm_set(x,"epec",bad));checked <- checked+1L
expect_error(wm_set(x,"dacte",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
expect_error(wm_set(x,"consulta_eventos_pagamento",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_CteFiscalResponseEventosPagamentoItem()
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_cte",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_vinculacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"n_seq_evento",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_MdfeFiscalResponse()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"mdfe",bad));checked <- checked+1L
expect_error(wm_set(x,"damdfe",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_DceFiscalResponse()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"dace",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_FiscalEventResponse()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"xml_cancelamento",bad));checked <- checked+1L
expect_error(wm_set(x,"dacce",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"data_evento",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_CtePaymentEvents()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"eventos_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"total_eventos",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_CtePaymentEventsEventosPagamentoItem()
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_cte",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo_vinculacao",bad));checked <- checked+1L
expect_error(wm_set(x,"data_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"n_seq_evento",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayload()
expect_error(wm_set(x,"ID",bad));checked <- checked+1L
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"csv",bad));checked <- checked+1L
expect_error(wm_set(x,"data_agendamento",bad));checked <- checked+1L
expect_error(wm_set(x,"linha_csv",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
expect_error(wm_set(x,"rps",bad));checked <- checked+1L
expect_error(wm_set(x,"sincrono",bad));checked <- checked+1L
expect_error(wm_set(x,"url_notificacao",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItem()
expect_error(wm_set(x,"condicao_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"construcao_civil",bad));checked <- checked+1L
expect_error(wm_set(x,"destinatario",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"outras_informacoes",bad));checked <- checked+1L
expect_error(wm_set(x,"regime_especial_tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"servico",bad));checked <- checked+1L
expect_error(wm_set(x,"tomador",bad));checked <- checked+1L
expect_error(wm_set(x,"atividade_evento",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemCondicaoPagamento()
expect_error(wm_set(x,"condicao",bad));checked <- checked+1L
expect_error(wm_set(x,"parcelas",bad));checked <- checked+1L
expect_error(wm_set(x,"qtd_parcela",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemCondicaoPagamentoParcelasItem()
expect_error(wm_set(x,"data_vencimento",bad));checked <- checked+1L
expect_error(wm_set(x,"parcela",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemConstrucaoCivil()
expect_error(wm_set(x,"art",bad));checked <- checked+1L
expect_error(wm_set(x,"cno",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_obra",bad));checked <- checked+1L
expect_error(wm_set(x,"inscricao_imobiliaria_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"matricula_obra",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_encapsulamento",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_local_obra",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade_local_obra",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"inscricao_imobiliaria",bad));checked <- checked+1L
expect_error(wm_set(x,"exterior",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemDestinatario()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"id_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_nao_nif",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"nif",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemDestinatarioEndereco()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco_exterior",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco_nacional",bad));checked <- checked+1L
expect_error(wm_set(x,"logradouro",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemDestinatarioEnderecoEnderecoExterior()
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_postal",bad));checked <- checked+1L
expect_error(wm_set(x,"estado_provincia",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemDestinatarioEnderecoEnderecoNacional()
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio_ibge",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServico()
expect_error(wm_set(x,"cfps",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade_local_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"classe_imposto",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_indicador_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_interno",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_nbs",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_tributacao_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"consumidor_final",bad));checked <- checked+1L
expect_error(wm_set(x,"data_competencia",bad));checked <- checked+1L
expect_error(wm_set(x,"deducao_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_condicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_incondicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"discriminacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ente_governamental",bad));checked <- checked+1L
expect_error(wm_set(x,"exigibilidade_iss",bad));checked <- checked+1L
expect_error(wm_set(x,"id_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"imovel",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_destinatario",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_zfm_alc",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_complementares",bad));checked <- checked+1L
expect_error(wm_set(x,"intermediario",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"local_incidencia",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio_incidencia",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"nfses_referenciadas",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_processo",bad));checked <- checked+1L
expect_error(wm_set(x,"reembolso_repasse",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel_retencao_iss",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_local_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_nao_base_calculo",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_servicos",bad));checked <- checked+1L
expect_error(wm_set(x,"itens",bad));checked <- checked+1L
expect_error(wm_set(x,"local_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"cep_local_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa_deducoes",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao_impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"regime_recolhimento",bad));checked <- checked+1L
expect_error(wm_set(x,"forma_recolhimento",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco_local_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"identificador_beneficio_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao_iss",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_imunidade",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_cofins_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_tributos_aproximados",bad));checked <- checked+1L
expect_error(wm_set(x,"modo_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"vinculo_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_moeda",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_servico_moeda",bad));checked <- checked+1L
expect_error(wm_set(x,"mecanismo_apoio_comex_prestador",bad));checked <- checked+1L
expect_error(wm_set(x,"mecanismo_apoio_comex_tomador",bad));checked <- checked+1L
expect_error(wm_set(x,"movimento_temporario_bens",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_di",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_re",bad));checked <- checked+1L
expect_error(wm_set(x,"mdic",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_inicial_cobrado",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_final_cobrado",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_multa",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_juros",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ipi",bad));checked <- checked+1L
expect_error(wm_set(x,"pagamento_parcelado_antecipado",bad));checked <- checked+1L
expect_error(wm_set(x,"ncm",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_recebido",bad));checked <- checked+1L
expect_error(wm_set(x,"carga_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"fonte_carga_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"outras_informacoes",bad));checked <- checked+1L
expect_error(wm_set(x,"condicao_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"destinatario",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoDeducaoReducao()
expect_error(wm_set(x,"documentos",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItem()
expect_error(wm_set(x,"chave_nfe",bad));checked <- checked+1L
expect_error(wm_set(x,"chave_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao_outras_deducoes",bad));checked <- checked+1L
expect_error(wm_set(x,"doc_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"doc_nao_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor",bad));checked <- checked+1L
expect_error(wm_set(x,"nf_nfs",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_deducao_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_deducao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_dedutivel",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemFornecedor()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"caepf",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cep_exterior",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"estado",bad));checked <- checked+1L
expect_error(wm_set(x,"id_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_sem_nif",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfNfs()
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfseMunicipal()
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoEnteGovernamental()
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImovel()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cib",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_obra",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_postal",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"estado_provincia",bad));checked <- checked+1L
expect_error(wm_set(x,"inscricao_imobiliaria",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImovelEndereco()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco_exterior",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco_nacional",bad));checked <- checked+1L
expect_error(wm_set(x,"logradouro",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImovelEnderecoEnderecoExterior()
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_postal",bad));checked <- checked+1L
expect_error(wm_set(x,"estado_provincia",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImovelEnderecoEnderecoNacional()
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio_ibge",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImpostos()
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"csll",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"inss",bad));checked <- checked+1L
expect_error(wm_set(x,"ir",bad));checked <- checked+1L
expect_error(wm_set(x,"iss",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"piscofins",bad));checked <- checked+1L
expect_error(wm_set(x,"totTrib",bad));checked <- checked+1L
expect_error(wm_set(x,"tot_trib",bad));checked <- checked+1L
expect_error(wm_set(x,"classe_imposto",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_simples_nacional",bad));checked <- checked+1L
expect_error(wm_set(x,"reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"cst_pis_cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"cp",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbs()
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_localidade_incidencia",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"pRedutor",bad));checked <- checked+1L
expect_error(wm_set(x,"p_redutor",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"transferencia_credito",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsCbs()
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsCreditoPresumido()
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsIbsEstadual()
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsIbsMunicipal()
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsTransferenciaCredito()
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImpostosPiscofins()
expect_error(wm_set(x,"aliquota_cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_pis",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo",bad));checked <- checked+1L
expect_error(wm_set(x,"cst",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_pis",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImpostosTotTrib()
expect_error(wm_set(x,"pTotTribEst",bad));checked <- checked+1L
expect_error(wm_set(x,"pTotTribFed",bad));checked <- checked+1L
expect_error(wm_set(x,"pTotTribMun",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImpostosTotTrib2()
expect_error(wm_set(x,"estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"federal",bad));checked <- checked+1L
expect_error(wm_set(x,"municipal",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoIntermediario()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasse()
expect_error(wm_set(x,"documentos",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItem()
expect_error(wm_set(x,"data_competencia",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"dfe_nacional",bad));checked <- checked+1L
expect_error(wm_set(x,"dfe_outro",bad));checked <- checked+1L
expect_error(wm_set(x,"doc_outro",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_reembolso",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor_referenciado",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeNacional()
expect_error(wm_set(x,"chave_dfe",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao_tipo_chave_dfe",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_chave_dfe",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeOutro()
expect_error(wm_set(x,"codigo_municipio_emissor",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao_documento",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_documento",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDocOutro()
expect_error(wm_set(x,"descricao_documento",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_documento",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemFornecedor()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"id_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_nao_nif",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoItensItem()
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_unitario",bad));checked <- checked+1L
expect_error(wm_set(x,"item_tributavel",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemTomador()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade_exterior",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_postal",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco_completo_exterior",bad));checked <- checked+1L
expect_error(wm_set(x,"estado_provincia",bad));checked <- checked+1L
expect_error(wm_set(x,"fantasia",bad));checked <- checked+1L
expect_error(wm_set(x,"id_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"nif",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"pais",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"sigla_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"documento_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade_estrangeira",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemAtividadeEvento()
expect_error(wm_set(x,"descricao_evento",bad));checked <- checked+1L
expect_error(wm_set(x,"data_inicio",bad));checked <- checked+1L
expect_error(wm_set(x,"data_final",bad));checked <- checked+1L
expect_error(wm_set(x,"identificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"cep_exterior",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"estado",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"pais",bad));checked <- checked+1L
expect_error(wm_set(x,"exterior",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterCancelNfsePayload()
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayload()
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"chave",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"origem",bad));checked <- checked+1L
expect_error(wm_set(x,"rps",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItem()
expect_error(wm_set(x,"condicao_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"construcao_civil",bad));checked <- checked+1L
expect_error(wm_set(x,"destinatario",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"outras_informacoes",bad));checked <- checked+1L
expect_error(wm_set(x,"regime_especial_tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"servico",bad));checked <- checked+1L
expect_error(wm_set(x,"tomador",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemCondicaoPagamento()
expect_error(wm_set(x,"condicao",bad));checked <- checked+1L
expect_error(wm_set(x,"parcelas",bad));checked <- checked+1L
expect_error(wm_set(x,"qtd_parcela",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemCondicaoPagamentoParcelasItem()
expect_error(wm_set(x,"data_vencimento",bad));checked <- checked+1L
expect_error(wm_set(x,"parcela",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemConstrucaoCivil()
expect_error(wm_set(x,"art",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_obra",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemDestinatario()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"id_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_nao_nif",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemDestinatarioEndereco()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco_exterior",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco_nacional",bad));checked <- checked+1L
expect_error(wm_set(x,"logradouro",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemDestinatarioEnderecoEnderecoExterior()
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_postal",bad));checked <- checked+1L
expect_error(wm_set(x,"estado_provincia",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemDestinatarioEnderecoEnderecoNacional()
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio_ibge",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServico()
expect_error(wm_set(x,"cidade_local_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"classe_imposto",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_indicador_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_nbs",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_tributacao_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"consumidor_final",bad));checked <- checked+1L
expect_error(wm_set(x,"deducao_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"discriminacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ente_governamental",bad));checked <- checked+1L
expect_error(wm_set(x,"exigibilidade_iss",bad));checked <- checked+1L
expect_error(wm_set(x,"imovel",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_destinatario",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_zfm_alc",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_complementares",bad));checked <- checked+1L
expect_error(wm_set(x,"intermediario",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio_incidencia",bad));checked <- checked+1L
expect_error(wm_set(x,"nfses_referenciadas",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_processo",bad));checked <- checked+1L
expect_error(wm_set(x,"reembolso_repasse",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel_retencao_iss",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_local_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_servicos",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducao()
expect_error(wm_set(x,"documentos",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItem()
expect_error(wm_set(x,"chave_nfe",bad));checked <- checked+1L
expect_error(wm_set(x,"chave_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao_outras_deducoes",bad));checked <- checked+1L
expect_error(wm_set(x,"doc_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"doc_nao_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor",bad));checked <- checked+1L
expect_error(wm_set(x,"nf_nfs",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_deducao_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_deducao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_dedutivel",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemFornecedor()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"caepf",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cep_exterior",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"estado",bad));checked <- checked+1L
expect_error(wm_set(x,"id_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_sem_nif",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfNfs()
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfseMunicipal()
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoEnteGovernamental()
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoImovel()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cib",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_obra",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_postal",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"estado_provincia",bad));checked <- checked+1L
expect_error(wm_set(x,"inscricao_imobiliaria",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoImovelEndereco()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco_exterior",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco_nacional",bad));checked <- checked+1L
expect_error(wm_set(x,"logradouro",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoImovelEnderecoEnderecoExterior()
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_postal",bad));checked <- checked+1L
expect_error(wm_set(x,"estado_provincia",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoImovelEnderecoEnderecoNacional()
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio_ibge",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoImpostos()
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"csll",bad));checked <- checked+1L
expect_error(wm_set(x,"inss",bad));checked <- checked+1L
expect_error(wm_set(x,"ir",bad));checked <- checked+1L
expect_error(wm_set(x,"iss",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"piscofins",bad));checked <- checked+1L
expect_error(wm_set(x,"totTrib",bad));checked <- checked+1L
expect_error(wm_set(x,"tot_trib",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoImpostosPiscofins()
expect_error(wm_set(x,"aliquota_cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_pis",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo",bad));checked <- checked+1L
expect_error(wm_set(x,"cst",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_pis",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoImpostosTotTrib()
expect_error(wm_set(x,"pTotTribEst",bad));checked <- checked+1L
expect_error(wm_set(x,"pTotTribFed",bad));checked <- checked+1L
expect_error(wm_set(x,"pTotTribMun",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoImpostosTotTrib2()
expect_error(wm_set(x,"estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"federal",bad));checked <- checked+1L
expect_error(wm_set(x,"municipal",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoImpostosIbsCbs()
expect_error(wm_set(x,"codigo_localidade_incidencia",bad));checked <- checked+1L
expect_error(wm_set(x,"pRedutor",bad));checked <- checked+1L
expect_error(wm_set(x,"p_redutor",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoIntermediario()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasse()
expect_error(wm_set(x,"documentos",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItem()
expect_error(wm_set(x,"data_competencia",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"dfe_nacional",bad));checked <- checked+1L
expect_error(wm_set(x,"dfe_outro",bad));checked <- checked+1L
expect_error(wm_set(x,"doc_outro",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_reembolso",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeNacional()
expect_error(wm_set(x,"chave_dfe",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao_tipo_chave_dfe",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_chave_dfe",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeOutro()
expect_error(wm_set(x,"codigo_municipio_emissor",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao_documento",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_documento",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDocOutro()
expect_error(wm_set(x,"descricao_documento",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_documento",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemFornecedor()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"id_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_nao_nif",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemTomador()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade_exterior",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_postal",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco_completo_exterior",bad));checked <- checked+1L
expect_error(wm_set(x,"estado_provincia",bad));checked <- checked+1L
expect_error(wm_set(x,"fantasia",bad));checked <- checked+1L
expect_error(wm_set(x,"id_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"nif",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"pais",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"sigla_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseDocumentedGroup516()
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"versao",bad));checked <- checked+1L
expect_error(wm_set(x,"ambientes",bad));checked <- checked+1L
expect_error(wm_set(x,"autenticacao",bad));checked <- checked+1L
expect_error(wm_set(x,"emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"funcoes",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"parametros_disponiveis",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseDocumentedGroup700()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_lote",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_lote",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"info_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"atualizado_em",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseDocumentedGroup829()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse_status",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
expect_error(wm_set(x,"atualizado_em",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseDocumentedGroup1074()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_lote",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_lote",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"protocolo",bad));checked <- checked+1L
expect_error(wm_set(x,"info_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseDocumentedGroup1181()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"status",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"serie_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"xml",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_nfse_status",bad));checked <- checked+1L
expect_error(wm_set(x,"pdf_rps",bad));checked <- checked+1L
expect_error(wm_set(x,"log",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseDocumentedGroup6052()
expect_error(wm_set(x,"uuid",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseDocumentedGroup6116()
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo",bad));checked <- checked+1L
expect_error(wm_set(x,"rps",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseDocumentedGroup6216()
expect_error(wm_set(x,"ambiente",bad));checked <- checked+1L
expect_error(wm_set(x,"manifestador",bad));checked <- checked+1L
expect_error(wm_set(x,"evento",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_rejeicao",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa_rejeicao",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroup()
expect_error(wm_set(x,"cfps",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade_local_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"classe_imposto",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"cod_indicador_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_interno",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_nbs",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_servico",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_tributacao_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"consumidor_final",bad));checked <- checked+1L
expect_error(wm_set(x,"data_competencia",bad));checked <- checked+1L
expect_error(wm_set(x,"deducao_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_condicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"desconto_incondicionado",bad));checked <- checked+1L
expect_error(wm_set(x,"discriminacao",bad));checked <- checked+1L
expect_error(wm_set(x,"ente_governamental",bad));checked <- checked+1L
expect_error(wm_set(x,"exigibilidade_iss",bad));checked <- checked+1L
expect_error(wm_set(x,"id_cnae",bad));checked <- checked+1L
expect_error(wm_set(x,"imovel",bad));checked <- checked+1L
expect_error(wm_set(x,"impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_destinatario",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_zfm_alc",bad));checked <- checked+1L
expect_error(wm_set(x,"informacoes_complementares",bad));checked <- checked+1L
expect_error(wm_set(x,"intermediario",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"local_incidencia",bad));checked <- checked+1L
expect_error(wm_set(x,"municipio_incidencia",bad));checked <- checked+1L
expect_error(wm_set(x,"natureza_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"nfses_referenciadas",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_processo",bad));checked <- checked+1L
expect_error(wm_set(x,"reembolso_repasse",bad));checked <- checked+1L
expect_error(wm_set(x,"responsavel_retencao_iss",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_operacao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao",bad));checked <- checked+1L
expect_error(wm_set(x,"uf_local_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_nao_base_calculo",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_servicos",bad));checked <- checked+1L
expect_error(wm_set(x,"itens",bad));checked <- checked+1L
expect_error(wm_set(x,"local_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"cep_local_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"justificativa_deducoes",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao_impostos",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"regime_recolhimento",bad));checked <- checked+1L
expect_error(wm_set(x,"forma_recolhimento",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco_local_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"identificador_beneficio_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"tributacao_iss",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_imunidade",bad));checked <- checked+1L
expect_error(wm_set(x,"pis_cofins_retido",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_tributos_aproximados",bad));checked <- checked+1L
expect_error(wm_set(x,"modo_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"vinculo_prestacao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_moeda",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_servico_moeda",bad));checked <- checked+1L
expect_error(wm_set(x,"mecanismo_apoio_comex_prestador",bad));checked <- checked+1L
expect_error(wm_set(x,"mecanismo_apoio_comex_tomador",bad));checked <- checked+1L
expect_error(wm_set(x,"movimento_temporario_bens",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_di",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_re",bad));checked <- checked+1L
expect_error(wm_set(x,"mdic",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_inicial_cobrado",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_final_cobrado",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_multa",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_juros",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_ipi",bad));checked <- checked+1L
expect_error(wm_set(x,"pagamento_parcelado_antecipado",bad));checked <- checked+1L
expect_error(wm_set(x,"ncm",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_recebido",bad));checked <- checked+1L
expect_error(wm_set(x,"carga_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"fonte_carga_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"finalidade",bad));checked <- checked+1L
expect_error(wm_set(x,"outras_informacoes",bad));checked <- checked+1L
expect_error(wm_set(x,"condicao_pagamento",bad));checked <- checked+1L
expect_error(wm_set(x,"destinatario",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupDeducaoReducao()
expect_error(wm_set(x,"documentos",bad));checked <- checked+1L
expect_error(wm_set(x,"percentual",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupDeducaoReducaoDocumentosItem()
expect_error(wm_set(x,"chave_nfe",bad));checked <- checked+1L
expect_error(wm_set(x,"chave_nfse",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao_outras_deducoes",bad));checked <- checked+1L
expect_error(wm_set(x,"doc_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"doc_nao_fiscal",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor",bad));checked <- checked+1L
expect_error(wm_set(x,"nf_nfs",bad));checked <- checked+1L
expect_error(wm_set(x,"nfse_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_deducao_reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_deducao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_dedutivel",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupDeducaoReducaoDocumentosItemFornecedor()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"caepf",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cep_exterior",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"email",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"estado",bad));checked <- checked+1L
expect_error(wm_set(x,"id_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"motivo_sem_nif",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"telefone",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupDeducaoReducaoDocumentosItemNfNfs()
expect_error(wm_set(x,"modelo",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"serie",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupDeducaoReducaoDocumentosItemNfseMunicipal()
expect_error(wm_set(x,"codigo_municipio",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_verificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupEnteGovernamental()
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupImovel()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_cib",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_obra",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_postal",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"estado_provincia",bad));checked <- checked+1L
expect_error(wm_set(x,"inscricao_imobiliaria",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupImovelEndereco()
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco_exterior",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco_nacional",bad));checked <- checked+1L
expect_error(wm_set(x,"logradouro",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupImovelEnderecoEnderecoExterior()
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_pais",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_postal",bad));checked <- checked+1L
expect_error(wm_set(x,"estado_provincia",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupImovelEnderecoEnderecoNacional()
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_municipio_ibge",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupImpostos()
expect_error(wm_set(x,"cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"csll",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"inss",bad));checked <- checked+1L
expect_error(wm_set(x,"ir",bad));checked <- checked+1L
expect_error(wm_set(x,"iss",bad));checked <- checked+1L
expect_error(wm_set(x,"pis",bad));checked <- checked+1L
expect_error(wm_set(x,"piscofins",bad));checked <- checked+1L
expect_error(wm_set(x,"totTrib",bad));checked <- checked+1L
expect_error(wm_set(x,"tot_trib",bad));checked <- checked+1L
expect_error(wm_set(x,"classe_imposto",bad));checked <- checked+1L
expect_error(wm_set(x,"iss_simples_nacional",bad));checked <- checked+1L
expect_error(wm_set(x,"reducao",bad));checked <- checked+1L
expect_error(wm_set(x,"cst_pis_cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"cp",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupImpostosIbsCbs()
expect_error(wm_set(x,"cbs",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"classificacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"codigo_localidade_incidencia",bad));checked <- checked+1L
expect_error(wm_set(x,"credito_presumido",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"ibs_municipal",bad));checked <- checked+1L
expect_error(wm_set(x,"pRedutor",bad));checked <- checked+1L
expect_error(wm_set(x,"p_redutor",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria",bad));checked <- checked+1L
expect_error(wm_set(x,"situacao_tributaria_regular",bad));checked <- checked+1L
expect_error(wm_set(x,"transferencia_credito",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupImpostosIbsCbsCbs()
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupImpostosIbsCbsCreditoPresumido()
expect_error(wm_set(x,"classificacao",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupImpostosIbsCbsIbsEstadual()
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupImpostosIbsCbsIbsMunicipal()
expect_error(wm_set(x,"aliquota_diferimento",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_devolvido",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupImpostosIbsCbsTransferenciaCredito()
expect_error(wm_set(x,"valor_ibs",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cbs",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupImpostosPiscofins()
expect_error(wm_set(x,"aliquota_cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"aliquota_pis",bad));checked <- checked+1L
expect_error(wm_set(x,"base_calculo",bad));checked <- checked+1L
expect_error(wm_set(x,"cst",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_retencao",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_cofins",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_pis",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupImpostosTotTrib()
expect_error(wm_set(x,"pTotTribEst",bad));checked <- checked+1L
expect_error(wm_set(x,"pTotTribFed",bad));checked <- checked+1L
expect_error(wm_set(x,"pTotTribMun",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupImpostosTotTrib2()
expect_error(wm_set(x,"estadual",bad));checked <- checked+1L
expect_error(wm_set(x,"federal",bad));checked <- checked+1L
expect_error(wm_set(x,"municipal",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupIntermediario()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"im",bad));checked <- checked+1L
expect_error(wm_set(x,"nome_completo",bad));checked <- checked+1L
expect_error(wm_set(x,"razao_social",bad));checked <- checked+1L
expect_error(wm_set(x,"cidade",bad));checked <- checked+1L
expect_error(wm_set(x,"uf",bad));checked <- checked+1L
expect_error(wm_set(x,"ie",bad));checked <- checked+1L
expect_error(wm_set(x,"endereco",bad));checked <- checked+1L
expect_error(wm_set(x,"cep",bad));checked <- checked+1L
expect_error(wm_set(x,"bairro",bad));checked <- checked+1L
expect_error(wm_set(x,"numero",bad));checked <- checked+1L
expect_error(wm_set(x,"complemento",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupReembolsoRepasse()
expect_error(wm_set(x,"documentos",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupReembolsoRepasseDocumentosItem()
expect_error(wm_set(x,"data_competencia",bad));checked <- checked+1L
expect_error(wm_set(x,"data_emissao",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"dfe_nacional",bad));checked <- checked+1L
expect_error(wm_set(x,"dfe_outro",bad));checked <- checked+1L
expect_error(wm_set(x,"doc_outro",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_reembolso",bad));checked <- checked+1L
expect_error(wm_set(x,"valor",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_total",bad));checked <- checked+1L
expect_error(wm_set(x,"fornecedor_referenciado",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupReembolsoRepasseDocumentosItemDfeNacional()
expect_error(wm_set(x,"chave_dfe",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao_tipo_chave_dfe",bad));checked <- checked+1L
expect_error(wm_set(x,"tipo_chave_dfe",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupReembolsoRepasseDocumentosItemDfeOutro()
expect_error(wm_set(x,"codigo_municipio_emissor",bad));checked <- checked+1L
expect_error(wm_set(x,"descricao_documento",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_documento",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupReembolsoRepasseDocumentosItemDocOutro()
expect_error(wm_set(x,"descricao_documento",bad));checked <- checked+1L
expect_error(wm_set(x,"numero_documento",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupReembolsoRepasseDocumentosItemFornecedor()
expect_error(wm_set(x,"cnpj",bad));checked <- checked+1L
expect_error(wm_set(x,"cpf",bad));checked <- checked+1L
expect_error(wm_set(x,"id_estrangeiro",bad));checked <- checked+1L
expect_error(wm_set(x,"indicador_nao_nif",bad));checked <- checked+1L
expect_error(wm_set(x,"nome",bad));checked <- checked+1L
wm_close(x)
x <- api2_nfse_issuance_NfseServiceGroupItensItem()
expect_error(wm_set(x,"descricao",bad));checked <- checked+1L
expect_error(wm_set(x,"quantidade",bad));checked <- checked+1L
expect_error(wm_set(x,"valor_unitario",bad));checked <- checked+1L
expect_error(wm_set(x,"item_tributavel",bad));checked <- checked+1L
wm_close(x)
x <- api2_reports_ReportError()
expect_error(wm_set(x,"error",bad));checked <- checked+1L
wm_close(x)
wm_close(bad)
cat("Nominal wrong-type fields:",checked,"PASS\n")
