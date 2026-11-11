library(webmania)
a <- commandArgs(TRUE)
cfg <- wm_config(base_url=a[[2]], ca_pem=paste(readLines(a[[3]]),collapse="\n"), worker_path=a[[4]], file_origins=a[[2]])
company <- wm_company_credentials("synthetic-company-key","synthetic-secret","synthetic-token","synthetic-secret2")
reseller <- wm_reseller_credentials("synthetic-reseller-key","synthetic-secret","synthetic-token","synthetic-secret2")
issuer <- wm_issuer_token("synthetic-issuer")
monitor <- wm_monitor_token("synthetic-monitor")
clients <- list(wm_nfe_client(company,cfg),wm_reseller_client(reseller,cfg),wm_emitter_client(issuer,cfg),wm_monitor_client(monitor,cfg),wm_nfe_files_client(company,cfg),wm_emitter_files_client(issuer,cfg))
for(x in list(company,reseller,issuer,monitor)) wm_close(x)
if (a[[1]] == "0") {
task <- nfe_get_certificate_validity(clients[[1]])
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "1") {
task <- nfe_get_sefaz_status(clients[[1]])
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "2") {
query <- wm_from_json(api1_fiscal_NfeGetDocumentQuery,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\"}",cfg)
task <- nfe_get_document(clients[[1]],query)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "3") {
body <- wm_from_json(api1_fiscal_NfeLookupRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\"}",cfg)
task <- nfe_query_document(clients[[1]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "4") {
body <- wm_from_json(api1_fiscal_NfeCorrectionRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"correcao\":\"00000000-0000-4000-8000-000000000001\"}",cfg)
task <- nfe_create_correction(clients[[1]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "5") {
body <- wm_from_json(api1_fiscal_NfeManifestationRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":2,\"evento\":\"210240\",\"justificativa\":\"The goods were never delivered.\"}",cfg)
task <- nfe_create_manifestation(clients[[1]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "6") {
body <- wm_from_json(api1_fiscal_NfeCancelRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"motivo\":\"00000000-0000-4000-8000-000000000001\"}",cfg)
task <- nfe_cancel_document(clients[[1]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "7") {
body <- wm_from_json(api1_fiscal_NfeVoidRequest,"{\"sequencia\":\"00000000\",\"motivo\":\"00000000-0000-4000-8000-000000000001\",\"ambiente\":1,\"serie\":\"0\",\"modelo\":\"1\"}",cfg)
task <- nfe_void_numbering(clients[[1]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "8") {
body <- wm_from_json(api1_fiscal_NfePaymentEventRequest,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"pagamento\":{\"forma_pagamento\":\"01\",\"valor_pagamento\":\"0.00\",\"data_pagamento\":\"2026-10-25\"}}",cfg)
task <- nfe_create_payment_event(clients[[1]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "9") {
body <- wm_from_json(api1_fiscal_NfePaymentEventCancelRequest,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\"}",cfg)
task <- nfe_cancel_payment_event(clients[[1]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "10") {
body <- wm_from_json(api1_fiscal_NfeIbsCbsEventCancelRequest,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\"}",cfg)
task <- nfe_cancel_ibs_cbs_event(clients[[1]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "11") {
task <- nfe_list_tax_classes(clients[[1]])
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "12") {
body <- wm_from_json(api1_fiscal_TaxClassDeleteRequest,"{\"referencia\":\"synthetic\"}",cfg)
task <- nfe_delete_tax_classes(clients[[1]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "13") {
body <- wm_from_json(api1_fiscal_FiscalTaxClassRequest,"{\"descricao\":\"synthetic\",\"icms\":[{\"tipo_tributacao\":\"synthetic\",\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"codigo_cfop\":\"synthetic\",\"situacao_tributaria\":\"syn\"}],\"ipi\":[{\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"situacao_tributaria\":\"sy\",\"codigo_enquadramento\":\"syn\",\"aliquota\":\"0\"}],\"pis\":[{\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"situacao_tributaria\":\"sy\",\"aliquota\":\"0\"}],\"cofins\":[{\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"situacao_tributaria\":\"sy\",\"aliquota\":\"0\"}]}",cfg)
task <- nfe_save_tax_classes(clients[[1]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "14") {
body <- wm_from_json(api1_fiscal_NfeIssueRequest,"{\"ID\":\"controlled-001\",\"modelo\":\"1\",\"operacao\":1,\"natureza_operacao\":\"Synthetic sale\",\"finalidade\":1,\"ambiente\":2,\"cliente\":{\"cpf\":\"000.000.000-00\",\"nome_completo\":\"Synthetic person\",\"endereco\":\"Synthetic street\",\"numero\":\"1\",\"bairro\":\"Synthetic district\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\",\"cep\":\"01001-000\"},\"produtos\":[{\"nome\":\"Synthetic item\",\"codigo\":\"0001\",\"ncm\":\"0000.00.00\",\"quantidade\":\"1.0000\",\"unidade\":\"UN\",\"subtotal\":\"0.10\",\"total\":\"0.10\",\"origem\":0,\"impostos\":{\"icms\":{\"codigo_cfop\":\"5102\",\"situacao_tributaria\":\"102\"}}}],\"pedido\":{\"presenca\":1,\"modalidade_frete\":9,\"pagamento\":0,\"forma_pagamento\":\"01\",\"valor_pagamento\":\"0.10\"}}",cfg)
task <- nfe_issue_document(clients[[1]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "15") {
body <- wm_from_json(api1_fiscal_NfeReturnRequest,"{\"classe_imposto\":\"synthetic\",\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":1,\"natureza_operacao\":\"synthetic\"}",cfg)
task <- nfe_issue_return(clients[[1]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "16") {
body <- wm_from_json(api1_fiscal_NfeAdjustmentRequest,"{\"operacao\":0,\"natureza_operacao\":\"synthetic\",\"codigo_cfop\":\"5102\",\"ambiente\":1,\"cliente\":{}}",cfg)
task <- nfe_issue_adjustment(clients[[1]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "17") {
body <- wm_from_json(api1_fiscal_NfeComplementRequest,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"operacao\":1,\"natureza_operacao\":\"Synthetic complement\",\"ambiente\":2,\"cliente\":{\"cpf\":\"000.000.000-00\",\"nome_completo\":\"Synthetic person\",\"endereco\":\"Synthetic street\",\"numero\":\"1\",\"bairro\":\"Synthetic district\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\",\"cep\":\"01001-000\"},\"impostos\":{\"ibs_cbs\":{\"situacao_tributaria\":\"000\",\"classificacao_tributaria\":\"000001\",\"base_calculo\":0}}}",cfg)
task <- nfe_issue_complement(clients[[1]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "18") {
body <- wm_from_json(api1_fiscal_FiscalCompanyUpdateRequest,"{\"cnae\":null}",cfg)
task <- fiscal_update_company(clients[[1]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "19") {
body <- wm_from_json(api1_fiscal_FiscalReportRequest,"{\"modelo\":\"nfe\",\"relatorio\":\"danfe\",\"numero_inicio\":\"1\",\"numero_final\":\"5\"}",cfg)
task <- fiscal_create_or_poll_report(clients[[1]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "20") {
body <- wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":2,\"cod_evento\":\"112110\"}",cfg)
task <- nfe_create_ibs_cbs_event(clients[[1]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "21") {
body <- wm_from_json(api1_b2b_ResellerCreateCompaniesRequest,"{\"quantidade\":1}",cfg)
task <- b2b_v1_create_companies(clients[[2]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "22") {
task <- b2b_v1_list_companies(clients[[2]])
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "23") {
query <- wm_from_json(api1_b2b_B2bV1GetProcessedRequestsQuery,"{}",cfg)
task <- b2b_v1_get_processed_requests(clients[[2]],query)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "24") {
body <- wm_from_json(api2_cte_issuance_EmitterIssueCtePayload,"{\"ambiente\":2,\"modelo\":\"cte_os\",\"natureza_operacao\":\"Synthetic passenger transport\",\"modalidade\":1,\"finalidade\":\"0\",\"contribuicao_tomador\":9,\"indicador_tomador\":4,\"local_inicio_prestacao\":{\"cidade\":\"Synthetic origin\",\"uf\":\"SP\"},\"local_termino_prestacao\":{\"cidade\":\"Synthetic destination\",\"uf\":\"RJ\"},\"tomador\":{\"cnpj\":\"00000000000000\",\"nome_razao\":\"Synthetic company\",\"endereco\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\"},\"servico\":{\"tipo\":6,\"descricao\":\"Synthetic passenger transport\",\"valor_total\":\"100.00\",\"valor_recebido\":\"100.00\"},\"carga\":{\"produto_predominante\":\"Synthetic service\",\"valor_total\":\"100.00\",\"quantidades\":[{\"quantidade\":\"1.0000\"}]},\"impostos\":{\"cfop\":\"6353\",\"classificacao_tributaria\":\"SN\"},\"documentos_fiscais\":[{\"numero\":\"001\",\"data_emissao\":\"2026-01-01\",\"valor_documento\":\"100.00\"}],\"rodoviario\":{\"taf_cte_os\":\"000000000000\",\"tipo_fretamento\":\"2\"}}",cfg)
task <- emitter_issue_cte(clients[[3]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "25") {
body <- wm_from_json(api2_cte_issuance_EmitterIssueSimplifiedCtePayload,"{\"ambiente\":\"1\",\"modelo\":\"cte\",\"nfe_xml\":\"synthetic\"}",cfg)
task <- emitter_issue_simplified_cte(clients[[3]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "26") {
body <- wm_from_json(api2_cte_issuance_EmitterCancelCtePayload,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"justificativa\":\"Synthetic cancellation justification\"}",cfg)
task <- emitter_cancel_cte(clients[[3]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "27") {
body <- wm_from_json(api2_cte_issuance_EmitterCorrectCtePayload,"{\"alteracoes\":[{\"campo\":\"synthetic\",\"grupo\":\"synthetic\",\"valor\":\"synthetic\"}],\"uuid\":\"00000000-0000-4000-8000-000000000001\"}",cfg)
task <- emitter_correct_cte(clients[[3]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "28") {
body <- wm_from_json(api2_cte_issuance_EmitterConfirmCteDeliveryPayload,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"notas_fiscais\":[\"123456ab12cd34ef5600000000000000000000000000\"],\"comprovante\":\"SYNTHETIC_IMAGE_PLACEHOLDER\"}",cfg)
task <- emitter_confirm_cte_delivery(clients[[3]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "29") {
body <- wm_from_json(api2_cte_issuance_EmitterCancelCteDeliveryPayload,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"protocolo\":\"synthetic\",\"sequencia\":\"synthetic\"}",cfg)
task <- emitter_cancel_cte_delivery(clients[[3]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "30") {
body <- wm_from_json(api2_cte_issuance_EmitterLinkCtePaymentPayload,"{\"pagamento\":{\"cnpj_base_psp\":\"00000000\",\"cnpj_recebedor\":\"00000000000000\",\"id_transacao\":\"synthetic\",\"n_pag\":1,\"tp_meio_pagamento\":\"synthetic\"},\"uuid\":\"00000000-0000-4000-8000-000000000001\"}",cfg)
task <- emitter_link_cte_payment(clients[[3]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "31") {
body <- wm_from_json(api2_cte_issuance_EmitterCancelCtePaymentLinkPayload,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"protocolo_vinculacao\":\"000000000000000\",\"sequencia_vinculacao\":1}",cfg)
task <- emitter_cancel_cte_payment_link(clients[[3]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "32") {
task <- emitter_get_cte(clients[[3]],"synthetic")
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "33") {
task <- emitter_get_cte_payment_events(clients[[3]],"synthetic")
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "34") {
body <- wm_from_json(api2_dce_issuance_EmitterIssueDcePayload,"{\"ambiente\":\"1\",\"itens\":[{\"descricao\":\"synthetic\",\"ncm\":\"00000000\",\"quantidade\":0.0,\"valor_unitario\":0.0}],\"cliente\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"identificacao_alternativa\":\"synthetic\",\"nome_completo\":\"synthetic\",\"razao_social\":\"synthetic\"},\"emitente\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"identificacao_alternativa\":\"synthetic\",\"nome_completo\":\"synthetic\",\"razao_social\":\"synthetic\"}}",cfg)
task <- emitter_issue_dce(clients[[3]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "35") {
body <- wm_from_json(api2_dce_issuance_EmitterCancelDcePayload,"{\"chave\":\"123456ab12cd34ef5600000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg)
task <- emitter_cancel_dce(clients[[3]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "36") {
task <- emitter_get_dce(clients[[3]],"synthetic")
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "37") {
query <- wm_from_json(api2_emitter_reads_EmitterGetNfseProviderStatusQuery,"{}",cfg)
task <- emitter_get_nfse_provider_status(clients[[3]],query)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "38") {
task <- emitter_get_nfcom_service_status(clients[[3]])
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "39") {
task <- emitter_get_nfse(clients[[3]],"synthetic")
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "40") {
task <- emitter_get_nfcom(clients[[3]],"00000000-0000-4000-8000-000000000001")
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "41") {
task <- emitter_get_nfcom_payment_events(clients[[3]],"00000000-0000-4000-8000-000000000001")
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "42") {
body <- wm_from_json(api2_emitter_reads_NfseManifestationRequest,"{\"ambiente\":2,\"chave\":\"00000000000000000000000000000000000000000000000000\",\"manifestador\":1,\"evento\":1}",cfg)
task <- emitter_manifest_nfse(clients[[3]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "43") {
body <- wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayload,"{\"ambiente\":\"1\",\"carregamento\":[{\"nome_municipio\":\"synthetic\"}],\"descarregamento\":[{\"documentos_fiscais\":[{\"chave\":\"00000000000000000000000000000000000000000000\"}],\"nome_municipio\":\"synthetic\"}],\"emitente\":\"1\",\"modalidade\":\"1\",\"peso_bruto\":\"synthetic\",\"uf_carregamento\":\"synthetic\",\"uf_descarregamento\":\"synthetic\",\"unidade\":\"01\",\"valor_carga\":\"synthetic\",\"rodoviario\":{}}",cfg)
task <- emitter_issue_mdfe(clients[[3]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "44") {
body <- wm_from_json(api2_mdfe_issuance_EmitterCloseMdfePayload,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"codigo_municipio\":\"0000000\",\"municipio\":\"synthetic\",\"uf\":\"synthetic\"}",cfg)
task <- emitter_close_mdfe(clients[[3]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "45") {
body <- wm_from_json(api2_mdfe_issuance_EmitterCancelMdfePayload,"{\"chave\":\"123456ab12cd34ef5600000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg)
task <- emitter_cancel_mdfe(clients[[3]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "46") {
body <- wm_from_json(api2_mdfe_issuance_EmitterAddMdfeConductorPayload,"{\"cpf\":\"synthetic\",\"nome\":\"synthetic\",\"uuid\":\"00000000-0000-4000-8000-000000000001\"}",cfg)
task <- emitter_add_mdfe_conductor(clients[[3]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "47") {
task <- emitter_get_mdfe(clients[[3]],"synthetic")
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "48") {
body <- wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayload,"{\"ambiente\":2,\"natureza_operacao\":\"Synthetic communication\",\"tipo_operacao\":1,\"finalidade\":1,\"tipo_faturamento\":0,\"cliente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"Synthetic company\",\"indicador_ie\":9,\"endereco\":{\"logradouro\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"codigo_municipio\":\"3550308\",\"municipio\":\"Synthetic municipality\",\"uf\":\"SP\",\"cep\":\"00000000\"}},\"assinante\":{\"codigo\":\"SYNTHETIC\",\"tipo\":1,\"tipo_servico\":4,\"contrato\":{\"numero\":\"SYNTHETIC\",\"data_inicio\":\"2026-01-01\",\"data_fim\":\"2026-12-31\"}},\"itens\":[{\"descricao\":\"Synthetic communication service\",\"unidade\":\"MES\",\"quantidade\":\"1.0000\",\"valor_unitario\":\"99.90\",\"valor_total\":\"99.90\",\"indicador_total\":1,\"classe_imposto\":\"REF123456\"}]}",cfg)
task <- emitter_issue_nfcom(clients[[3]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "49") {
body <- wm_from_json(api2_nfcom_issuance_EmitterCancelNfcomPayload,"{\"chave\":\"123456ab12cd34ef5600000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg)
task <- emitter_cancel_nfcom(clients[[3]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "50") {
body <- wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayload,"{\"ambiente\":2,\"rps\":[{\"servico\":{\"discriminacao\":\"Synthetic service\",\"valor_servicos\":\"100.00\",\"iss_retido\":2}}]}",cfg)
task <- emitter_issue_nfse(clients[[3]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "51") {
body <- wm_from_json(api2_nfse_issuance_EmitterCancelNfsePayload,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\"}",cfg)
task <- emitter_cancel_nfse(clients[[3]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "52") {
body <- wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayload,"{\"ambiente\":2,\"motivo\":1,\"chave\":\"00000000000000000000000000000000000000000000000000\",\"rps\":[{\"servico\":{\"classe_imposto\":\"SYNTHETIC\",\"discriminacao\":\"Synthetic service\",\"valor_servicos\":\"1.00\"}}]}",cfg)
task <- emitter_replace_nfse(clients[[3]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "53") {
body <- wm_from_json(api2_monitor_documents_MonitorSearchRequest,"{\"modelo\":\"nfe\",\"filtros\":{\"empresa_uuid\":[\"00000000-0000-0000-0000-000000000000\"],\"categoria\":[\"recebidas\"],\"status\":[\"aprovado\"]},\"filtros_modelo\":{\"operacao\":[\"0\",1]},\"paginacao\":\"cursor\"}",cfg)
query <- wm_from_json(api2_monitor_documents_MonitorSearchDocumentsQuery,"{}",cfg)
task <- monitor_search_documents(clients[[4]],body,query)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "54") {
query <- wm_from_json(api2_monitor_documents_MonitorGetDocumentQuery,"{}",cfg)
task <- monitor_get_document(clients[[4]],"00000000-0000-4000-8000-000000000001",query)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "55") {
task <- monitor_list_document_events(clients[[4]],"00000000-0000-4000-8000-000000000001")
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "56") {
body <- wm_from_json(api2_monitor_documents_MonitorManifestationRequest,"{\"evento\":1,\"manifestacao\":3,\"justificativa\":\"Synthetic justified operation\"}",cfg)
task <- monitor_manifest_document(clients[[4]],"00000000-0000-4000-8000-000000000001",body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "57") {
query <- wm_from_json(api2_monitor_documents_MonitorListReportsQuery,"{}",cfg)
task <- monitor_list_reports(clients[[4]],query)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "58") {
task <- monitor_download_report(clients[[4]],"00000000-0000-4000-8000-000000000001")
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "59") {
body <- wm_from_json(api2_monitor_documents_MonitorImportRequest,"{\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"chave\":\"00000000000000000000000000000000000000000000\"}",cfg)
task <- monitor_import_document(clients[[4]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "60") {
task <- monitor_get_import_status(clients[[4]],"00000000-0000-4000-8000-000000000001")
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "61") {
body <- wm_from_json(api2_monitor_management_MonitorCreateCompanyRequest,"{\"cnpj\":\"00000000000000\",\"razao_social\":\"Synthetic company\",\"cep\":\"01001000\",\"certificado_base64\":\"PHRlc3QvPg==\",\"certificado_senha\":\"synthetic-placeholder\"}",cfg)
task <- monitor_create_company(clients[[4]],body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "62") {
body <- wm_from_json(api2_monitor_management_MonitorUpdateCompanyRequest,"{\"modelos_download\":[]}",cfg)
task <- monitor_update_company(clients[[4]],"00000000-0000-4000-8000-000000000001",body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "63") {
body <- wm_from_json(api2_monitor_management_MonitorCreateMunicipalityRequest,"{\"codigo_ibge\":\"3550308\"}",cfg)
task <- monitor_create_company_municipality(clients[[4]],"00000000-0000-4000-8000-000000000001",body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "64") {
body <- wm_from_json(api2_monitor_management_MonitorUpdateMunicipalityRequest,"{}",cfg)
task <- monitor_update_company_municipality(clients[[4]],"00000000-0000-4000-8000-000000000001","00000000-0000-4000-8000-000000000001",body)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "65") {
task <- monitor_delete_company_municipality(clients[[4]],"00000000-0000-4000-8000-000000000001","00000000-0000-4000-8000-000000000001")
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "66") {
query <- wm_from_json(api2_monitor_reads_MonitorListCompaniesQuery,"{}",cfg)
task <- monitor_list_companies(clients[[4]],query)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "67") {
task <- monitor_get_company(clients[[4]],"00000000-0000-4000-8000-000000000001")
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "68") {
query <- wm_from_json(api2_monitor_reads_MonitorListCompanyMunicipalitiesQuery,"{}",cfg)
task <- monitor_list_company_municipalities(clients[[4]],"00000000-0000-4000-8000-000000000001",query)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "69") {
task <- monitor_get_company_municipality(clients[[4]],"00000000-0000-4000-8000-000000000001","00000000-0000-4000-8000-000000000001")
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "70") {
query <- wm_from_json(api2_monitor_reads_MonitorListAvailableMunicipalitiesQuery,"{}",cfg)
task <- monitor_list_available_municipalities(clients[[4]],query)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "71") {
query <- wm_from_json(api2_monitor_reads_MonitorGetDownloadStatisticsQuery,"{}",cfg)
task <- monitor_get_download_statistics(clients[[4]],query)
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(wm_to_json(result$value))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "72") {
task <- nfe_download_danfe(clients[[5]],"00000000-0000-4000-8000-000000000001",wm_file_auth("company"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "73") {
task <- nfe_download_simple_danfe(clients[[5]],"00000000-0000-4000-8000-000000000001",wm_file_auth("company"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "74") {
task <- nfe_download_label_danfe(clients[[5]],"00000000-0000-4000-8000-000000000001",wm_file_auth("company"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "75") {
task <- nfe_download_correction_pdf(clients[[5]],"00000000-0000-4000-8000-000000000001",wm_file_auth("company"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "76") {
task <- nfe_download_correction_pdf_sequence(clients[[5]],"00000000-0000-4000-8000-000000000001",1L,wm_file_auth("company"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "77") {
query <- wm_from_json(api1_files_NfeDownloadXmlQuery,"{}",cfg)
task <- nfe_download_xml(clients[[5]],"00000000-0000-4000-8000-000000000001",query,wm_file_auth("company"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "78") {
query <- wm_from_json(api1_files_NfeDownloadCancellationXmlQuery,"{}",cfg)
task <- nfe_download_cancellation_xml(clients[[5]],"00000000-0000-4000-8000-000000000001",query,wm_file_auth("company"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "79") {
query <- wm_from_json(api1_files_NfeDownloadCorrectionXmlQuery,"{}",cfg)
task <- nfe_download_correction_xml(clients[[5]],"00000000-0000-4000-8000-000000000001",query,wm_file_auth("company"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "80") {
query <- wm_from_json(api1_files_NfeDownloadCorrectionXmlSequenceQuery,"{}",cfg)
task <- nfe_download_correction_xml_sequence(clients[[5]],"00000000-0000-4000-8000-000000000001",1L,query,wm_file_auth("company"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "81") {
query <- wm_from_json(api1_files_NfeDownloadManifestationXmlQuery,"{}",cfg)
task <- nfe_download_manifestation_xml(clients[[5]],"00000000-0000-4000-8000-000000000001",query,wm_file_auth("company"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "82") {
query <- wm_from_json(api1_files_NfeDownloadPaymentEventXmlQuery,"{}",cfg)
task <- nfe_download_payment_event_xml(clients[[5]],"00000000-0000-4000-8000-000000000001",query,wm_file_auth("company"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "83") {
query <- wm_from_json(api1_files_NfeDownloadPaymentEventXmlSequenceQuery,"{}",cfg)
task <- nfe_download_payment_event_xml_sequence(clients[[5]],"00000000-0000-4000-8000-000000000001",1L,query,wm_file_auth("company"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "84") {
query <- wm_from_json(api1_files_NfeDownloadIbsCbsEventXmlQuery,"{}",cfg)
stopifnot(inherits(try(nfe_download_ibs_cbs_event_xml(clients[[5]],"00000000-0000-4000-8000-000000000001",query,wm_file_auth("company")),silent=TRUE),"try-error"));cat("blocked")
}
if (a[[1]] == "85") {
task <- fiscal_download_report(clients[[5]],"00000000-0000-4000-8000-000000000001",wm_file_auth("public_report"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "86") {
task <- file_get_nfse_xml(clients[[6]],"00000000-0000-4000-8000-000000000001",wm_file_auth("issuer"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "87") {
task <- file_get_nfse_pdf(clients[[6]],"00000000-0000-4000-8000-000000000001",wm_file_auth("issuer"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "88") {
task <- file_get_nfse_rps_pdf(clients[[6]],"00000000-0000-4000-8000-000000000001",wm_file_auth("issuer"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "89") {
task <- file_get_cte_xml(clients[[6]],"00000000-0000-4000-8000-000000000001",wm_file_auth("issuer"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "90") {
task <- file_get_cte_cancel_xml(clients[[6]],"00000000-0000-4000-8000-000000000001",wm_file_auth("issuer"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "91") {
task <- file_get_cte_pdf(clients[[6]],"00000000-0000-4000-8000-000000000001",wm_file_auth("issuer"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "92") {
task <- file_get_cte_correction_xml(clients[[6]],"00000000-0000-4000-8000-000000000001",wm_file_auth("issuer"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "93") {
task <- file_get_cte_correction_pdf(clients[[6]],"00000000-0000-4000-8000-000000000001",wm_file_auth("issuer"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "94") {
task <- file_get_mdfe_xml(clients[[6]],"00000000-0000-4000-8000-000000000001",wm_file_auth("issuer"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "95") {
task <- file_get_mdfe_pdf(clients[[6]],"00000000-0000-4000-8000-000000000001",wm_file_auth("issuer"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "96") {
task <- file_get_nfcom_xml(clients[[6]],"00000000-0000-4000-8000-000000000001",wm_file_auth("issuer"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "97") {
task <- file_get_nfcom_cancel_xml(clients[[6]],"00000000-0000-4000-8000-000000000001",wm_file_auth("issuer"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "98") {
task <- file_get_nfcom_pdf(clients[[6]],"00000000-0000-4000-8000-000000000001",wm_file_auth("issuer"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "99") {
task <- file_get_dce_xml(clients[[6]],"00000000-0000-4000-8000-000000000001",wm_file_auth("issuer"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "100") {
task <- file_get_dce_cancel_xml(clients[[6]],"00000000-0000-4000-8000-000000000001",wm_file_auth("issuer"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "101") {
task <- file_get_dce_pdf(clients[[6]],"00000000-0000-4000-8000-000000000001",wm_file_auth("issuer"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
if (a[[1]] == "102") {
task <- fiscal_download_report_v2(clients[[6]],"00000000-0000-4000-8000-000000000001",wm_file_auth("issuer"))
result <- wm_await(task)
if(!is.null(result$error)) stop(wm_error_kind(result$error))
stopifnot(result$ready,!is.null(result$value))
cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))
wm_close(result$value);wm_close(task)
}
for(x in clients) wm_close(x)
