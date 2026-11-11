library(webmania)
cfg <- wm_config()
checked <- 0L
x <- try(wm_from_json(api1_b2b_B2bError,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_b2b::B2bError")
stopifnot(inherits(x,"api1_b2b.B2bError")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_b2b_ResellerCreateCompaniesRequest,"{\"quantidade\":1}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_b2b::ResellerCreateCompaniesRequest")
stopifnot(inherits(x,"api1_b2b.ResellerCreateCompaniesRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_b2b_ResellerCompanyCredentials,"{\"consumer_key\":\"INERT_TEST_PLACEHOLDER\",\"consumer_secret\":\"INERT_TEST_PLACEHOLDER\",\"access_token\":\"INERT_TEST_PLACEHOLDER\",\"access_token_secret\":\"INERT_TEST_PLACEHOLDER\",\"bearer_access_token\":\"\",\"bearer_access_token_status\":\"pending\",\"bearer_access_token_pending\":true}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_b2b::ResellerCompanyCredentials")
stopifnot(inherits(x,"api1_b2b.ResellerCompanyCredentials")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_b2b_ResellerCreatedCompany,"{\"id\":1,\"consumer_key\":\"INERT_TEST_PLACEHOLDER\",\"consumer_secret\":\"INERT_TEST_PLACEHOLDER\",\"access_token\":\"INERT_TEST_PLACEHOLDER\",\"access_token_secret\":\"INERT_TEST_PLACEHOLDER\",\"bearer_access_token\":\"\",\"bearer_access_token_status\":\"pending\",\"bearer_access_token_pending\":true,\"future_field\":{\"preserved\":true}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_b2b::ResellerCreatedCompany")
stopifnot(inherits(x,"api1_b2b.ResellerCreatedCompany")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_b2b_ResellerCompany,"{\"id\":1,\"cnpj\":\"\",\"razao_social\":null,\"credenciais\":{\"consumer_key\":\"INERT_TEST_PLACEHOLDER\",\"consumer_secret\":\"INERT_TEST_PLACEHOLDER\",\"access_token\":\"INERT_TEST_PLACEHOLDER\",\"access_token_secret\":\"INERT_TEST_PLACEHOLDER\",\"bearer_access_token\":\"\",\"bearer_access_token_status\":\"pending\",\"bearer_access_token_pending\":true}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_b2b::ResellerCompany")
stopifnot(inherits(x,"api1_b2b.ResellerCompany")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_b2b_ResellerCompanyProcessedRequests,"{\"cnpj\":\"00000000000000\",\"notas_processadas\":12}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_b2b::ResellerCompanyProcessedRequests")
stopifnot(inherits(x,"api1_b2b.ResellerCompanyProcessedRequests")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_b2b_ResellerProcessedRequests,"{\"total_notas_processadas\":0,\"empresas\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_b2b::ResellerProcessedRequests")
stopifnot(inherits(x,"api1_b2b.ResellerProcessedRequests")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_b2b_B2bFunctionalError,"{\"error\":\"Synthetic functional error\",\"success\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_b2b::B2bFunctionalError")
stopifnot(inherits(x,"api1_b2b.B2bFunctionalError")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_b2b_B2bV1GetProcessedRequestsQuery,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_b2b::B2bV1GetProcessedRequestsQuery")
stopifnot(inherits(x,"api1_b2b.B2bV1GetProcessedRequestsQuery")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_files_Api1Error,"{\"error\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_files::Api1Error")
stopifnot(inherits(x,"api1_files.Api1Error")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_files_Api1ErrorError,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_files::Api1ErrorError")
stopifnot(inherits(x,"api1_files.Api1ErrorError")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_files_Api1ErrorLogVariant1,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_files::Api1ErrorLogVariant1")
stopifnot(inherits(x,"api1_files.Api1ErrorLogVariant1")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_files_Api1ErrorLog,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_files::Api1ErrorLog")
stopifnot(inherits(x,"api1_files.Api1ErrorLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_files_NfeDownloadXmlQuery,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_files::NfeDownloadXmlQuery")
stopifnot(inherits(x,"api1_files.NfeDownloadXmlQuery")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_files_NfeDownloadCancellationXmlQuery,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_files::NfeDownloadCancellationXmlQuery")
stopifnot(inherits(x,"api1_files.NfeDownloadCancellationXmlQuery")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_files_NfeDownloadCorrectionXmlQuery,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_files::NfeDownloadCorrectionXmlQuery")
stopifnot(inherits(x,"api1_files.NfeDownloadCorrectionXmlQuery")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_files_NfeDownloadCorrectionXmlSequenceQuery,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_files::NfeDownloadCorrectionXmlSequenceQuery")
stopifnot(inherits(x,"api1_files.NfeDownloadCorrectionXmlSequenceQuery")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_files_NfeDownloadManifestationXmlQuery,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_files::NfeDownloadManifestationXmlQuery")
stopifnot(inherits(x,"api1_files.NfeDownloadManifestationXmlQuery")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_files_NfeDownloadPaymentEventXmlQuery,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_files::NfeDownloadPaymentEventXmlQuery")
stopifnot(inherits(x,"api1_files.NfeDownloadPaymentEventXmlQuery")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_files_NfeDownloadPaymentEventXmlSequenceQuery,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_files::NfeDownloadPaymentEventXmlSequenceQuery")
stopifnot(inherits(x,"api1_files.NfeDownloadPaymentEventXmlSequenceQuery")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_files_NfeDownloadIbsCbsEventXmlQuery,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_files::NfeDownloadIbsCbsEventXmlQuery")
stopifnot(inherits(x,"api1_files.NfeDownloadIbsCbsEventXmlQuery")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_Api1Error,"{\"error\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::Api1Error")
stopifnot(inherits(x,"api1_fiscal.Api1Error")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_Api1ErrorError,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::Api1ErrorError")
stopifnot(inherits(x,"api1_fiscal.Api1ErrorError")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_Api1ErrorLogVariant1,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::Api1ErrorLogVariant1")
stopifnot(inherits(x,"api1_fiscal.Api1ErrorLogVariant1")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_Api1ErrorLog,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::Api1ErrorLog")
stopifnot(inherits(x,"api1_fiscal.Api1ErrorLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_SefazLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::SefazLog")
stopifnot(inherits(x,"api1_fiscal.SefazLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_SefazLogEventoVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::SefazLogEventoVariant0")
stopifnot(inherits(x,"api1_fiscal.SefazLogEventoVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_SefazLogEventoVariant1Item,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::SefazLogEventoVariant1Item")
stopifnot(inherits(x,"api1_fiscal.SefazLogEventoVariant1Item")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_SefazLogEvento,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::SefazLogEvento")
stopifnot(inherits(x,"api1_fiscal.SefazLogEvento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeDocument,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"status\":\"new_provider_state\",\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeDocument")
stopifnot(inherits(x,"api1_fiscal.NfeDocument")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeDocumentLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeDocumentLog")
stopifnot(inherits(x,"api1_fiscal.NfeDocumentLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeDocumentLogCancelamento,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeDocumentLogCancelamento")
stopifnot(inherits(x,"api1_fiscal.NfeDocumentLogCancelamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeEventResult,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeEventResult")
stopifnot(inherits(x,"api1_fiscal.NfeEventResult")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeEventResultLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeEventResultLog")
stopifnot(inherits(x,"api1_fiscal.NfeEventResultLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeCancelResult,"{\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeCancelResult")
stopifnot(inherits(x,"api1_fiscal.NfeCancelResult")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeCancelResultLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeCancelResultLog")
stopifnot(inherits(x,"api1_fiscal.NfeCancelResultLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeVoidResult,"{\"xml\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeVoidResult")
stopifnot(inherits(x,"api1_fiscal.NfeVoidResult")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeVoidResultLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeVoidResultLog")
stopifnot(inherits(x,"api1_fiscal.NfeVoidResultLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeCertificateValidity,"{\"expiration\":25,\"future_field\":\"preserved\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeCertificateValidity")
stopifnot(inherits(x,"api1_fiscal.NfeCertificateValidity")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeSefazStatus,"{\"status\":\"online\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeSefazStatus")
stopifnot(inherits(x,"api1_fiscal.NfeSefazStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeLookupRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeLookupRequest")
stopifnot(inherits(x,"api1_fiscal.NfeLookupRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeCorrectionRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"correcao\":\"00000000-0000-4000-8000-000000000001\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeCorrectionRequest")
stopifnot(inherits(x,"api1_fiscal.NfeCorrectionRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeManifestationRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":2,\"evento\":\"210240\",\"justificativa\":\"The goods were never delivered.\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeManifestationRequest")
stopifnot(inherits(x,"api1_fiscal.NfeManifestationRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeCancelRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"motivo\":\"00000000-0000-4000-8000-000000000001\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeCancelRequest")
stopifnot(inherits(x,"api1_fiscal.NfeCancelRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeVoidRequest,"{\"sequencia\":\"00000000\",\"motivo\":\"00000000-0000-4000-8000-000000000001\",\"ambiente\":1,\"serie\":\"0\",\"modelo\":\"1\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeVoidRequest")
stopifnot(inherits(x,"api1_fiscal.NfeVoidRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfePaymentEventItem,"{\"forma_pagamento\":\"01\",\"valor_pagamento\":\"0.00\",\"data_pagamento\":\"2026-10-25\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfePaymentEventItem")
stopifnot(inherits(x,"api1_fiscal.NfePaymentEventItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfePaymentEventRequest,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"pagamento\":{\"forma_pagamento\":\"01\",\"valor_pagamento\":\"0.00\",\"data_pagamento\":\"2026-10-25\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfePaymentEventRequest")
stopifnot(inherits(x,"api1_fiscal.NfePaymentEventRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfePaymentEventCancelRequest,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfePaymentEventCancelRequest")
stopifnot(inherits(x,"api1_fiscal.NfePaymentEventCancelRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventCancelRequest,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeIbsCbsEventCancelRequest")
stopifnot(inherits(x,"api1_fiscal.NfeIbsCbsEventCancelRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassDeleteRequest,"{\"referencia\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassDeleteRequest")
stopifnot(inherits(x,"api1_fiscal.TaxClassDeleteRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassDeleteRequestReferencia,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassDeleteRequestReferencia")
stopifnot(inherits(x,"api1_fiscal.TaxClassDeleteRequestReferencia")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassDeleteItem,"{\"referencia\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassDeleteItem")
stopifnot(inherits(x,"api1_fiscal.TaxClassDeleteItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassNoResults,"{\"msg\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassNoResults")
stopifnot(inherits(x,"api1_fiscal.TaxClassNoResults")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassListItem,"{\"type\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassListItem")
stopifnot(inherits(x,"api1_fiscal.TaxClassListItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassListIcms,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassListIcms")
stopifnot(inherits(x,"api1_fiscal.TaxClassListIcms")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassListStateRate,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassListStateRate")
stopifnot(inherits(x,"api1_fiscal.TaxClassListStateRate")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassListStateRatesVariant0Item,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassListStateRatesVariant0Item")
stopifnot(inherits(x,"api1_fiscal.TaxClassListStateRatesVariant0Item")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassListStateRates,"[]",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassListStateRates")
stopifnot(inherits(x,"api1_fiscal.TaxClassListStateRates")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G043,"{\"estado\":\"sy\",\"codigo\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G043")
stopifnot(inherits(x,"api1_fiscal.G043")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassListIcmsPresumedCredit,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassListIcmsPresumedCredit")
stopifnot(inherits(x,"api1_fiscal.TaxClassListIcmsPresumedCredit")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassListItemIcms,"[]",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassListItemIcms")
stopifnot(inherits(x,"api1_fiscal.TaxClassListItemIcms")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassListIpi,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassListIpi")
stopifnot(inherits(x,"api1_fiscal.TaxClassListIpi")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassListPis,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassListPis")
stopifnot(inherits(x,"api1_fiscal.TaxClassListPis")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassListItemPis,"[]",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassListItemPis")
stopifnot(inherits(x,"api1_fiscal.TaxClassListItemPis")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassListCofins,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassListCofins")
stopifnot(inherits(x,"api1_fiscal.TaxClassListCofins")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassListItemCofins,"[]",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassListItemCofins")
stopifnot(inherits(x,"api1_fiscal.TaxClassListItemCofins")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassListIssqn,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassListIssqn")
stopifnot(inherits(x,"api1_fiscal.TaxClassListIssqn")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassListIbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassListIbsCbs")
stopifnot(inherits(x,"api1_fiscal.TaxClassListIbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassListIbsCbsDeferral,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassListIbsCbsDeferral")
stopifnot(inherits(x,"api1_fiscal.TaxClassListIbsCbsDeferral")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassListPresumedCredit,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassListPresumedCredit")
stopifnot(inherits(x,"api1_fiscal.TaxClassListPresumedCredit")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassListItemIbsCbs,"[]",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassListItemIbsCbs")
stopifnot(inherits(x,"api1_fiscal.TaxClassListItemIbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G002,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G002")
stopifnot(inherits(x,"api1_fiscal.G002")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G002Log,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G002Log")
stopifnot(inherits(x,"api1_fiscal.G002Log")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIssueRequest,"{\"modelo\":\"1\",\"operacao\":1,\"natureza_operacao\":\"Synthetic sale\",\"finalidade\":1,\"ambiente\":2,\"cliente\":{\"cpf\":\"000.000.000-00\",\"nome_completo\":\"Synthetic person\",\"endereco\":\"Synthetic street\",\"numero\":\"1\",\"bairro\":\"Synthetic district\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\",\"cep\":\"01001-000\"},\"produtos\":[{\"nome\":\"Synthetic item\",\"codigo\":\"0001\",\"ncm\":\"0000.00.00\",\"quantidade\":\"1.0000\",\"unidade\":\"UN\",\"subtotal\":\"0.10\",\"total\":\"0.10\",\"origem\":0,\"impostos\":{\"icms\":{\"codigo_cfop\":\"5102\",\"situacao_tributaria\":\"102\"}}}],\"pedido\":{\"presenca\":1,\"modalidade_frete\":9,\"pagamento\":0,\"forma_pagamento\":\"01\",\"valor_pagamento\":\"0.10\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeIssueRequest")
stopifnot(inherits(x,"api1_fiscal.NfeIssueRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeCustomer,"{\"cpf\":\"000.000.000-00\",\"nome_completo\":\"Synthetic person\",\"endereco\":\"Synthetic street\",\"numero\":\"1\",\"bairro\":\"Synthetic district\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\",\"cep\":\"01001-000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeCustomer")
stopifnot(inherits(x,"api1_fiscal.NfeCustomer")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeProduct,"{\"nome\":\"Synthetic item\",\"codigo\":\"0001\",\"ncm\":\"0000.00.00\",\"quantidade\":\"1.0000\",\"unidade\":\"UN\",\"subtotal\":\"0.10\",\"total\":\"0.10\",\"origem\":0,\"impostos\":{\"icms\":{\"codigo_cfop\":\"5102\",\"situacao_tributaria\":\"102\"}}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeProduct")
stopifnot(inherits(x,"api1_fiscal.NfeProduct")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G069,"{\"icms\":{\"codigo_cfop\":\"5102\",\"situacao_tributaria\":\"102\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G069")
stopifnot(inherits(x,"api1_fiscal.G069")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIcms,"{\"codigo_cfop\":\"5102\",\"situacao_tributaria\":\"102\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeIcms")
stopifnot(inherits(x,"api1_fiscal.NfeIcms")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G091,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G091")
stopifnot(inherits(x,"api1_fiscal.G091")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G092,"{\"situacao_tributaria\":\"sy\",\"codigo_enquadramento\":0,\"aliquota\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G092")
stopifnot(inherits(x,"api1_fiscal.G092")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G093,"{\"situacao_tributaria\":\"sy\",\"aliquota\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G093")
stopifnot(inherits(x,"api1_fiscal.G093")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G094,"{\"situacao_tributaria\":\"sy\",\"aliquota\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G094")
stopifnot(inherits(x,"api1_fiscal.G094")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G095,"{\"codigo_cfop\":\"synt\",\"exigibilidade\":0,\"item_servico\":\"synth\",\"incentivo_fiscal\":\"s\",\"aliquota\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G095")
stopifnot(inherits(x,"api1_fiscal.G095")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G096,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G096")
stopifnot(inherits(x,"api1_fiscal.G096")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G097,"{\"aliquota\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G097")
stopifnot(inherits(x,"api1_fiscal.G097")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G100,"{\"situacao_tributaria\":\"syn\",\"classificacao_tributaria\":\"synthe\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G100")
stopifnot(inherits(x,"api1_fiscal.G100")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G101,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G101")
stopifnot(inherits(x,"api1_fiscal.G101")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G102,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G102")
stopifnot(inherits(x,"api1_fiscal.G102")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G103,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G103")
stopifnot(inherits(x,"api1_fiscal.G103")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G104,"{\"tipo_aplicacao\":\"s\",\"aliquota_efetiva_referencia\":\"0\",\"valor_efetivo_referencia\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G104")
stopifnot(inherits(x,"api1_fiscal.G104")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G105,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G105")
stopifnot(inherits(x,"api1_fiscal.G105")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G106,"{\"classificacao\":\"sy\",\"bc\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G106")
stopifnot(inherits(x,"api1_fiscal.G106")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G108,"{\"valor_ibs\":\"0\",\"valor_cbs\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G108")
stopifnot(inherits(x,"api1_fiscal.G108")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G109,"{\"competencia_apuracao\":\"synthet\",\"valor_ibs\":\"0\",\"valor_cbs\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G109")
stopifnot(inherits(x,"api1_fiscal.G109")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G110,"{\"valor_ibs\":\"0\",\"valor_cbs\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G110")
stopifnot(inherits(x,"api1_fiscal.G110")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G015,"{\"chave\":\"syntheticaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\",\"item\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G015")
stopifnot(inherits(x,"api1_fiscal.G015")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G016,"{\"codigo_anp\":\"synthetic\",\"descricao_anp\":\"synthetic\",\"uf_consumo\":\"sy\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G016")
stopifnot(inherits(x,"api1_fiscal.G016")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G017,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G017")
stopifnot(inherits(x,"api1_fiscal.G017")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G018,"{\"codigo_anvisa\":\"synthetic\",\"pmc\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G018")
stopifnot(inherits(x,"api1_fiscal.G018")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G019,"{\"tipo\":0,\"serie_arma\":\"synthetic\",\"serie_cano\":\"synthetic\",\"descricao\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G019")
stopifnot(inherits(x,"api1_fiscal.G019")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G020,"{\"tipo_operacao\":0,\"chassi\":\"syntheticaaaaaaaa\",\"cor\":\"synt\",\"cor_descricao\":\"synthetic\",\"cv\":\"synt\",\"cilindrada\":\"synt\",\"peso_liquido\":0,\"peso_bruto\":0,\"serie\":\"synthetic\",\"tipo_combustivel\":0,\"numero_motor\":\"synthetic\",\"cmt\":\"0\",\"dist\":\"synt\",\"ano_modelo\":\"synt\",\"ano_fabricacao\":\"synt\",\"tipo_pintura\":\"s\",\"tipo_veiculo\":0,\"especie_veiculo\":0,\"vin\":\"s\",\"condicao_veiculo\":0,\"marca_modelo\":\"synthetic\",\"cor_denatran\":0,\"lotacao\":0,\"restricao\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G020")
stopifnot(inherits(x,"api1_fiscal.G020")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G014,"{\"lote\":\"synthetic\",\"quantidade\":\"0\",\"data_fabricacao\":\"synthetica\",\"data_validade\":\"synthetica\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G014")
stopifnot(inherits(x,"api1_fiscal.G014")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeOrder,"{\"presenca\":1,\"modalidade_frete\":9,\"pagamento\":0,\"forma_pagamento\":\"01\",\"valor_pagamento\":\"0.10\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeOrder")
stopifnot(inherits(x,"api1_fiscal.NfeOrder")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeContributorObservation,"{\"campo\":\"synthetic\",\"texto\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeContributorObservation")
stopifnot(inherits(x,"api1_fiscal.NfeContributorObservation")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeOrderPagamento,"0",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeOrderPagamento")
stopifnot(inherits(x,"api1_fiscal.NfeOrderPagamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeOrderFormaPagamento,"\"01\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeOrderFormaPagamento")
stopifnot(inherits(x,"api1_fiscal.NfeOrderFormaPagamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeOrderDescPagamento,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeOrderDescPagamento")
stopifnot(inherits(x,"api1_fiscal.NfeOrderDescPagamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeOrderDataPagamento,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeOrderDataPagamento")
stopifnot(inherits(x,"api1_fiscal.NfeOrderDataPagamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeOrderCnpjTransacionalPag,"\"00000000000000\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeOrderCnpjTransacionalPag")
stopifnot(inherits(x,"api1_fiscal.NfeOrderCnpjTransacionalPag")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeOrderUfEstabelecimentoPag,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeOrderUfEstabelecimentoPag")
stopifnot(inherits(x,"api1_fiscal.NfeOrderUfEstabelecimentoPag")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeOrderTipoIntegracao,"0",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeOrderTipoIntegracao")
stopifnot(inherits(x,"api1_fiscal.NfeOrderTipoIntegracao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeOrderValorPagamento,"\"0.10\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeOrderValorPagamento")
stopifnot(inherits(x,"api1_fiscal.NfeOrderValorPagamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeOrderCnpjCredenciadora,"\"00000000000000\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeOrderCnpjCredenciadora")
stopifnot(inherits(x,"api1_fiscal.NfeOrderCnpjCredenciadora")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeOrderBandeira,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeOrderBandeira")
stopifnot(inherits(x,"api1_fiscal.NfeOrderBandeira")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeOrderAutorizacao,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeOrderAutorizacao")
stopifnot(inherits(x,"api1_fiscal.NfeOrderAutorizacao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeOrderCnpjBeneficiario,"\"00000000000000\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeOrderCnpjBeneficiario")
stopifnot(inherits(x,"api1_fiscal.NfeOrderCnpjBeneficiario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeOrderIdTerminalPag,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeOrderIdTerminalPag")
stopifnot(inherits(x,"api1_fiscal.NfeOrderIdTerminalPag")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeTransport,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeTransport")
stopifnot(inherits(x,"api1_fiscal.NfeTransport")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G025,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G025")
stopifnot(inherits(x,"api1_fiscal.G025")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G026,"{\"endereco\":\"Endereco sintetico\",\"numero\":\"1\",\"bairro\":\"Bairro sintetico\",\"cidade\":\"Cidade sintetica\",\"nome_estrangeiro\":\"Pessoa sintetica\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G026")
stopifnot(inherits(x,"api1_fiscal.G026")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G027,"{\"endereco\":\"Endereco sintetico\",\"numero\":\"1\",\"bairro\":\"Bairro sintetico\",\"cidade\":\"Cidade sintetica\",\"nome_estrangeiro\":\"Pessoa sintetica\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G027")
stopifnot(inherits(x,"api1_fiscal.G027")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G028,"{\"numero\":\"synthetic\",\"valor\":\"0\",\"desconto\":\"0\",\"valor_liquido\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G028")
stopifnot(inherits(x,"api1_fiscal.G028")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G029,"{\"vencimento\":\"synthetica\",\"valor\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G029")
stopifnot(inherits(x,"api1_fiscal.G029")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G030,"{\"uf_embarque\":\"sy\",\"local_embarque\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G030")
stopifnot(inherits(x,"api1_fiscal.G030")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G031,"{\"guia_transito\":{\"tipo\":0,\"uf\":\"sy\",\"numero\":\"synthetic\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G031")
stopifnot(inherits(x,"api1_fiscal.G031")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G032,"{\"numero_receituario\":\"synthetic\",\"cpf_responsavel_tecnico\":\"00000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G032")
stopifnot(inherits(x,"api1_fiscal.G032")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G033,"{\"tipo\":0,\"uf\":\"sy\",\"numero\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G033")
stopifnot(inherits(x,"api1_fiscal.G033")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G034,"{\"tipo_ente_governamental\":\"s\",\"percentual_redutor\":\"0\",\"tipo_operacao_governamental\":\"s\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G034")
stopifnot(inherits(x,"api1_fiscal.G034")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIssueRequestNfeReferenciada,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeIssueRequestNfeReferenciada")
stopifnot(inherits(x,"api1_fiscal.NfeIssueRequestNfeReferenciada")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIssueRequestCteReferenciada,"\"00000000000000000000000000000000000000000000\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeIssueRequestCteReferenciada")
stopifnot(inherits(x,"api1_fiscal.NfeIssueRequestCteReferenciada")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G006,"{\"modelo\":\"sy\",\"n_ecf\":\"synthetic\",\"n_coo\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G006")
stopifnot(inherits(x,"api1_fiscal.G006")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIssueRequestEcfReferenciada,"{\"modelo\":\"sy\",\"n_ecf\":\"synthetic\",\"n_coo\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeIssueRequestEcfReferenciada")
stopifnot(inherits(x,"api1_fiscal.NfeIssueRequestEcfReferenciada")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G007,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G007")
stopifnot(inherits(x,"api1_fiscal.G007")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIssueRequestNfRuralReferenciada,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeIssueRequestNfRuralReferenciada")
stopifnot(inherits(x,"api1_fiscal.NfeIssueRequestNfRuralReferenciada")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G068,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G068")
stopifnot(inherits(x,"api1_fiscal.G068")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G002LogCancelamento,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G002LogCancelamento")
stopifnot(inherits(x,"api1_fiscal.G002LogCancelamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G003,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G003")
stopifnot(inherits(x,"api1_fiscal.G003")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G004,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G004")
stopifnot(inherits(x,"api1_fiscal.G004")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G005,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G005")
stopifnot(inherits(x,"api1_fiscal.G005")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G005NfeReferenciada,"\"00000000000000000000000000000000000000000000\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G005NfeReferenciada")
stopifnot(inherits(x,"api1_fiscal.G005NfeReferenciada")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G005CteReferenciada,"\"00000000000000000000000000000000000000000000\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G005CteReferenciada")
stopifnot(inherits(x,"api1_fiscal.G005CteReferenciada")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G005EcfReferenciada,"{\"modelo\":\"sy\",\"n_ecf\":\"synthetic\",\"n_coo\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G005EcfReferenciada")
stopifnot(inherits(x,"api1_fiscal.G005EcfReferenciada")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G005NfRuralReferenciada,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G005NfRuralReferenciada")
stopifnot(inherits(x,"api1_fiscal.G005NfRuralReferenciada")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G008,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G008")
stopifnot(inherits(x,"api1_fiscal.G008")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G009,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G009")
stopifnot(inherits(x,"api1_fiscal.G009")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G010,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G010")
stopifnot(inherits(x,"api1_fiscal.G010")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G011,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G011")
stopifnot(inherits(x,"api1_fiscal.G011")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G012,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G012")
stopifnot(inherits(x,"api1_fiscal.G012")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G013,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G013")
stopifnot(inherits(x,"api1_fiscal.G013")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G021,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G021")
stopifnot(inherits(x,"api1_fiscal.G021")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G022,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G022")
stopifnot(inherits(x,"api1_fiscal.G022")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G022Pagamento,"0",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G022Pagamento")
stopifnot(inherits(x,"api1_fiscal.G022Pagamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G022FormaPagamento,"\"01\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G022FormaPagamento")
stopifnot(inherits(x,"api1_fiscal.G022FormaPagamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G022DescPagamento,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G022DescPagamento")
stopifnot(inherits(x,"api1_fiscal.G022DescPagamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G022DataPagamento,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G022DataPagamento")
stopifnot(inherits(x,"api1_fiscal.G022DataPagamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G022CnpjTransacionalPag,"\"00000000000000\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G022CnpjTransacionalPag")
stopifnot(inherits(x,"api1_fiscal.G022CnpjTransacionalPag")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G022UfEstabelecimentoPag,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G022UfEstabelecimentoPag")
stopifnot(inherits(x,"api1_fiscal.G022UfEstabelecimentoPag")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G022TipoIntegracao,"0",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G022TipoIntegracao")
stopifnot(inherits(x,"api1_fiscal.G022TipoIntegracao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G022ValorPagamento,"\"0\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G022ValorPagamento")
stopifnot(inherits(x,"api1_fiscal.G022ValorPagamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G022CnpjCredenciadora,"\"00000000000000\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G022CnpjCredenciadora")
stopifnot(inherits(x,"api1_fiscal.G022CnpjCredenciadora")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G022Bandeira,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G022Bandeira")
stopifnot(inherits(x,"api1_fiscal.G022Bandeira")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G022Autorizacao,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G022Autorizacao")
stopifnot(inherits(x,"api1_fiscal.G022Autorizacao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G022CnpjBeneficiario,"\"00000000000000\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G022CnpjBeneficiario")
stopifnot(inherits(x,"api1_fiscal.G022CnpjBeneficiario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G022IdTerminalPag,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G022IdTerminalPag")
stopifnot(inherits(x,"api1_fiscal.G022IdTerminalPag")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G023,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G023")
stopifnot(inherits(x,"api1_fiscal.G023")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G024,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G024")
stopifnot(inherits(x,"api1_fiscal.G024")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G035,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G035")
stopifnot(inherits(x,"api1_fiscal.G035")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G037,"{\"tipo_tributacao\":\"synthetic\",\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"codigo_cfop\":\"synt\",\"situacao_tributaria\":\"syn\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G037")
stopifnot(inherits(x,"api1_fiscal.G037")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G038,"{\"estado\":\"sy\",\"aliquota\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G038")
stopifnot(inherits(x,"api1_fiscal.G038")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G039,"{\"estado\":\"sy\",\"aliquota\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G039")
stopifnot(inherits(x,"api1_fiscal.G039")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G040,"{\"estado\":\"sy\",\"aliquota\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G040")
stopifnot(inherits(x,"api1_fiscal.G040")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G041,"{\"estado\":\"sy\",\"aliquota\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G041")
stopifnot(inherits(x,"api1_fiscal.G041")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G042,"{\"estado\":\"sy\",\"aliquota\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G042")
stopifnot(inherits(x,"api1_fiscal.G042")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G044,"{\"estado\":\"sy\",\"codigo_beneficio_fiscal\":\"syntheti\",\"aliquota\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G044")
stopifnot(inherits(x,"api1_fiscal.G044")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G045,"{\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"situacao_tributaria\":\"sy\",\"codigo_enquadramento\":\"syn\",\"aliquota\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G045")
stopifnot(inherits(x,"api1_fiscal.G045")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G046,"{\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"situacao_tributaria\":\"sy\",\"aliquota\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G046")
stopifnot(inherits(x,"api1_fiscal.G046")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G047,"{\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"situacao_tributaria\":\"sy\",\"aliquota\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G047")
stopifnot(inherits(x,"api1_fiscal.G047")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G048,"{\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"codigo_cfop\":\"synt\",\"exigibilidade\":\"s\",\"item_servico\":\"synth\",\"incentivo_fiscal\":\"s\",\"aliquota\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G048")
stopifnot(inherits(x,"api1_fiscal.G048")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G049,"{\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"situacao_tributaria\":\"syn\",\"classificacao_tributaria\":\"synthe\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G049")
stopifnot(inherits(x,"api1_fiscal.G049")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G050,"{\"aliquota_diferimento\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G050")
stopifnot(inherits(x,"api1_fiscal.G050")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G051,"{\"classificacao\":\"1\",\"aliquota_ibs\":\"0\",\"aliquota_cbs\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G051")
stopifnot(inherits(x,"api1_fiscal.G051")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G052,"{\"descricao\":\"synthetic\",\"tipo\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G052")
stopifnot(inherits(x,"api1_fiscal.G052")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G053,"{\"situacao_tributaria\":\"syn\",\"classificacao_tributaria\":\"synthe\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G053")
stopifnot(inherits(x,"api1_fiscal.G053")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G054,"{\"aliquota_diferimento\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G054")
stopifnot(inherits(x,"api1_fiscal.G054")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G055,"{\"codigo_servico\":\"synth\",\"natureza_operacao\":\"s\",\"exigibilidade_iss\":\"s\",\"iss_retido\":\"s\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G055")
stopifnot(inherits(x,"api1_fiscal.G055")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G056,"{\"codigo_cnae\":\"synthet\",\"local_prestacao\":\"s\",\"iss_retido\":\"s\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G056")
stopifnot(inherits(x,"api1_fiscal.G056")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G057,"{\"codigo_servico\":\"synth\",\"tipo_tributacao\":\"s\",\"iss_retido\":\"s\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G057")
stopifnot(inherits(x,"api1_fiscal.G057")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G058,"{\"cfps\":[],\"id_cnae\":\"synth\",\"situacao_tributaria\":\"sy\",\"iss_retido\":\"s\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G058")
stopifnot(inherits(x,"api1_fiscal.G058")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G059,"{\"cenario\":\"s\",\"codigo_cfps\":\"synt\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G059")
stopifnot(inherits(x,"api1_fiscal.G059")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G060,"{\"codigo_servico\":\"synth\",\"regime_recolhimento\":\"sy\",\"forma_recolhimento\":\"sy\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G060")
stopifnot(inherits(x,"api1_fiscal.G060")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G061,"{\"codigo_servico\":\"synth\",\"iss_retido\":\"s\",\"tributacao\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G061")
stopifnot(inherits(x,"api1_fiscal.G061")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G062,"{\"cenario\":0,\"exigibilidade_iss\":\"s\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G062")
stopifnot(inherits(x,"api1_fiscal.G062")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G063,"{\"codigo_servico\":\"synth\",\"iss_retido\":\"s\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G063")
stopifnot(inherits(x,"api1_fiscal.G063")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G064,"{\"tipo_emissao\":\"s\",\"codigo_servico\":\"synthe\",\"tributacao_iss\":0,\"retencao_iss\":\"s\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G064")
stopifnot(inherits(x,"api1_fiscal.G064")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G065,"{\"situacao_tributaria\":\"syn\",\"classificacao_tributaria\":\"synthe\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G065")
stopifnot(inherits(x,"api1_fiscal.G065")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G066,"{\"codigo_servico\":\"synth\",\"tributacao\":0,\"iss_retido\":\"s\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G066")
stopifnot(inherits(x,"api1_fiscal.G066")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G067,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G067")
stopifnot(inherits(x,"api1_fiscal.G067")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G067Referencia,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G067Referencia")
stopifnot(inherits(x,"api1_fiscal.G067Referencia")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G070,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G070")
stopifnot(inherits(x,"api1_fiscal.G070")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G071,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G071")
stopifnot(inherits(x,"api1_fiscal.G071")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G072,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G072")
stopifnot(inherits(x,"api1_fiscal.G072")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G073,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G073")
stopifnot(inherits(x,"api1_fiscal.G073")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G074,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G074")
stopifnot(inherits(x,"api1_fiscal.G074")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G075,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G075")
stopifnot(inherits(x,"api1_fiscal.G075")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G076,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G076")
stopifnot(inherits(x,"api1_fiscal.G076")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G077,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G077")
stopifnot(inherits(x,"api1_fiscal.G077")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G078,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G078")
stopifnot(inherits(x,"api1_fiscal.G078")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G079,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G079")
stopifnot(inherits(x,"api1_fiscal.G079")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G080,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G080")
stopifnot(inherits(x,"api1_fiscal.G080")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G081,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G081")
stopifnot(inherits(x,"api1_fiscal.G081")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G082,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G082")
stopifnot(inherits(x,"api1_fiscal.G082")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G083,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G083")
stopifnot(inherits(x,"api1_fiscal.G083")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G084,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G084")
stopifnot(inherits(x,"api1_fiscal.G084")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G085,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G085")
stopifnot(inherits(x,"api1_fiscal.G085")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G086,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G086")
stopifnot(inherits(x,"api1_fiscal.G086")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G087,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G087")
stopifnot(inherits(x,"api1_fiscal.G087")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G088,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G088")
stopifnot(inherits(x,"api1_fiscal.G088")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G089,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G089")
stopifnot(inherits(x,"api1_fiscal.G089")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G090,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G090")
stopifnot(inherits(x,"api1_fiscal.G090")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G111,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G111")
stopifnot(inherits(x,"api1_fiscal.G111")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G112,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G112")
stopifnot(inherits(x,"api1_fiscal.G112")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G113,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G113")
stopifnot(inherits(x,"api1_fiscal.G113")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeComplementProduct,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeComplementProduct")
stopifnot(inherits(x,"api1_fiscal.NfeComplementProduct")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeComplementTaxes,"{\"ibs_cbs\":{\"situacao_tributaria\":\"000\",\"classificacao_tributaria\":\"000001\",\"base_calculo\":0}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeComplementTaxes")
stopifnot(inherits(x,"api1_fiscal.NfeComplementTaxes")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G115,"{\"codigo_cfop\":\"synt\",\"situacao_tributaria\":\"synt\",\"bc_icms\":\"0\",\"valor_icms\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G115")
stopifnot(inherits(x,"api1_fiscal.G115")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G116,"{\"codigo_cfop\":\"synt\",\"situacao_tributaria\":\"synt\",\"bc_icms_st\":\"0\",\"valor_icms_st\":\"0\",\"aliquota_mva\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G116")
stopifnot(inherits(x,"api1_fiscal.G116")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G117,"{\"codigo_cfop\":\"synt\",\"bc_ipi\":\"0\",\"valor_ipi\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G117")
stopifnot(inherits(x,"api1_fiscal.G117")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G118,"{\"codigo_cfop\":\"synt\",\"exigibilidade\":0,\"item_servico\":\"synth\",\"incentivo_fiscal\":\"s\",\"bc_issqn\":\"0\",\"valor_issqn\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G118")
stopifnot(inherits(x,"api1_fiscal.G118")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeComplementIbsCbs,"{\"situacao_tributaria\":\"000\",\"classificacao_tributaria\":\"000001\",\"base_calculo\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeComplementIbsCbs")
stopifnot(inherits(x,"api1_fiscal.NfeComplementIbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G119,"{\"ndoc_importacao\":\"syntheticaaaaaa\",\"ddoc_importacao\":\"synthetica\",\"uf_desembaraco\":\"sy\",\"local_desembaraco\":\"synthetic\",\"data_desembaraco\":\"synthetica\",\"via_transporte\":\"synthetic\",\"intermediacao\":\"synthetic\",\"fabricante\":\"synthetic\",\"adicao\":\"synthetic\",\"seq_adicao\":\"synth\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G119")
stopifnot(inherits(x,"api1_fiscal.G119")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G114,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G114")
stopifnot(inherits(x,"api1_fiscal.G114")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G114Impostos,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G114Impostos")
stopifnot(inherits(x,"api1_fiscal.G114Impostos")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G120,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G120")
stopifnot(inherits(x,"api1_fiscal.G120")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G120NfeReferenciada,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G120NfeReferenciada")
stopifnot(inherits(x,"api1_fiscal.G120NfeReferenciada")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G121,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G121")
stopifnot(inherits(x,"api1_fiscal.G121")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G122,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G122")
stopifnot(inherits(x,"api1_fiscal.G122")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G122DfeReferenciado,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G122DfeReferenciado")
stopifnot(inherits(x,"api1_fiscal.G122DfeReferenciado")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G123,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G123")
stopifnot(inherits(x,"api1_fiscal.G123")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G124,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G124")
stopifnot(inherits(x,"api1_fiscal.G124")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G125,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G125")
stopifnot(inherits(x,"api1_fiscal.G125")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G127,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G127")
stopifnot(inherits(x,"api1_fiscal.G127")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G127ControleEstoque,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G127ControleEstoque")
stopifnot(inherits(x,"api1_fiscal.G127ControleEstoque")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G128,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G128")
stopifnot(inherits(x,"api1_fiscal.G128")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G128ControleEstoque,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G128ControleEstoque")
stopifnot(inherits(x,"api1_fiscal.G128ControleEstoque")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G129,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G129")
stopifnot(inherits(x,"api1_fiscal.G129")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G129ControleEstoque,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G129ControleEstoque")
stopifnot(inherits(x,"api1_fiscal.G129ControleEstoque")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G130,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G130")
stopifnot(inherits(x,"api1_fiscal.G130")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G131,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G131")
stopifnot(inherits(x,"api1_fiscal.G131")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G131CreditoPresumido,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G131CreditoPresumido")
stopifnot(inherits(x,"api1_fiscal.G131CreditoPresumido")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G132,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G132")
stopifnot(inherits(x,"api1_fiscal.G132")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G132ControleEstoque,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G132ControleEstoque")
stopifnot(inherits(x,"api1_fiscal.G132ControleEstoque")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G133,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G133")
stopifnot(inherits(x,"api1_fiscal.G133")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G134,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G134")
stopifnot(inherits(x,"api1_fiscal.G134")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G134ControleEstoque,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G134ControleEstoque")
stopifnot(inherits(x,"api1_fiscal.G134ControleEstoque")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G135,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G135")
stopifnot(inherits(x,"api1_fiscal.G135")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G135ControleEstoque,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G135ControleEstoque")
stopifnot(inherits(x,"api1_fiscal.G135ControleEstoque")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G136,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G136")
stopifnot(inherits(x,"api1_fiscal.G136")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G137,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G137")
stopifnot(inherits(x,"api1_fiscal.G137")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G138,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G138")
stopifnot(inherits(x,"api1_fiscal.G138")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G139,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G139")
stopifnot(inherits(x,"api1_fiscal.G139")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G140,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G140")
stopifnot(inherits(x,"api1_fiscal.G140")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G141,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G141")
stopifnot(inherits(x,"api1_fiscal.G141")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G142,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G142")
stopifnot(inherits(x,"api1_fiscal.G142")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G143,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G143")
stopifnot(inherits(x,"api1_fiscal.G143")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G144,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G144")
stopifnot(inherits(x,"api1_fiscal.G144")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G145,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G145")
stopifnot(inherits(x,"api1_fiscal.G145")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G146,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G146")
stopifnot(inherits(x,"api1_fiscal.G146")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G147,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G147")
stopifnot(inherits(x,"api1_fiscal.G147")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G148,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G148")
stopifnot(inherits(x,"api1_fiscal.G148")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G149,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G149")
stopifnot(inherits(x,"api1_fiscal.G149")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G150,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G150")
stopifnot(inherits(x,"api1_fiscal.G150")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G151,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G151")
stopifnot(inherits(x,"api1_fiscal.G151")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G151Cnae,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G151Cnae")
stopifnot(inherits(x,"api1_fiscal.G151Cnae")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G152,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G152")
stopifnot(inherits(x,"api1_fiscal.G152")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G153,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::G153")
stopifnot(inherits(x,"api1_fiscal.G153")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_Nfe55IssueRequest,"{\"modelo\":\"1\",\"operacao\":1,\"natureza_operacao\":\"Synthetic sale\",\"finalidade\":1,\"ambiente\":2,\"cliente\":{\"cpf\":\"000.000.000-00\",\"nome_completo\":\"Synthetic person\",\"endereco\":\"Synthetic street\",\"numero\":\"1\",\"bairro\":\"Synthetic district\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\",\"cep\":\"01001-000\"},\"produtos\":[{\"nome\":\"Synthetic item\",\"codigo\":\"0001\",\"ncm\":\"0000.00.00\",\"quantidade\":\"1.0000\",\"unidade\":\"UN\",\"subtotal\":\"0.10\",\"total\":\"0.10\",\"origem\":0,\"impostos\":{\"icms\":{\"codigo_cfop\":\"5102\",\"situacao_tributaria\":\"102\"}}}],\"pedido\":{\"presenca\":1,\"modalidade_frete\":9,\"pagamento\":0,\"forma_pagamento\":\"01\",\"valor_pagamento\":\"0.10\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::Nfe55IssueRequest")
stopifnot(inherits(x,"api1_fiscal.Nfe55IssueRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_Nfe55Customer,"{\"cpf\":\"000.000.000-00\",\"nome_completo\":\"Synthetic person\",\"endereco\":\"Synthetic street\",\"numero\":\"1\",\"bairro\":\"Synthetic district\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\",\"cep\":\"01001-000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::Nfe55Customer")
stopifnot(inherits(x,"api1_fiscal.Nfe55Customer")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_Nfce65IssueRequest,"{\"modelo\":2,\"operacao\":1,\"natureza_operacao\":\"Synthetic sale\",\"finalidade\":1,\"ambiente\":2,\"produtos\":[{\"nome\":\"Synthetic item\",\"codigo\":\"0001\",\"ncm\":\"0000.00.00\",\"quantidade\":\"1.0000\",\"unidade\":\"UN\",\"subtotal\":\"0.10\",\"total\":\"0.10\",\"origem\":0,\"impostos\":{\"icms\":{\"codigo_cfop\":\"5102\",\"situacao_tributaria\":\"102\"}}}],\"pedido\":{\"presenca\":1,\"modalidade_frete\":9,\"pagamento\":0,\"forma_pagamento\":\"01\",\"valor_pagamento\":\"0.10\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::Nfce65IssueRequest")
stopifnot(inherits(x,"api1_fiscal.Nfce65IssueRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeReturnRequest,"{\"classe_imposto\":\"synthetic\",\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":1,\"natureza_operacao\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeReturnRequest")
stopifnot(inherits(x,"api1_fiscal.NfeReturnRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeAdjustmentRequest,"{\"operacao\":0,\"natureza_operacao\":\"synthetic\",\"codigo_cfop\":\"5102\",\"ambiente\":1,\"cliente\":{}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeAdjustmentRequest")
stopifnot(inherits(x,"api1_fiscal.NfeAdjustmentRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeComplementRequest,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"operacao\":1,\"natureza_operacao\":\"Synthetic complement\",\"ambiente\":2,\"cliente\":{\"cpf\":\"000.000.000-00\",\"nome_completo\":\"Synthetic person\",\"endereco\":\"Synthetic street\",\"numero\":\"1\",\"bairro\":\"Synthetic district\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\",\"cep\":\"01001-000\"},\"impostos\":{\"ibs_cbs\":{\"situacao_tributaria\":\"000\",\"classificacao_tributaria\":\"000001\",\"base_calculo\":0}}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeComplementRequest")
stopifnot(inherits(x,"api1_fiscal.NfeComplementRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeProductTaxClass,"{\"descricao\":\"synthetic\",\"icms\":[{\"tipo_tributacao\":\"synthetic\",\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"codigo_cfop\":\"synthetic\",\"situacao_tributaria\":\"syn\"}],\"ipi\":[{\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"situacao_tributaria\":\"sy\",\"codigo_enquadramento\":\"syn\",\"aliquota\":\"0\"}],\"pis\":[{\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"situacao_tributaria\":\"sy\",\"aliquota\":\"0\"}],\"cofins\":[{\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"situacao_tributaria\":\"sy\",\"aliquota\":\"0\"}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeProductTaxClass")
stopifnot(inherits(x,"api1_fiscal.NfeProductTaxClass")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfseTaxClassProvider55,"{\"descricao\":\"synthetic\",\"tipo\":\"nfse\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfseTaxClassProvider55")
stopifnot(inherits(x,"api1_fiscal.NfseTaxClassProvider55")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfseTaxClassProvider56,"{\"descricao\":\"synthetic\",\"tipo\":\"nfse\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfseTaxClassProvider56")
stopifnot(inherits(x,"api1_fiscal.NfseTaxClassProvider56")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfseTaxClassProvider57,"{\"descricao\":\"synthetic\",\"tipo\":\"nfse\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfseTaxClassProvider57")
stopifnot(inherits(x,"api1_fiscal.NfseTaxClassProvider57")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfseTaxClassProvider58,"{\"descricao\":\"synthetic\",\"tipo\":\"nfse\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfseTaxClassProvider58")
stopifnot(inherits(x,"api1_fiscal.NfseTaxClassProvider58")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfseTaxClassProvider60,"{\"descricao\":\"synthetic\",\"tipo\":\"nfse\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfseTaxClassProvider60")
stopifnot(inherits(x,"api1_fiscal.NfseTaxClassProvider60")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfseTaxClassProvider61,"{\"descricao\":\"synthetic\",\"tipo\":\"nfse\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfseTaxClassProvider61")
stopifnot(inherits(x,"api1_fiscal.NfseTaxClassProvider61")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfseTaxClassProvider63,"{\"descricao\":\"synthetic\",\"tipo\":\"nfse\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfseTaxClassProvider63")
stopifnot(inherits(x,"api1_fiscal.NfseTaxClassProvider63")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfseTaxClassProvider64,"{\"descricao\":\"synthetic\",\"tipo\":\"nfse\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfseTaxClassProvider64")
stopifnot(inherits(x,"api1_fiscal.NfseTaxClassProvider64")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfseTaxClassProvider66,"{\"descricao\":\"synthetic\",\"tipo\":\"nfse\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfseTaxClassProvider66")
stopifnot(inherits(x,"api1_fiscal.NfseTaxClassProvider66")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfseServiceTaxClass,"{\"descricao\":\"synthetic\",\"tipo\":\"nfse\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfseServiceTaxClass")
stopifnot(inherits(x,"api1_fiscal.NfseServiceTaxClass")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfcomCommunicationTaxClass,"{\"tipo\":\"nfcom\",\"descricao\":\"Controlled communication class\",\"codigo_classificacao\":\"100101\",\"icms\":{\"situacao_tributaria\":\"40\"},\"pis\":{\"situacao_tributaria\":\"06\"},\"cofins\":{\"situacao_tributaria\":\"06\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfcomCommunicationTaxClass")
stopifnot(inherits(x,"api1_fiscal.NfcomCommunicationTaxClass")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfcomClassIcms,"{\"situacao_tributaria\":\"40\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfcomClassIcms")
stopifnot(inherits(x,"api1_fiscal.NfcomClassIcms")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfcomClassPisCofins,"{\"situacao_tributaria\":\"06\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfcomClassPisCofins")
stopifnot(inherits(x,"api1_fiscal.NfcomClassPisCofins")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfcomClassContribution,"{\"aliquota\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfcomClassContribution")
stopifnot(inherits(x,"api1_fiscal.NfcomClassContribution")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_FiscalTaxClassRequestVariant3Item,"{\"descricao\":\"synthetic\",\"icms\":[{\"tipo_tributacao\":\"synthetic\",\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"codigo_cfop\":\"synthetic\",\"situacao_tributaria\":\"syn\"}],\"ipi\":[{\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"situacao_tributaria\":\"sy\",\"codigo_enquadramento\":\"syn\",\"aliquota\":\"0\"}],\"pis\":[{\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"situacao_tributaria\":\"sy\",\"aliquota\":\"0\"}],\"cofins\":[{\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"situacao_tributaria\":\"sy\",\"aliquota\":\"0\"}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::FiscalTaxClassRequestVariant3Item")
stopifnot(inherits(x,"api1_fiscal.FiscalTaxClassRequestVariant3Item")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_FiscalTaxClassRequest,"{\"descricao\":\"synthetic\",\"icms\":[{\"tipo_tributacao\":\"synthetic\",\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"codigo_cfop\":\"synthetic\",\"situacao_tributaria\":\"syn\"}],\"ipi\":[{\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"situacao_tributaria\":\"sy\",\"codigo_enquadramento\":\"syn\",\"aliquota\":\"0\"}],\"pis\":[{\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"situacao_tributaria\":\"sy\",\"aliquota\":\"0\"}],\"cofins\":[{\"cenario\":\"synthetic\",\"tipo_pessoa\":\"synthetic\",\"situacao_tributaria\":\"sy\",\"aliquota\":\"0\"}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::FiscalTaxClassRequest")
stopifnot(inherits(x,"api1_fiscal.FiscalTaxClassRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_TaxClassCreatedResult,"{\"referencia\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::TaxClassCreatedResult")
stopifnot(inherits(x,"api1_fiscal.TaxClassCreatedResult")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_FiscalCompanyUpdateRequest,"{\"cnae\":null}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::FiscalCompanyUpdateRequest")
stopifnot(inherits(x,"api1_fiscal.FiscalCompanyUpdateRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_FiscalCompanyUpdateRequestContabilidade,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::FiscalCompanyUpdateRequestContabilidade")
stopifnot(inherits(x,"api1_fiscal.FiscalCompanyUpdateRequestContabilidade")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_FiscalCompanyUpdateRequestCnae,"null",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::FiscalCompanyUpdateRequestCnae")
stopifnot(inherits(x,"api1_fiscal.FiscalCompanyUpdateRequestCnae")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_FiscalCompanyUpdateResult,"{\"success\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::FiscalCompanyUpdateResult")
stopifnot(inherits(x,"api1_fiscal.FiscalCompanyUpdateResult")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_FiscalCompanyUpdateResultWarningsItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::FiscalCompanyUpdateResultWarningsItem")
stopifnot(inherits(x,"api1_fiscal.FiscalCompanyUpdateResultWarningsItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_FiscalCompanyUpdateResultCredenciais,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::FiscalCompanyUpdateResultCredenciais")
stopifnot(inherits(x,"api1_fiscal.FiscalCompanyUpdateResultCredenciais")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_FiscalReportRequest,"{\"modelo\":\"nfe\",\"relatorio\":\"danfe\",\"numero_inicio\":\"1\",\"numero_final\":\"5\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::FiscalReportRequest")
stopifnot(inherits(x,"api1_fiscal.FiscalReportRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_FiscalReportResult,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::FiscalReportResult")
stopifnot(inherits(x,"api1_fiscal.FiscalReportResult")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112110Details,"{\"data_previsao_entrega\":\"2026-11-01\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112110Details")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112110Details")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112110Request,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":2,\"cod_evento\":\"112110\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112110Request")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112110Request")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112120Details,"{\"itens\":[{\"item\":\"0\",\"valor_ibs\":\"0\",\"valor_cbs\":\"0\",\"controle_estoque\":{\"quantidade\":\"0\",\"unidade\":\"synthe\"}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112120Details")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112120Details")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112120DetailsItensItem,"{\"item\":\"0\",\"valor_ibs\":\"0\",\"valor_cbs\":\"0\",\"controle_estoque\":{\"quantidade\":\"0\",\"unidade\":\"synthe\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112120DetailsItensItem")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112120DetailsItensItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112120DetailsItensItemControleEstoque,"{\"quantidade\":\"0\",\"unidade\":\"synthe\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112120DetailsItensItemControleEstoque")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112120DetailsItensItemControleEstoque")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112120Request,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":2,\"cod_evento\":\"112120\",\"itens\":[{\"item\":1,\"valor_ibs\":\"0.00\",\"valor_cbs\":0,\"controle_estoque\":{\"quantidade\":\"1.2500\",\"unidade\":\"UN\"}}],\"additional_future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112120Request")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112120Request")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112120RequestItensItem,"{\"item\":1,\"valor_ibs\":\"0.00\",\"valor_cbs\":0,\"controle_estoque\":{\"quantidade\":\"1.2500\",\"unidade\":\"UN\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112120RequestItensItem")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112120RequestItensItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112120RequestItensItemControleEstoque,"{\"quantidade\":\"1.2500\",\"unidade\":\"UN\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112120RequestItensItemControleEstoque")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112120RequestItensItemControleEstoque")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112130Details,"{\"itens\":[{\"item\":\"0\",\"valor_ibs\":\"0\",\"valor_cbs\":\"0\",\"controle_estoque\":{\"quantidade_perecimento\":\"0\",\"unidade_perecimento\":\"synthe\",\"valor_ibs_estorno\":\"0\",\"valor_cbs_estorno\":\"0\"}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112130Details")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112130Details")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112130DetailsItensItem,"{\"item\":\"0\",\"valor_ibs\":\"0\",\"valor_cbs\":\"0\",\"controle_estoque\":{\"quantidade_perecimento\":\"0\",\"unidade_perecimento\":\"synthe\",\"valor_ibs_estorno\":\"0\",\"valor_cbs_estorno\":\"0\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112130DetailsItensItem")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112130DetailsItensItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112130DetailsItensItemControleEstoque,"{\"quantidade_perecimento\":\"0\",\"unidade_perecimento\":\"synthe\",\"valor_ibs_estorno\":\"0\",\"valor_cbs_estorno\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112130DetailsItensItemControleEstoque")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112130DetailsItensItemControleEstoque")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112130Request,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"112130\",\"itens\":[{\"item\":1,\"valor_ibs\":0,\"valor_cbs\":\"0.00\",\"controle_estoque\":{\"quantidade_perecimento\":\"1.0000\",\"unidade_perecimento\":\"UN\",\"valor_ibs_estorno\":\"0.00\",\"valor_cbs_estorno\":0}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112130Request")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112130Request")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112130RequestItensItem,"{\"item\":1,\"valor_ibs\":0,\"valor_cbs\":\"0.00\",\"controle_estoque\":{\"quantidade_perecimento\":\"1.0000\",\"unidade_perecimento\":\"UN\",\"valor_ibs_estorno\":\"0.00\",\"valor_cbs_estorno\":0}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112130RequestItensItem")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112130RequestItensItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112130RequestItensItemControleEstoque,"{\"quantidade_perecimento\":\"1.0000\",\"unidade_perecimento\":\"UN\",\"valor_ibs_estorno\":\"0.00\",\"valor_cbs_estorno\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112130RequestItensItemControleEstoque")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112130RequestItensItemControleEstoque")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112140Details,"{\"itens\":[{\"item\":\"0\",\"valor_ibs\":\"0\",\"valor_cbs\":\"0\",\"controle_estoque\":{\"quantidade_nao_fornecida\":\"0\",\"unidade_nao_fornecida\":\"synthe\"}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112140Details")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112140Details")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112140DetailsItensItem,"{\"item\":\"0\",\"valor_ibs\":\"0\",\"valor_cbs\":\"0\",\"controle_estoque\":{\"quantidade_nao_fornecida\":\"0\",\"unidade_nao_fornecida\":\"synthe\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112140DetailsItensItem")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112140DetailsItensItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112140DetailsItensItemControleEstoque,"{\"quantidade_nao_fornecida\":\"0\",\"unidade_nao_fornecida\":\"synthe\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112140DetailsItensItemControleEstoque")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112140DetailsItensItemControleEstoque")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112140Request,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"112140\",\"itens\":[{\"item\":1,\"valor_ibs\":0,\"valor_cbs\":\"0.00\",\"controle_estoque\":{\"quantidade_nao_fornecida\":\"1.0000\",\"unidade_nao_fornecida\":\"UN\"}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112140Request")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112140Request")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112140RequestItensItem,"{\"item\":1,\"valor_ibs\":0,\"valor_cbs\":\"0.00\",\"controle_estoque\":{\"quantidade_nao_fornecida\":\"1.0000\",\"unidade_nao_fornecida\":\"UN\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112140RequestItensItem")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112140RequestItensItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112140RequestItensItemControleEstoque,"{\"quantidade_nao_fornecida\":\"1.0000\",\"unidade_nao_fornecida\":\"UN\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112140RequestItensItemControleEstoque")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112140RequestItensItemControleEstoque")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112150Details,"{\"data_previsao_entrega\":\"2026-11-01\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112150Details")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112150Details")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs112150Request,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":2,\"cod_evento\":\"112150\",\"data_previsao_entrega\":\"2026-11-01\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs112150Request")
stopifnot(inherits(x,"api1_fiscal.IbsCbs112150Request")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211110Details,"{\"itens\":[{\"item\":\"0\",\"base_calculo\":\"0\",\"credito_presumido\":{\"classificacao\":\"sy\",\"aliquota_ibs\":\"0\",\"aliquota_cbs\":\"0\",\"valor_ibs\":\"0\",\"valor_cbs\":\"0\"}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211110Details")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211110Details")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211110DetailsItensItem,"{\"item\":\"0\",\"base_calculo\":\"0\",\"credito_presumido\":{\"classificacao\":\"sy\",\"aliquota_ibs\":\"0\",\"aliquota_cbs\":\"0\",\"valor_ibs\":\"0\",\"valor_cbs\":\"0\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211110DetailsItensItem")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211110DetailsItensItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211110DetailsItensItemCreditoPresumido,"{\"classificacao\":\"sy\",\"aliquota_ibs\":\"0\",\"aliquota_cbs\":\"0\",\"valor_ibs\":\"0\",\"valor_cbs\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211110DetailsItensItemCreditoPresumido")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211110DetailsItensItemCreditoPresumido")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211110Request,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"211110\",\"itens\":[{\"item\":1,\"base_calculo\":0,\"credito_presumido\":{\"classificacao\":\"01\",\"aliquota_ibs\":0,\"aliquota_cbs\":\"0.0000\",\"valor_ibs\":\"0.00\",\"valor_cbs\":0}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211110Request")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211110Request")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211110RequestItensItem,"{\"item\":1,\"base_calculo\":0,\"credito_presumido\":{\"classificacao\":\"01\",\"aliquota_ibs\":0,\"aliquota_cbs\":\"0.0000\",\"valor_ibs\":\"0.00\",\"valor_cbs\":0}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211110RequestItensItem")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211110RequestItensItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211110RequestItensItemCreditoPresumido,"{\"classificacao\":\"01\",\"aliquota_ibs\":0,\"aliquota_cbs\":\"0.0000\",\"valor_ibs\":\"0.00\",\"valor_cbs\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211110RequestItensItemCreditoPresumido")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211110RequestItensItemCreditoPresumido")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211124Details,"{\"itens\":[{\"item\":\"0\",\"valor_ibs\":\"0\",\"valor_cbs\":\"0\",\"controle_estoque\":{\"quantidade_perecimento\":\"0\",\"unidade_perecimento\":\"synthe\"}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211124Details")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211124Details")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211124DetailsItensItem,"{\"item\":\"0\",\"valor_ibs\":\"0\",\"valor_cbs\":\"0\",\"controle_estoque\":{\"quantidade_perecimento\":\"0\",\"unidade_perecimento\":\"synthe\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211124DetailsItensItem")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211124DetailsItensItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211124DetailsItensItemControleEstoque,"{\"quantidade_perecimento\":\"0\",\"unidade_perecimento\":\"synthe\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211124DetailsItensItemControleEstoque")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211124DetailsItensItemControleEstoque")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211124Request,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"211124\",\"itens\":[{\"item\":1,\"valor_ibs\":0,\"valor_cbs\":\"0.00\",\"controle_estoque\":{\"quantidade_perecimento\":\"1.0000\",\"unidade_perecimento\":\"UN\"}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211124Request")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211124Request")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211124RequestItensItem,"{\"item\":1,\"valor_ibs\":0,\"valor_cbs\":\"0.00\",\"controle_estoque\":{\"quantidade_perecimento\":\"1.0000\",\"unidade_perecimento\":\"UN\",\"valor_ibs_estorno\":\"0.00\",\"valor_cbs_estorno\":0}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211124RequestItensItem")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211124RequestItensItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211124RequestItensItemControleEstoque,"{\"quantidade_perecimento\":\"1.0000\",\"unidade_perecimento\":\"UN\",\"valor_ibs_estorno\":\"0.00\",\"valor_cbs_estorno\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211124RequestItensItemControleEstoque")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211124RequestItensItemControleEstoque")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211128Details,"{\"indicador_aceitacao\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211128Details")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211128Details")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211128Request,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"211128\",\"indicador_aceitacao\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211128Request")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211128Request")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211130Details,"{\"itens\":[{\"item\":\"0\",\"valor_ibs\":\"0\",\"valor_cbs\":\"0\",\"controle_estoque\":{\"quantidade_imobilizada\":\"0\",\"unidade_imobilizada\":\"synthe\"}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211130Details")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211130Details")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211130DetailsItensItem,"{\"item\":\"0\",\"valor_ibs\":\"0\",\"valor_cbs\":\"0\",\"controle_estoque\":{\"quantidade_imobilizada\":\"0\",\"unidade_imobilizada\":\"synthe\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211130DetailsItensItem")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211130DetailsItensItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211130DetailsItensItemControleEstoque,"{\"quantidade_imobilizada\":\"0\",\"unidade_imobilizada\":\"synthe\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211130DetailsItensItemControleEstoque")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211130DetailsItensItemControleEstoque")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211130Request,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"211130\",\"itens\":[{\"item\":1,\"valor_ibs\":0,\"valor_cbs\":\"0.00\",\"controle_estoque\":{\"quantidade_imobilizada\":\"1.0000\",\"unidade_imobilizada\":\"UN\"}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211130Request")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211130Request")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211130RequestItensItem,"{\"item\":1,\"valor_ibs\":0,\"valor_cbs\":\"0.00\",\"controle_estoque\":{\"quantidade_imobilizada\":\"1.0000\",\"unidade_imobilizada\":\"UN\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211130RequestItensItem")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211130RequestItensItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211130RequestItensItemControleEstoque,"{\"quantidade_imobilizada\":\"1.0000\",\"unidade_imobilizada\":\"UN\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211130RequestItensItemControleEstoque")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211130RequestItensItemControleEstoque")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211140Details,"{\"itens\":[{\"item\":\"0\",\"valor_ibs\":\"0\",\"valor_cbs\":\"0\",\"controle_estoque\":{\"quantidade_combustivel\":\"0\",\"unidade_combustivel\":\"synthe\"}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211140Details")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211140Details")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211140DetailsItensItem,"{\"item\":\"0\",\"valor_ibs\":\"0\",\"valor_cbs\":\"0\",\"controle_estoque\":{\"quantidade_combustivel\":\"0\",\"unidade_combustivel\":\"synthe\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211140DetailsItensItem")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211140DetailsItensItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211140DetailsItensItemControleEstoque,"{\"quantidade_combustivel\":\"0\",\"unidade_combustivel\":\"synthe\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211140DetailsItensItemControleEstoque")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211140DetailsItensItemControleEstoque")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211140Request,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"211140\",\"itens\":[{\"item\":1,\"valor_ibs\":0,\"valor_cbs\":\"0.00\",\"controle_estoque\":{\"quantidade_combustivel\":\"1.0000\",\"unidade_combustivel\":\"UN\"}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211140Request")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211140Request")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211140RequestItensItem,"{\"item\":1,\"valor_ibs\":0,\"valor_cbs\":\"0.00\",\"controle_estoque\":{\"quantidade_combustivel\":\"1.0000\",\"unidade_combustivel\":\"UN\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211140RequestItensItem")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211140RequestItensItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211140RequestItensItemControleEstoque,"{\"quantidade_combustivel\":\"1.0000\",\"unidade_combustivel\":\"UN\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211140RequestItensItemControleEstoque")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211140RequestItensItemControleEstoque")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211150Details,"{\"itens\":[{\"item\":\"0\",\"valor_credito_ibs\":\"0\",\"valor_credito_cbs\":\"0\"}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211150Details")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211150Details")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211150DetailsItensItem,"{\"item\":\"0\",\"valor_credito_ibs\":\"0\",\"valor_credito_cbs\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211150DetailsItensItem")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211150DetailsItensItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211150Request,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"211150\",\"itens\":[{\"item\":1,\"valor_credito_ibs\":0,\"valor_credito_cbs\":\"0.00\"}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211150Request")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211150Request")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_IbsCbs211150RequestItensItem,"{\"item\":1,\"valor_credito_ibs\":0,\"valor_credito_cbs\":\"0.00\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::IbsCbs211150RequestItensItem")
stopifnot(inherits(x,"api1_fiscal.IbsCbs211150RequestItensItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":2,\"cod_evento\":\"112110\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeIbsCbsEventRequest")
stopifnot(inherits(x,"api1_fiscal.NfeIbsCbsEventRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfePreviewResult,"{\"danfe\":\"https://nfe.webmania.com.br/danfe/00000000-0000-4000-8000-000000000000/\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfePreviewResult")
stopifnot(inherits(x,"api1_fiscal.NfePreviewResult")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeTaxCalculationResult,"{\"impostos\":{\"icms\":\"0.00\"},\"aliquotas\":{\"icms\":[]},\"pedido\":{\"total\":\"1.00\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeTaxCalculationResult")
stopifnot(inherits(x,"api1_fiscal.NfeTaxCalculationResult")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeTaxCalculationResultImpostos,"{\"icms\":\"0.00\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeTaxCalculationResultImpostos")
stopifnot(inherits(x,"api1_fiscal.NfeTaxCalculationResultImpostos")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeTaxCalculationResultAliquotas,"{\"icms\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeTaxCalculationResultAliquotas")
stopifnot(inherits(x,"api1_fiscal.NfeTaxCalculationResultAliquotas")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeTaxCalculationResultPedido,"{\"total\":\"1.00\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeTaxCalculationResultPedido")
stopifnot(inherits(x,"api1_fiscal.NfeTaxCalculationResultPedido")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIssueResult,"{\"danfe\":\"https://nfe.webmania.com.br/danfe/00000000-0000-4000-8000-000000000000/\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeIssueResult")
stopifnot(inherits(x,"api1_fiscal.NfeIssueResult")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeNotification,"{\"uuid\":\"syntheticaaaaaaaaaaaaaaaaaaaaaaaaaaa\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeNotification")
stopifnot(inherits(x,"api1_fiscal.NfeNotification")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeNotificationLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeNotificationLog")
stopifnot(inherits(x,"api1_fiscal.NfeNotificationLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeNotificationLogCancelamento,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeNotificationLogCancelamento")
stopifnot(inherits(x,"api1_fiscal.NfeNotificationLogCancelamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeGetDocumentResponse,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"status\":\"new_provider_state\",\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeGetDocumentResponse")
stopifnot(inherits(x,"api1_fiscal.NfeGetDocumentResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeGetDocumentQuery,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeGetDocumentQuery")
stopifnot(inherits(x,"api1_fiscal.NfeGetDocumentQuery")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeQueryDocumentResponse,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"status\":\"new_provider_state\",\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeQueryDocumentResponse")
stopifnot(inherits(x,"api1_fiscal.NfeQueryDocumentResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeListTaxClassesResponse,"[]",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1_fiscal::NfeListTaxClassesResponse")
stopifnot(inherits(x,"api1_fiscal.NfeListTaxClassesResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterError,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterError")
stopifnot(inherits(x,"api2_cte_issuance.EmitterError")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_NfseServiceCode,"{\"codigo\":\"synthetic\",\"descricao\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::NfseServiceCode")
stopifnot(inherits(x,"api2_cte_issuance.NfseServiceCode")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_NfseServiceCodeAliquotaSugerida,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::NfseServiceCodeAliquotaSugerida")
stopifnot(inherits(x,"api2_cte_issuance.NfseServiceCodeAliquotaSugerida")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_NfseProviderStatus,"{\"status\":true,\"ambientes\":[],\"autenticacao\":[],\"emissao\":[],\"funcoes\":[],\"pdf_nfse\":false,\"pdf_sincrono\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::NfseProviderStatus")
stopifnot(inherits(x,"api2_cte_issuance.NfseProviderStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_NfcomServiceStatus,"{\"operacional\":false,\"mensagem\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::NfcomServiceStatus")
stopifnot(inherits(x,"api2_cte_issuance.NfcomServiceStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_NfseFiscalResponse,"{\"uuid\":\"synthetic\",\"modelo\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::NfseFiscalResponse")
stopifnot(inherits(x,"api2_cte_issuance.NfseFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_NfseFiscalResponseNfseSubstituida,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::NfseFiscalResponseNfseSubstituida")
stopifnot(inherits(x,"api2_cte_issuance.NfseFiscalResponseNfseSubstituida")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_NfseFiscalResponseInfoNfseItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::NfseFiscalResponseInfoNfseItem")
stopifnot(inherits(x,"api2_cte_issuance.NfseFiscalResponseInfoNfseItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_NfseFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::NfseFiscalResponseLog")
stopifnot(inherits(x,"api2_cte_issuance.NfseFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_NfcomPaymentEvent,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::NfcomPaymentEvent")
stopifnot(inherits(x,"api2_cte_issuance.NfcomPaymentEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_NfcomPaymentEventPagamentoVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::NfcomPaymentEventPagamentoVariant0")
stopifnot(inherits(x,"api2_cte_issuance.NfcomPaymentEventPagamentoVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_NfcomFiscalResponse,"{\"uuid\":\"synthetic\",\"modelo\":\"nfcom\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::NfcomFiscalResponse")
stopifnot(inherits(x,"api2_cte_issuance.NfcomFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_NfcomFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::NfcomFiscalResponseLog")
stopifnot(inherits(x,"api2_cte_issuance.NfcomFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_NfcomPaymentEvents,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\",\"eventos_pagamento\":[],\"total_eventos\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::NfcomPaymentEvents")
stopifnot(inherits(x,"api2_cte_issuance.NfcomPaymentEvents")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_NfseManifestationRequest,"{\"ambiente\":1,\"chave\":\"syntheticaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\",\"manifestador\":1,\"evento\":1}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::NfseManifestationRequest")
stopifnot(inherits(x,"api2_cte_issuance.NfseManifestationRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_CteFiscalResponse,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::CteFiscalResponse")
stopifnot(inherits(x,"api2_cte_issuance.CteFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_CteFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::CteFiscalResponseLog")
stopifnot(inherits(x,"api2_cte_issuance.CteFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_CteFiscalResponseEventosPagamentoItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::CteFiscalResponseEventosPagamentoItem")
stopifnot(inherits(x,"api2_cte_issuance.CteFiscalResponseEventosPagamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_MdfeFiscalResponse,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::MdfeFiscalResponse")
stopifnot(inherits(x,"api2_cte_issuance.MdfeFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_MdfeFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::MdfeFiscalResponseLog")
stopifnot(inherits(x,"api2_cte_issuance.MdfeFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_DceFiscalResponse,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::DceFiscalResponse")
stopifnot(inherits(x,"api2_cte_issuance.DceFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_DceFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::DceFiscalResponseLog")
stopifnot(inherits(x,"api2_cte_issuance.DceFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_FiscalEventResponse,"{\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::FiscalEventResponse")
stopifnot(inherits(x,"api2_cte_issuance.FiscalEventResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_FiscalEventResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::FiscalEventResponseLog")
stopifnot(inherits(x,"api2_cte_issuance.FiscalEventResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_CtePaymentEvents,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\",\"eventos_pagamento\":[],\"total_eventos\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::CtePaymentEvents")
stopifnot(inherits(x,"api2_cte_issuance.CtePaymentEvents")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_CtePaymentEventsEventosPagamentoItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::CtePaymentEventsEventosPagamentoItem")
stopifnot(inherits(x,"api2_cte_issuance.CtePaymentEventsEventosPagamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayload,"{\"ambiente\":2,\"modelo\":\"cte_os\",\"natureza_operacao\":\"Synthetic passenger transport\",\"modalidade\":1,\"finalidade\":\"0\",\"contribuicao_tomador\":9,\"indicador_tomador\":4,\"local_inicio_prestacao\":{\"cidade\":\"Synthetic origin\",\"uf\":\"SP\"},\"local_termino_prestacao\":{\"cidade\":\"Synthetic destination\",\"uf\":\"RJ\"},\"tomador\":{\"cnpj\":\"00000000000000\",\"nome_razao\":\"Synthetic company\",\"endereco\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\"},\"servico\":{\"tipo\":6,\"descricao\":\"Synthetic passenger transport\",\"valor_total\":\"100.00\",\"valor_recebido\":\"100.00\"},\"carga\":{\"produto_predominante\":\"Synthetic service\",\"valor_total\":\"100.00\",\"quantidades\":[{\"quantidade\":\"1.0000\"}]},\"impostos\":{\"cfop\":\"6353\",\"classificacao_tributaria\":\"SN\"},\"documentos_fiscais\":[{\"numero\":\"001\",\"data_emissao\":\"2026-01-01\",\"valor_documento\":\"100.00\"}],\"rodoviario\":{\"taf_cte_os\":\"000000000000\",\"tipo_fretamento\":\"2\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayload")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadAereo,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadAereo")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadAereo")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadAereoNaturezaCarga,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadAereoNaturezaCarga")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadAereoNaturezaCarga")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadAereoProdutosPerigososItem,"{\"descricao_volumes\":\"synthetic\",\"numero_onu\":\"synt\",\"quantidade_total\":0,\"unidade_medida\":\"1\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadAereoProdutosPerigososItem")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadAereoProdutosPerigososItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadAereoTarifa,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadAereoTarifa")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadAereoTarifa")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadAquaviario,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadAquaviario")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadAquaviario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadAquaviarioContainersItem,"{\"identificacao\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadAquaviarioContainersItem")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadAquaviarioContainersItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadAquaviarioContainersItemDocumentosItem,"{\"chave\":\"00000000000000000000000000000000000000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadAquaviarioContainersItemDocumentosItem")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadAquaviarioContainersItemDocumentosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadCarga,"{\"produto_predominante\":\"Synthetic service\",\"valor_total\":\"100.00\",\"quantidades\":[{\"quantidade\":\"1.0000\"}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadCarga")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadCarga")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadCargaFluxo,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadCargaFluxo")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadCargaFluxo")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadCargaQuantidadesItem,"{\"quantidade\":\"1.0000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadCargaQuantidadesItem")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadCargaQuantidadesItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadCargaSeguro,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadCargaSeguro")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadCargaSeguro")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadCobranca,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadCobranca")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadCobranca")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadCobrancaDuplicatasItem,"{\"valor\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadCobrancaDuplicatasItem")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadCobrancaDuplicatasItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadCobrancaFatura,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadCobrancaFatura")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadCobrancaFatura")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadDestinatario,"{\"cnpj\":\"00000000000000\",\"nome_razao\":\"Synthetic company\",\"endereco\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadDestinatario")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadDestinatario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadDocumentosAnterioresItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadDocumentosAnterioresItem")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadDocumentosAnterioresItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadDocumentosAnterioresItemDocumentosItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadDocumentosAnterioresItemDocumentosItem")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadDocumentosAnterioresItemDocumentosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadDocumentosAnterioresItemEmissor,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadDocumentosAnterioresItemEmissor")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadDocumentosAnterioresItemEmissor")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadDocumentosFiscaisItem,"{\"numero\":\"001\",\"data_emissao\":\"2026-01-01\",\"valor_documento\":\"100.00\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadDocumentosFiscaisItem")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadDocumentosFiscaisItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesCargaItem,"{\"identificacao\":\"synthetic\",\"tipo\":\"1\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesCargaItem")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesCargaItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesTransporteItem,"{\"identificacao\":\"synthetic\",\"tipo\":\"1\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesTransporteItem")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesTransporteItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesTransporteItemUnidadesCargaItem,"{\"identificacao\":\"synthetic\",\"tipo\":\"1\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesTransporteItemUnidadesCargaItem")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesTransporteItemUnidadesCargaItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadDutoviario,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadDutoviario")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadDutoviario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadEntrega,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadEntrega")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadEntrega")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadExpedidor,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadExpedidor")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadExpedidor")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadFerroviario,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadFerroviario")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadFerroviario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadFerroviarioFerroviasItem,"{\"cidade\":\"synthetic\",\"cnpj\":\"synthetic\",\"endereco\":\"synthetic\",\"nome_razao\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadFerroviarioFerroviasItem")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadFerroviarioFerroviasItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadImpostos,"{\"cfop\":\"6353\",\"classificacao_tributaria\":\"SN\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadImpostos")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadImpostos")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadImpostosIcms,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadImpostosIcms")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadImpostosIcms")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadImpostosIcmsPartilha,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadImpostosIcmsPartilha")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadImpostosIcmsPartilha")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadImpostosIbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadImpostosIbsCbs")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadImpostosIbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadImpostosIbsCbsCompraGovernamentalVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadImpostosIbsCbsCompraGovernamentalVariant0")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadImpostosIbsCbsCompraGovernamentalVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadImpostosIbsCbsEstornoCredito,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadImpostosIbsCbsEstornoCredito")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadImpostosIbsCbsEstornoCredito")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadImpostosIbsCbsIbsEstadual,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadImpostosIbsCbsIbsEstadual")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadImpostosIbsCbsIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadImpostosIbsCbsIbsMunicipal,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadImpostosIbsCbsIbsMunicipal")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadImpostosIbsCbsIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadImpostosIbsCbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadImpostosIbsCbsCbs")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadImpostosIbsCbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadImpostosIbsCbsCreditoPresumido,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadImpostosIbsCbsCreditoPresumido")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadImpostosIbsCbsCreditoPresumido")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadLocalInicioPrestacao,"{\"cidade\":\"Synthetic origin\",\"uf\":\"SP\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadLocalInicioPrestacao")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadLocalInicioPrestacao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadLocalTerminoPrestacao,"{\"cidade\":\"Synthetic destination\",\"uf\":\"RJ\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadLocalTerminoPrestacao")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadLocalTerminoPrestacao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadMultimodal,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadMultimodal")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadMultimodal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadMultimodalSeguro,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadMultimodalSeguro")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadMultimodalSeguro")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadObservacoesContribuinteItem,"{\"descricao\":\"synthetic\",\"identificacao\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadObservacoesContribuinteItem")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadObservacoesContribuinteItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadObservacoesFiscoItem,"{\"descricao\":\"synthetic\",\"identificacao\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadObservacoesFiscoItem")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadObservacoesFiscoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadPagamentosVinculadosItem,"{\"cnpj_base_psp\":\"AAAAAAAA\",\"cnpj_recebedor\":\"AAAAAAAAAAAA00\",\"id_transacao\":\"synthetic\",\"n_pag\":1,\"tp_meio_pagamento\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadPagamentosVinculadosItem")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadPagamentosVinculadosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadRecebedor,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadRecebedor")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadRecebedor")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadRemetente,"{\"cnpj\":\"00000000000000\",\"nome_razao\":\"Synthetic company\",\"endereco\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadRemetente")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadRemetente")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadRodoviario,"{\"taf_cte_os\":\"000000000000\",\"tipo_fretamento\":\"2\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadRodoviario")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadRodoviario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadRodoviarioOrdensColetaItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadRodoviarioOrdensColetaItem")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadRodoviarioOrdensColetaItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadRodoviarioOrdensColetaItemEmissor,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadRodoviarioOrdensColetaItemEmissor")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadRodoviarioOrdensColetaItemEmissor")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadRodoviarioVeiculo,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadRodoviarioVeiculo")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadRodoviarioVeiculo")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadRodoviarioVeiculoProprietario,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadRodoviarioVeiculoProprietario")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadRodoviarioVeiculoProprietario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadServico,"{\"tipo\":6,\"descricao\":\"Synthetic passenger transport\",\"valor_total\":\"100.00\",\"valor_recebido\":\"100.00\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadServico")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadServico")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadTomador,"{\"cnpj\":\"00000000000000\",\"nome_razao\":\"Synthetic company\",\"endereco\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadTomador")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadTomador")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayloadVeiculosNovosItem,"{\"chassi\":\"syntheticaaaaaaaa\",\"cor\":\"synt\",\"cor_descricao\":\"synthetic\",\"marca_modelo\":\"synthe\",\"valor_frete_unitario\":0,\"valor_unitario\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueCtePayloadVeiculosNovosItem")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayloadVeiculosNovosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueSimplifiedCtePayload,"{\"ambiente\":\"1\",\"modelo\":\"cte\",\"nfe_xml\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterIssueSimplifiedCtePayload")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueSimplifiedCtePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterCancelCtePayload,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"justificativa\":\"Synthetic cancellation justification\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterCancelCtePayload")
stopifnot(inherits(x,"api2_cte_issuance.EmitterCancelCtePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterCorrectCtePayload,"{\"alteracoes\":[{\"campo\":\"synthetic\",\"grupo\":\"synthetic\",\"valor\":\"synthetic\"}],\"uuid\":\"00000000-0000-4000-8000-000000000001\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterCorrectCtePayload")
stopifnot(inherits(x,"api2_cte_issuance.EmitterCorrectCtePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterCorrectCtePayloadAlteracoesItem,"{\"campo\":\"synthetic\",\"grupo\":\"synthetic\",\"valor\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterCorrectCtePayloadAlteracoesItem")
stopifnot(inherits(x,"api2_cte_issuance.EmitterCorrectCtePayloadAlteracoesItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterConfirmCteDeliveryPayload,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"notas_fiscais\":[\"123456ab12cd34ef5600000000000000000000000000\"],\"comprovante\":\"SYNTHETIC_IMAGE_PLACEHOLDER\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterConfirmCteDeliveryPayload")
stopifnot(inherits(x,"api2_cte_issuance.EmitterConfirmCteDeliveryPayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterCancelCteDeliveryPayload,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"protocolo\":\"synthetic\",\"sequencia\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterCancelCteDeliveryPayload")
stopifnot(inherits(x,"api2_cte_issuance.EmitterCancelCteDeliveryPayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterLinkCtePaymentPayload,"{\"pagamento\":{\"cnpj_base_psp\":\"00000000\",\"cnpj_recebedor\":\"00000000000000\",\"id_transacao\":\"synthetic\",\"n_pag\":1,\"tp_meio_pagamento\":\"synthetic\"},\"uuid\":\"00000000-0000-4000-8000-000000000001\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterLinkCtePaymentPayload")
stopifnot(inherits(x,"api2_cte_issuance.EmitterLinkCtePaymentPayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterLinkCtePaymentPayloadPagamento,"{\"cnpj_base_psp\":\"00000000\",\"cnpj_recebedor\":\"00000000000000\",\"id_transacao\":\"synthetic\",\"n_pag\":1,\"tp_meio_pagamento\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterLinkCtePaymentPayloadPagamento")
stopifnot(inherits(x,"api2_cte_issuance.EmitterLinkCtePaymentPayloadPagamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterCancelCtePaymentLinkPayload,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"protocolo_vinculacao\":\"000000000000000\",\"sequencia_vinculacao\":1}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::EmitterCancelCtePaymentLinkPayload")
stopifnot(inherits(x,"api2_cte_issuance.EmitterCancelCtePaymentLinkPayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_CteDocumentedGroup654,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::CteDocumentedGroup654")
stopifnot(inherits(x,"api2_cte_issuance.CteDocumentedGroup654")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_CteDocumentedGroup5669,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::CteDocumentedGroup5669")
stopifnot(inherits(x,"api2_cte_issuance.CteDocumentedGroup5669")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_CteDocumentedGroup5730,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::CteDocumentedGroup5730")
stopifnot(inherits(x,"api2_cte_issuance.CteDocumentedGroup5730")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_CteDocumentedGroup5835,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::CteDocumentedGroup5835")
stopifnot(inherits(x,"api2_cte_issuance.CteDocumentedGroup5835")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_CteDocumentedGroup5904,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::CteDocumentedGroup5904")
stopifnot(inherits(x,"api2_cte_issuance.CteDocumentedGroup5904")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_CteDocumentedGroup5949,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::CteDocumentedGroup5949")
stopifnot(inherits(x,"api2_cte_issuance.CteDocumentedGroup5949")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_CteDocumentedGroup6032,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::CteDocumentedGroup6032")
stopifnot(inherits(x,"api2_cte_issuance.CteDocumentedGroup6032")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_CteDocumentedGroup6120,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::CteDocumentedGroup6120")
stopifnot(inherits(x,"api2_cte_issuance.CteDocumentedGroup6120")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_CteServiceGroup,"{\"tipo\":0,\"valor_total\":\"100.00\",\"valor_recebido\":\"100.00\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::CteServiceGroup")
stopifnot(inherits(x,"api2_cte_issuance.CteServiceGroup")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_CteOsServiceGroup,"{\"tipo\":6,\"descricao\":\"Synthetic passenger transport\",\"valor_total\":\"100.00\",\"valor_recebido\":\"100.00\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_cte_issuance::CteOsServiceGroup")
stopifnot(inherits(x,"api2_cte_issuance.CteOsServiceGroup")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_EmitterError,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::EmitterError")
stopifnot(inherits(x,"api2_dce_issuance.EmitterError")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_NfseServiceCode,"{\"codigo\":\"synthetic\",\"descricao\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::NfseServiceCode")
stopifnot(inherits(x,"api2_dce_issuance.NfseServiceCode")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_NfseServiceCodeAliquotaSugerida,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::NfseServiceCodeAliquotaSugerida")
stopifnot(inherits(x,"api2_dce_issuance.NfseServiceCodeAliquotaSugerida")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_NfseProviderStatus,"{\"status\":true,\"ambientes\":[],\"autenticacao\":[],\"emissao\":[],\"funcoes\":[],\"pdf_nfse\":false,\"pdf_sincrono\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::NfseProviderStatus")
stopifnot(inherits(x,"api2_dce_issuance.NfseProviderStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_NfcomServiceStatus,"{\"operacional\":false,\"mensagem\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::NfcomServiceStatus")
stopifnot(inherits(x,"api2_dce_issuance.NfcomServiceStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_NfseFiscalResponse,"{\"uuid\":\"synthetic\",\"modelo\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::NfseFiscalResponse")
stopifnot(inherits(x,"api2_dce_issuance.NfseFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_NfseFiscalResponseNfseSubstituida,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::NfseFiscalResponseNfseSubstituida")
stopifnot(inherits(x,"api2_dce_issuance.NfseFiscalResponseNfseSubstituida")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_NfseFiscalResponseInfoNfseItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::NfseFiscalResponseInfoNfseItem")
stopifnot(inherits(x,"api2_dce_issuance.NfseFiscalResponseInfoNfseItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_NfseFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::NfseFiscalResponseLog")
stopifnot(inherits(x,"api2_dce_issuance.NfseFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_NfcomPaymentEvent,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::NfcomPaymentEvent")
stopifnot(inherits(x,"api2_dce_issuance.NfcomPaymentEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_NfcomPaymentEventPagamentoVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::NfcomPaymentEventPagamentoVariant0")
stopifnot(inherits(x,"api2_dce_issuance.NfcomPaymentEventPagamentoVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_NfcomFiscalResponse,"{\"uuid\":\"synthetic\",\"modelo\":\"nfcom\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::NfcomFiscalResponse")
stopifnot(inherits(x,"api2_dce_issuance.NfcomFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_NfcomFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::NfcomFiscalResponseLog")
stopifnot(inherits(x,"api2_dce_issuance.NfcomFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_NfcomPaymentEvents,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\",\"eventos_pagamento\":[],\"total_eventos\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::NfcomPaymentEvents")
stopifnot(inherits(x,"api2_dce_issuance.NfcomPaymentEvents")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_NfseManifestationRequest,"{\"ambiente\":1,\"chave\":\"syntheticaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\",\"manifestador\":1,\"evento\":1}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::NfseManifestationRequest")
stopifnot(inherits(x,"api2_dce_issuance.NfseManifestationRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_CteFiscalResponse,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::CteFiscalResponse")
stopifnot(inherits(x,"api2_dce_issuance.CteFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_CteFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::CteFiscalResponseLog")
stopifnot(inherits(x,"api2_dce_issuance.CteFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_CteFiscalResponseEventosPagamentoItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::CteFiscalResponseEventosPagamentoItem")
stopifnot(inherits(x,"api2_dce_issuance.CteFiscalResponseEventosPagamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_MdfeFiscalResponse,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::MdfeFiscalResponse")
stopifnot(inherits(x,"api2_dce_issuance.MdfeFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_MdfeFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::MdfeFiscalResponseLog")
stopifnot(inherits(x,"api2_dce_issuance.MdfeFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_DceFiscalResponse,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::DceFiscalResponse")
stopifnot(inherits(x,"api2_dce_issuance.DceFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_DceFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::DceFiscalResponseLog")
stopifnot(inherits(x,"api2_dce_issuance.DceFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_FiscalEventResponse,"{\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::FiscalEventResponse")
stopifnot(inherits(x,"api2_dce_issuance.FiscalEventResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_FiscalEventResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::FiscalEventResponseLog")
stopifnot(inherits(x,"api2_dce_issuance.FiscalEventResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_CtePaymentEvents,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\",\"eventos_pagamento\":[],\"total_eventos\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::CtePaymentEvents")
stopifnot(inherits(x,"api2_dce_issuance.CtePaymentEvents")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_CtePaymentEventsEventosPagamentoItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::CtePaymentEventsEventosPagamentoItem")
stopifnot(inherits(x,"api2_dce_issuance.CtePaymentEventsEventosPagamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_EmitterIssueDcePayload,"{\"ambiente\":\"1\",\"itens\":[{\"descricao\":\"synthetic\",\"ncm\":\"00000000\",\"quantidade\":0.0,\"valor_unitario\":0.0}],\"cliente\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"identificacao_alternativa\":\"synthetic\",\"nome_completo\":\"synthetic\",\"razao_social\":\"synthetic\"},\"emitente\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"identificacao_alternativa\":\"synthetic\",\"nome_completo\":\"synthetic\",\"razao_social\":\"synthetic\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::EmitterIssueDcePayload")
stopifnot(inherits(x,"api2_dce_issuance.EmitterIssueDcePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_EmitterIssueDcePayloadItensItem,"{\"descricao\":\"synthetic\",\"ncm\":\"00000000\",\"quantidade\":0.0,\"valor_unitario\":0.0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::EmitterIssueDcePayloadItensItem")
stopifnot(inherits(x,"api2_dce_issuance.EmitterIssueDcePayloadItensItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_EmitterIssueDcePayloadObservacoesVariant0Item,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::EmitterIssueDcePayloadObservacoesVariant0Item")
stopifnot(inherits(x,"api2_dce_issuance.EmitterIssueDcePayloadObservacoesVariant0Item")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_EmitterIssueDcePayloadObservacoesEmitenteVariant0Item,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::EmitterIssueDcePayloadObservacoesEmitenteVariant0Item")
stopifnot(inherits(x,"api2_dce_issuance.EmitterIssueDcePayloadObservacoesEmitenteVariant0Item")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_EmitterIssueDcePayloadCliente,"{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"identificacao_alternativa\":\"synthetic\",\"nome_completo\":\"synthetic\",\"razao_social\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::EmitterIssueDcePayloadCliente")
stopifnot(inherits(x,"api2_dce_issuance.EmitterIssueDcePayloadCliente")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_EmitterIssueDcePayloadEmitente,"{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"identificacao_alternativa\":\"synthetic\",\"nome_completo\":\"synthetic\",\"razao_social\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::EmitterIssueDcePayloadEmitente")
stopifnot(inherits(x,"api2_dce_issuance.EmitterIssueDcePayloadEmitente")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_EmitterIssueDcePayloadTransporte,"{\"modalidade\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::EmitterIssueDcePayloadTransporte")
stopifnot(inherits(x,"api2_dce_issuance.EmitterIssueDcePayloadTransporte")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_EmitterCancelDcePayload,"{\"chave\":\"123456ab12cd34ef5600000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::EmitterCancelDcePayload")
stopifnot(inherits(x,"api2_dce_issuance.EmitterCancelDcePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_DceDocumentedGroup282,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::DceDocumentedGroup282")
stopifnot(inherits(x,"api2_dce_issuance.DceDocumentedGroup282")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_DceDocumentedGroup1106,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::DceDocumentedGroup1106")
stopifnot(inherits(x,"api2_dce_issuance.DceDocumentedGroup1106")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_DceItemGroup,"{\"descricao\":\"Synthetic item\",\"ncm\":\"00\",\"quantidade\":\"1.0000\",\"valor_unitario\":\"10.00000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_dce_issuance::DceItemGroup")
stopifnot(inherits(x,"api2_dce_issuance.DceItemGroup")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_files_FiscalFileError,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_emitter_files::FiscalFileError")
stopifnot(inherits(x,"api2_emitter_files.FiscalFileError")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_files_NfsePdfPending,"{\"msg\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_emitter_files::NfsePdfPending")
stopifnot(inherits(x,"api2_emitter_files.NfsePdfPending")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_EmitterError,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_emitter_reads::EmitterError")
stopifnot(inherits(x,"api2_emitter_reads.EmitterError")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfseServiceCode,"{\"codigo\":\"synthetic\",\"descricao\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_emitter_reads::NfseServiceCode")
stopifnot(inherits(x,"api2_emitter_reads.NfseServiceCode")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfseServiceCodeAliquotaSugerida,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_emitter_reads::NfseServiceCodeAliquotaSugerida")
stopifnot(inherits(x,"api2_emitter_reads.NfseServiceCodeAliquotaSugerida")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfseProviderStatus,"{\"status\":true,\"ambientes\":[1,2],\"autenticacao\":[\"certificado_a1\"],\"emissao\":[\"nfse\"],\"funcoes\":[\"consultar\"],\"pdf_nfse\":false,\"pdf_sincrono\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_emitter_reads::NfseProviderStatus")
stopifnot(inherits(x,"api2_emitter_reads.NfseProviderStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfcomServiceStatus,"{\"operacional\":false,\"mensagem\":\"synthetic offline\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_emitter_reads::NfcomServiceStatus")
stopifnot(inherits(x,"api2_emitter_reads.NfcomServiceStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfseFiscalResponse,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelo\":\"lote_rps\",\"status\":\"processando\",\"info_nfse\":[],\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_emitter_reads::NfseFiscalResponse")
stopifnot(inherits(x,"api2_emitter_reads.NfseFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfseFiscalResponseNfseSubstituida,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_emitter_reads::NfseFiscalResponseNfseSubstituida")
stopifnot(inherits(x,"api2_emitter_reads.NfseFiscalResponseNfseSubstituida")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfseFiscalResponseInfoNfseItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_emitter_reads::NfseFiscalResponseInfoNfseItem")
stopifnot(inherits(x,"api2_emitter_reads.NfseFiscalResponseInfoNfseItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfseFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_emitter_reads::NfseFiscalResponseLog")
stopifnot(inherits(x,"api2_emitter_reads.NfseFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfcomPaymentEvent,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_emitter_reads::NfcomPaymentEvent")
stopifnot(inherits(x,"api2_emitter_reads.NfcomPaymentEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfcomPaymentEventPagamentoVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_emitter_reads::NfcomPaymentEventPagamentoVariant0")
stopifnot(inherits(x,"api2_emitter_reads.NfcomPaymentEventPagamentoVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfcomFiscalResponse,"{\"uuid\":\"synthetic\",\"modelo\":\"nfcom\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_emitter_reads::NfcomFiscalResponse")
stopifnot(inherits(x,"api2_emitter_reads.NfcomFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfcomFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_emitter_reads::NfcomFiscalResponseLog")
stopifnot(inherits(x,"api2_emitter_reads.NfcomFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfcomPaymentEvents,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\",\"eventos_pagamento\":[],\"total_eventos\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_emitter_reads::NfcomPaymentEvents")
stopifnot(inherits(x,"api2_emitter_reads.NfcomPaymentEvents")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfseManifestationRequest,"{\"ambiente\":2,\"chave\":\"00000000000000000000000000000000000000000000000000\",\"manifestador\":1,\"evento\":1}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_emitter_reads::NfseManifestationRequest")
stopifnot(inherits(x,"api2_emitter_reads.NfseManifestationRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_EmitterFunctionalError,"{\"status\":false,\"configured\":false,\"error\":\"Synthetic functional error\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_emitter_reads::EmitterFunctionalError")
stopifnot(inherits(x,"api2_emitter_reads.EmitterFunctionalError")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_EmitterGetNfseProviderStatusQuery,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_emitter_reads::EmitterGetNfseProviderStatusQuery")
stopifnot(inherits(x,"api2_emitter_reads.EmitterGetNfseProviderStatusQuery")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterError,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterError")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterError")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_NfseServiceCode,"{\"codigo\":\"synthetic\",\"descricao\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::NfseServiceCode")
stopifnot(inherits(x,"api2_mdfe_issuance.NfseServiceCode")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_NfseServiceCodeAliquotaSugerida,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::NfseServiceCodeAliquotaSugerida")
stopifnot(inherits(x,"api2_mdfe_issuance.NfseServiceCodeAliquotaSugerida")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_NfseProviderStatus,"{\"status\":true,\"ambientes\":[],\"autenticacao\":[],\"emissao\":[],\"funcoes\":[],\"pdf_nfse\":false,\"pdf_sincrono\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::NfseProviderStatus")
stopifnot(inherits(x,"api2_mdfe_issuance.NfseProviderStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_NfcomServiceStatus,"{\"operacional\":false,\"mensagem\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::NfcomServiceStatus")
stopifnot(inherits(x,"api2_mdfe_issuance.NfcomServiceStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_NfseFiscalResponse,"{\"uuid\":\"synthetic\",\"modelo\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::NfseFiscalResponse")
stopifnot(inherits(x,"api2_mdfe_issuance.NfseFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_NfseFiscalResponseNfseSubstituida,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::NfseFiscalResponseNfseSubstituida")
stopifnot(inherits(x,"api2_mdfe_issuance.NfseFiscalResponseNfseSubstituida")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_NfseFiscalResponseInfoNfseItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::NfseFiscalResponseInfoNfseItem")
stopifnot(inherits(x,"api2_mdfe_issuance.NfseFiscalResponseInfoNfseItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_NfseFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::NfseFiscalResponseLog")
stopifnot(inherits(x,"api2_mdfe_issuance.NfseFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_NfcomPaymentEvent,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::NfcomPaymentEvent")
stopifnot(inherits(x,"api2_mdfe_issuance.NfcomPaymentEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_NfcomPaymentEventPagamentoVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::NfcomPaymentEventPagamentoVariant0")
stopifnot(inherits(x,"api2_mdfe_issuance.NfcomPaymentEventPagamentoVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_NfcomFiscalResponse,"{\"uuid\":\"synthetic\",\"modelo\":\"nfcom\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::NfcomFiscalResponse")
stopifnot(inherits(x,"api2_mdfe_issuance.NfcomFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_NfcomFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::NfcomFiscalResponseLog")
stopifnot(inherits(x,"api2_mdfe_issuance.NfcomFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_NfcomPaymentEvents,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\",\"eventos_pagamento\":[],\"total_eventos\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::NfcomPaymentEvents")
stopifnot(inherits(x,"api2_mdfe_issuance.NfcomPaymentEvents")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_NfseManifestationRequest,"{\"ambiente\":1,\"chave\":\"syntheticaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\",\"manifestador\":1,\"evento\":1}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::NfseManifestationRequest")
stopifnot(inherits(x,"api2_mdfe_issuance.NfseManifestationRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_CteFiscalResponse,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::CteFiscalResponse")
stopifnot(inherits(x,"api2_mdfe_issuance.CteFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_CteFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::CteFiscalResponseLog")
stopifnot(inherits(x,"api2_mdfe_issuance.CteFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_CteFiscalResponseEventosPagamentoItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::CteFiscalResponseEventosPagamentoItem")
stopifnot(inherits(x,"api2_mdfe_issuance.CteFiscalResponseEventosPagamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_MdfeFiscalResponse,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::MdfeFiscalResponse")
stopifnot(inherits(x,"api2_mdfe_issuance.MdfeFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_MdfeFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::MdfeFiscalResponseLog")
stopifnot(inherits(x,"api2_mdfe_issuance.MdfeFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_DceFiscalResponse,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::DceFiscalResponse")
stopifnot(inherits(x,"api2_mdfe_issuance.DceFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_DceFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::DceFiscalResponseLog")
stopifnot(inherits(x,"api2_mdfe_issuance.DceFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_FiscalEventResponse,"{\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::FiscalEventResponse")
stopifnot(inherits(x,"api2_mdfe_issuance.FiscalEventResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_FiscalEventResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::FiscalEventResponseLog")
stopifnot(inherits(x,"api2_mdfe_issuance.FiscalEventResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_CtePaymentEvents,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\",\"eventos_pagamento\":[],\"total_eventos\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::CtePaymentEvents")
stopifnot(inherits(x,"api2_mdfe_issuance.CtePaymentEvents")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_CtePaymentEventsEventosPagamentoItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::CtePaymentEventsEventosPagamentoItem")
stopifnot(inherits(x,"api2_mdfe_issuance.CtePaymentEventsEventosPagamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayload,"{\"ambiente\":\"1\",\"carregamento\":[{\"nome_municipio\":\"synthetic\"}],\"descarregamento\":[{\"documentos_fiscais\":[{\"chave\":\"00000000000000000000000000000000000000000000\"}],\"nome_municipio\":\"synthetic\"}],\"emitente\":\"1\",\"modalidade\":\"1\",\"peso_bruto\":\"synthetic\",\"uf_carregamento\":\"synthetic\",\"uf_descarregamento\":\"synthetic\",\"unidade\":\"01\",\"valor_carga\":\"synthetic\",\"rodoviario\":{}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayload")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadAereo,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadAereo")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadAereo")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadAquaviario,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadAquaviario")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadAquaviario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadAquaviarioCargaVaziaItem,"{\"identificador\":\"synthetic\",\"tipo_unidade\":\"1\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadAquaviarioCargaVaziaItem")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadAquaviarioCargaVaziaItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadAquaviarioEmbarcacaoComboioItem,"{\"codigo\":\"synthetic\",\"identificador_balsa\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadAquaviarioEmbarcacaoComboioItem")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadAquaviarioEmbarcacaoComboioItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadAquaviarioTerminalCarregamentoItem,"{\"codigo\":\"syntheti\",\"nome\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadAquaviarioTerminalCarregamentoItem")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadAquaviarioTerminalCarregamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadAquaviarioTerminalDescarregamentoItem,"{\"codigo\":\"syntheti\",\"nome\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadAquaviarioTerminalDescarregamentoItem")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadAquaviarioTerminalDescarregamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadAquaviarioTransporteVazioItem,"{\"identificador\":\"synthetic\",\"tipo_unidade\":\"1\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadAquaviarioTransporteVazioItem")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadAquaviarioTransporteVazioItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadCarregamentoItem,"{\"nome_municipio\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadCarregamentoItem")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadCarregamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadDescarregamentoItem,"{\"documentos_fiscais\":[{\"chave\":\"00000000000000000000000000000000000000000000\"}],\"nome_municipio\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadDescarregamentoItem")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadDescarregamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItem,"{\"chave\":\"00000000000000000000000000000000000000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItem")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemEntregaParcial,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemEntregaParcial")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemEntregaParcial")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemPericulosidadeItem,"{\"numero_onu\":\"0000\",\"quantidade_total\":\"1\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemPericulosidadeItem")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemPericulosidadeItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemUnidadeTransporteItem,"{\"identificacao\":\"A\",\"tipo\":\"1\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemUnidadeTransporteItem")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemUnidadeTransporteItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemUnidadeTransporteItemUnidadeCargaItem,"{\"id_carga\":\"A\",\"tipo_carga\":\"1\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemUnidadeTransporteItemUnidadeCargaItem")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemUnidadeTransporteItemUnidadeCargaItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadFerroviario,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadFerroviario")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadFerroviario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadFerroviarioTrem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadFerroviarioTrem")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadFerroviarioTrem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadFerroviarioVagoesItem,"{\"numero\":\"0\",\"peso_bc\":\"synthet\",\"peso_real\":\"synthet\",\"serie\":\"syn\",\"tonelada_util\":\"synthet\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadFerroviarioVagoesItem")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadFerroviarioVagoesItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadProdutoPredominante,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadProdutoPredominante")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadProdutoPredominante")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadProdutoPredominanteLotacao,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadProdutoPredominanteLotacao")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadProdutoPredominanteLotacao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadProdutoPredominanteLotacaoCarregamento,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadProdutoPredominanteLotacaoCarregamento")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadProdutoPredominanteLotacaoCarregamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadProdutoPredominanteLotacaoDescarregamento,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadProdutoPredominanteLotacaoDescarregamento")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadProdutoPredominanteLotacaoDescarregamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadRodoviario,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadRodoviario")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadRodoviario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadRodoviarioCiotItem,"{\"codigo_ciot\":\"000000000000\",\"cpf_responsavel\":\"00000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadRodoviarioCiotItem")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadRodoviarioCiotItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadRodoviarioCondutorItem,"{\"cpf\":\"synthetic\",\"nome\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadRodoviarioCondutorItem")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadRodoviarioCondutorItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadRodoviarioContratanteItem,"{\"cpf\":\"00000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadRodoviarioContratanteItem")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadRodoviarioContratanteItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadRodoviarioValePedagioItem,"{\"cnpj_fornecedor\":\"00000000000000\",\"comprovante\":\"1\",\"valor\":\"1\",\"cpf_responsavel\":\"00000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadRodoviarioValePedagioItem")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadRodoviarioValePedagioItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadRodoviarioVeiculoReboqueItem,"{\"capacidade_kg\":\"1\",\"placa\":\"AAA0000\",\"tara\":\"1\",\"tipo_carroceria\":\"00\",\"uf_licenciamento\":\"SP\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadRodoviarioVeiculoReboqueItem")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadRodoviarioVeiculoReboqueItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadRodoviarioVeiculoReboqueItemProprietario,"{\"cpf\":\"00000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadRodoviarioVeiculoReboqueItemProprietario")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadRodoviarioVeiculoReboqueItemProprietario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadRodoviarioVeiculoTracao,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadRodoviarioVeiculoTracao")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadRodoviarioVeiculoTracao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadRodoviarioVeiculoTracaoProprietario,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadRodoviarioVeiculoTracaoProprietario")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadRodoviarioVeiculoTracaoProprietario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_MdfeFreightPaymentGroup,"{\"cpf\":\"00000000000\",\"valor_contrato\":\"100.00\",\"forma_pagamento\":\"0\",\"operacao_alto_desempenho\":false,\"componentes_pagamento_frete\":[{\"tipo_componente\":\"01\",\"valor_componente\":\"100.00\"}],\"informacoes_bancarias\":{\"tipo_informacao_bancaria\":\"3\",\"pix\":\"synthetic@example.invalid\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::MdfeFreightPaymentGroup")
stopifnot(inherits(x,"api2_mdfe_issuance.MdfeFreightPaymentGroup")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_MdfeFreightPaymentGroupComponentesPagamentoFreteItem,"{\"tipo_componente\":\"01\",\"valor_componente\":\"100.00\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::MdfeFreightPaymentGroupComponentesPagamentoFreteItem")
stopifnot(inherits(x,"api2_mdfe_issuance.MdfeFreightPaymentGroupComponentesPagamentoFreteItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_MdfeFreightPaymentGroupInformacoesBancarias,"{\"tipo_informacao_bancaria\":\"3\",\"pix\":\"synthetic@example.invalid\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::MdfeFreightPaymentGroupInformacoesBancarias")
stopifnot(inherits(x,"api2_mdfe_issuance.MdfeFreightPaymentGroupInformacoesBancarias")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_MdfeFreightPaymentGroupInformacoesPagamentoPrazoItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::MdfeFreightPaymentGroupInformacoesPagamentoPrazoItem")
stopifnot(inherits(x,"api2_mdfe_issuance.MdfeFreightPaymentGroupInformacoesPagamentoPrazoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadSeguroItem,"{\"responsavel\":{}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadSeguroItem")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadSeguroItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadSeguroItemResponsavel,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadSeguroItemResponsavel")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadSeguroItemResponsavel")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterIssueMdfePayloadSeguroItemSeguradora,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterIssueMdfePayloadSeguroItemSeguradora")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterIssueMdfePayloadSeguroItemSeguradora")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterCloseMdfePayload,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"codigo_municipio\":\"0000000\",\"municipio\":\"synthetic\",\"uf\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterCloseMdfePayload")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterCloseMdfePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterCancelMdfePayload,"{\"chave\":\"123456ab12cd34ef5600000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterCancelMdfePayload")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterCancelMdfePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterAddMdfeConductorPayload,"{\"cpf\":\"synthetic\",\"nome\":\"synthetic\",\"uuid\":\"00000000-0000-4000-8000-000000000001\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::EmitterAddMdfeConductorPayload")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterAddMdfeConductorPayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_MdfeDocumentedGroup465,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::MdfeDocumentedGroup465")
stopifnot(inherits(x,"api2_mdfe_issuance.MdfeDocumentedGroup465")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_MdfeDocumentedGroup3210,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::MdfeDocumentedGroup3210")
stopifnot(inherits(x,"api2_mdfe_issuance.MdfeDocumentedGroup3210")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_MdfeDocumentedGroup3297,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::MdfeDocumentedGroup3297")
stopifnot(inherits(x,"api2_mdfe_issuance.MdfeDocumentedGroup3297")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_MdfeDocumentedGroup3362,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_mdfe_issuance::MdfeDocumentedGroup3362")
stopifnot(inherits(x,"api2_mdfe_issuance.MdfeDocumentedGroup3362")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorError,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorError")
stopifnot(inherits(x,"api2_monitor_documents.MonitorError")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorPagination,"{\"current_page\":1,\"last_page\":1,\"per_page\":1,\"total\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorPagination")
stopifnot(inherits(x,"api2_monitor_documents.MonitorPagination")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorAddress,"{\"codigo_municipio\":3550308,\"cep\":\"00000-000\",\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorAddress")
stopifnot(inherits(x,"api2_monitor_documents.MonitorAddress")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorCompany,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorCompany")
stopifnot(inherits(x,"api2_monitor_documents.MonitorCompany")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorMunicipalityRegistration,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"tipo_download\":1,\"municipio\":\"synthetic\",\"uf\":\"synthetic\",\"codigo_ibge\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorMunicipalityRegistration")
stopifnot(inherits(x,"api2_monitor_documents.MonitorMunicipalityRegistration")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorAvailableMunicipality,"{\"nativo\":false,\"im\":false,\"certificado\":false,\"login_senha\":false,\"cadastro_prefeitura\":false,\"domicilio_fiscal_municipio\":false,\"multiplos_servicos\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorAvailableMunicipality")
stopifnot(inherits(x,"api2_monitor_documents.MonitorAvailableMunicipality")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDownloadStatistics,"{\"total_downloads\":0,\"empresas\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDownloadStatistics")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDownloadStatistics")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDownloadStatisticsEmpresasItem,"{\"empresa_uuid\":\"00000000-0000-4000-8000-000000000001\",\"total_downloads\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDownloadStatisticsEmpresasItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDownloadStatisticsEmpresasItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorCompanyPage,"{\"data\":[],\"meta\":{\"current_page\":1,\"last_page\":1,\"per_page\":1,\"total\":0}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorCompanyPage")
stopifnot(inherits(x,"api2_monitor_documents.MonitorCompanyPage")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorMunicipalityPage,"{\"data\":[],\"meta\":{\"current_page\":1,\"last_page\":1,\"per_page\":1,\"total\":0}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorMunicipalityPage")
stopifnot(inherits(x,"api2_monitor_documents.MonitorMunicipalityPage")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorAvailableMunicipalities,"{\"data\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorAvailableMunicipalities")
stopifnot(inherits(x,"api2_monitor_documents.MonitorAvailableMunicipalities")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorPerson,"{\"cnpj\":\"00000000000000\",\"razao_social\":\"EMPRESA FORNECEDORA LTDA\",\"ie\":\"000000000000\",\"uf\":\"SP\",\"endereco\":\"Rua das Ind\u00fastrias\",\"numero\":\"1500\",\"complemento\":\"Galp\u00e3o 2\",\"bairro\":\"Distrito Industrial\",\"cep\":\"12345-678\",\"cidade\":\"S\u00e3o Paulo\",\"telefone\":\"11999999999\",\"email\":\"fiscal@fornecedor.com\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorPerson")
stopifnot(inherits(x,"api2_monitor_documents.MonitorPerson")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorManifestationStateVariant0,"{\"codigo\":0,\"descricao\":\"synthetic\",\"manifestado\":false,\"automatica\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorManifestationStateVariant0")
stopifnot(inherits(x,"api2_monitor_documents.MonitorManifestationStateVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfe,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelo\":\"nfe\",\"status\":\"aprovado\",\"categoria\":\"recebidas\",\"data_emissao\":\"2025-02-27 13:17:00\",\"numero\":200,\"serie\":1,\"chave\":\"00000000000000000000000000000000000000000000\",\"valor\":6200,\"operacao\":0,\"finalidade\":1,\"cfop\":[\"2909\"],\"natureza_operacao\":\"Compra para industrializa\u00e7\u00e3o\",\"emitente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"EMPRESA FORNECEDORA LTDA\",\"ie\":\"000000000000\",\"uf\":\"SP\",\"endereco\":\"Rua das Ind\u00fastrias\",\"numero\":\"1500\",\"complemento\":\"Galp\u00e3o 2\",\"bairro\":\"Distrito Industrial\",\"cep\":\"12345-678\",\"cidade\":\"S\u00e3o Paulo\",\"telefone\":\"11999999999\",\"email\":\"fiscal@fornecedor.com\"},\"cliente\":{\"cnpj\":\"11111111000111\",\"razao_social\":\"EMPRESA COMPRADORA S/A\",\"ie\":\"111111111111\",\"uf\":\"SP\",\"endereco\":\"Av. Principal\",\"numero\":\"1000\",\"bairro\":\"Centro\",\"cep\":\"98765-432\",\"cidade\":\"S\u00e3o Paulo\",\"telefone\":\"11888888888\",\"email\":\"compras@empresa.com\"},\"pedido\":{\"numero_pedido\":\"PED-2025-001234\",\"numero_compra\":\"OC-2025-005678\"},\"produtos\":[{\"codigo\":\"MP001\",\"descricao\":\"MAT\u00c9RIA PRIMA ESPECIAL TIPO A\",\"ncm\":\"39269090\",\"cfop\":\"2909\",\"unidade\":\"KG\",\"quantidade\":1000,\"valor_unitario\":6.2,\"valor_total\":6200,\"impostos\":{\"icms\":{\"situacao_tributaria\":\"00\",\"origem\":0,\"base_calculo\":6200,\"aliquota\":18,\"valor\":1116},\"ipi\":{\"situacao_tributaria\":\"50\",\"base_calculo\":6200,\"aliquota\":5,\"valor\":310},\"pis\":{\"situacao_tributaria\":\"01\",\"base_calculo\":6200,\"aliquota\":1.65,\"valor\":102.3},\"cofins\":{\"situacao_tributaria\":\"01\",\"base_calculo\":6200,\"aliquota\":7.6,\"valor\":471.2},\"ibs_cbs\":{\"situacao_tributaria\":\"000\",\"classificacao_tributaria\":\"000001\",\"indicador_doacao\":false,\"bc\":6200,\"valor_ibs\":124.0,\"ibs_estadual\":{\"aliquota\":1.2,\"valor\":74.4,\"aliquota_diferimento\":0.1,\"valor_diferimento\":6.2,\"valor_devolvido\":3.1,\"aliquota_reducao\":0.2,\"aliquota_efetiva\":1.0},\"ibs_municipal\":{\"aliquota\":0.8,\"valor\":49.6,\"aliquota_diferimento\":0.05,\"valor_diferimento\":3.1,\"valor_devolvido\":1.24,\"aliquota_reducao\":0.1,\"aliquota_efetiva\":0.7},\"cbs\":{\"aliquota\":0.9,\"valor\":55.8,\"aliquota_diferimento\":0.03,\"valor_diferimento\":1.86,\"valor_devolvido\":0.62,\"aliquota_reducao\":0.05,\"aliquota_efetiva\":0.85},\"situacao_tributaria_regular\":\"000\",\"classificacao_tributaria_regular\":\"000001\",\"tributacao_regular\":{\"ibs_estadual\":{\"aliquota_efetiva\":1.1,\"valor\":68.2},\"ibs_municipal\":{\"aliquota_efetiva\":0.75,\"valor\":46.5},\"cbs\":{\"aliquota_efetiva\":0.88,\"valor\":54.56}},\"compra_governamental\":{\"ibs_estadual\":{\"aliquota\":1.0,\"valor\":62.0},\"ibs_municipal\":{\"aliquota\":0.6,\"valor\":37.2},\"cbs\":{\"aliquota\":0.7,\"valor\":43.4}},\"tributacao_monofasica\":{\"quantidade_bc\":1000.0,\"aliquota_ibs\":0.3,\"aliquota_cbs\":0.2,\"valor_ibs\":300.0,\"valor_cbs\":200.0,\"quantidade_bc_retencao\":200.0,\"aliquota_ibs_retencao\":0.1,\"aliquota_cbs_retencao\":0.05,\"valor_ibs_retencao\":20.0,\"valor_cbs_retencao\":10.0,\"quantidade_bc_retido\":100.0,\"aliquota_ibs_retido\":0.08,\"aliquota_cbs_retido\":0.04,\"valor_ibs_retido\":8.0,\"valor_cbs_retido\":4.0,\"aliquota_diferimento_ibs\":0.02,\"aliquota_diferimento_cbs\":0.01,\"valor_diferimento_ibs\":2.0,\"valor_diferimento_cbs\":1.0,\"valor_total_ibs\":330.0,\"valor_total_cbs\":215.0},\"transferencia_credito\":{\"valor_ibs\":6.2,\"valor_cbs\":3.1},\"ajuste_competencia\":{\"competencia_apuracao\":\"2026-01\",\"valor_ibs\":4.96,\"valor_cbs\":2.48},\"credito_presumido\":{\"classificacao\":\"01\",\"bc\":6200.0,\"aliquota_ibs\":0.5,\"valor_ibs\":31.0,\"valor_ibs_condicionado_suspensao\":1.24,\"aliquota_cbs\":0.3,\"valor_cbs\":18.6,\"valor_cbs_condicionado_suspensao\":0.62},\"credito_presumido_zfm\":{\"competencia_apuracao\":\"2026-01\",\"classificacao\":\"02\",\"valor_ibs\":12.4},\"estorno_credito\":{\"valor_ibs\":6.2,\"valor_cbs\":3.1}}}}],\"transporte\":{\"modalidade_frete\":1,\"transportadora\":{\"cnpj\":\"22222222000222\",\"razao_social\":\"TRANSPORTADORA R\u00c1PIDA LTDA\",\"ie\":\"222222222222\",\"endereco\":\"Rod. BR-101\",\"numero\":\"KM 50\",\"cidade\":\"S\u00e3o Paulo\",\"uf\":\"SP\"},\"volumes\":[{\"quantidade\":10,\"especie\":\"CAIXA\",\"marca\":\"FORNECEDOR\",\"numeracao\":\"1-10\",\"peso_liquido\":1000,\"peso_bruto\":1050}],\"veiculo\":{\"placa\":\"ABC1234\",\"uf\":\"SP\"}},\"totais\":{\"icms_bc\":6200,\"icms_valor\":1116,\"icms_valor_desonerado\":0,\"icms_st_bc\":0,\"icms_st_valor\":0,\"fcp_valor\":0,\"fcp_st_valor\":0,\"fcp_st_retido_valor\":0,\"ipi_valor\":310,\"ipi_devolvido_valor\":0,\"pis_valor\":102.3,\"cofins_valor\":471.2,\"ii_valor\":0,\"valor_produtos\":6200,\"valor_seguro\":0,\"valor_outras_despesas\":0,\"valor_desconto\":0,\"valor_frete\":0,\"valor_total_nfe\":7826},\"totais_issqn\":{\"valor_servicos\":0,\"iss_bc\":0,\"iss_valor\":0,\"pis_valor\":0,\"cofins_valor\":0,\"data_competencia\":\"2025-02-27\",\"deducao\":0,\"outras_retencoes\":0,\"desconto_incondicionado\":0,\"desconto_condicionado\":0,\"iss_retido_valor\":0,\"regime_especial_tributacao\":\"1\"},\"fatura\":{\"numero\":\"2025/0200\",\"valor_original\":6200,\"valor_desconto\":0,\"valor_liquido\":6200},\"parcelas\":[{\"numero\":\"001\",\"vencimento\":\"2025-03-27\",\"valor\":3100},{\"numero\":\"002\",\"vencimento\":\"2025-04-27\",\"valor\":3100}],\"responsavel_tecnico\":{\"cnpj\":\"33333333000333\",\"contato\":\"Jo\u00e3o Silva\",\"email\":\"suporte@sistema.com\",\"telefone\":\"11777777777\"},\"protocolo\":\"135250000123456\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfe")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfe")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeTotaisIssqn,"{\"valor_servicos\":0,\"iss_bc\":0,\"iss_valor\":0,\"pis_valor\":0,\"cofins_valor\":0,\"data_competencia\":\"2025-02-27\",\"deducao\":0,\"outras_retencoes\":0,\"desconto_incondicionado\":0,\"desconto_condicionado\":0,\"iss_retido_valor\":0,\"regime_especial_tributacao\":\"1\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeTotaisIssqn")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeTotaisIssqn")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItem,"{\"codigo\":\"MP001\",\"descricao\":\"MAT\u00c9RIA PRIMA ESPECIAL TIPO A\",\"ncm\":\"39269090\",\"cfop\":\"2909\",\"unidade\":\"KG\",\"quantidade\":1000,\"valor_unitario\":6.2,\"valor_total\":6200,\"impostos\":{\"icms\":{\"situacao_tributaria\":\"00\",\"origem\":0,\"base_calculo\":6200,\"aliquota\":18,\"valor\":1116},\"ipi\":{\"situacao_tributaria\":\"50\",\"base_calculo\":6200,\"aliquota\":5,\"valor\":310},\"pis\":{\"situacao_tributaria\":\"01\",\"base_calculo\":6200,\"aliquota\":1.65,\"valor\":102.3},\"cofins\":{\"situacao_tributaria\":\"01\",\"base_calculo\":6200,\"aliquota\":7.6,\"valor\":471.2},\"ibs_cbs\":{\"situacao_tributaria\":\"000\",\"classificacao_tributaria\":\"000001\",\"indicador_doacao\":false,\"bc\":6200,\"valor_ibs\":124.0,\"ibs_estadual\":{\"aliquota\":1.2,\"valor\":74.4,\"aliquota_diferimento\":0.1,\"valor_diferimento\":6.2,\"valor_devolvido\":3.1,\"aliquota_reducao\":0.2,\"aliquota_efetiva\":1.0},\"ibs_municipal\":{\"aliquota\":0.8,\"valor\":49.6,\"aliquota_diferimento\":0.05,\"valor_diferimento\":3.1,\"valor_devolvido\":1.24,\"aliquota_reducao\":0.1,\"aliquota_efetiva\":0.7},\"cbs\":{\"aliquota\":0.9,\"valor\":55.8,\"aliquota_diferimento\":0.03,\"valor_diferimento\":1.86,\"valor_devolvido\":0.62,\"aliquota_reducao\":0.05,\"aliquota_efetiva\":0.85},\"situacao_tributaria_regular\":\"000\",\"classificacao_tributaria_regular\":\"000001\",\"tributacao_regular\":{\"ibs_estadual\":{\"aliquota_efetiva\":1.1,\"valor\":68.2},\"ibs_municipal\":{\"aliquota_efetiva\":0.75,\"valor\":46.5},\"cbs\":{\"aliquota_efetiva\":0.88,\"valor\":54.56}},\"compra_governamental\":{\"ibs_estadual\":{\"aliquota\":1.0,\"valor\":62.0},\"ibs_municipal\":{\"aliquota\":0.6,\"valor\":37.2},\"cbs\":{\"aliquota\":0.7,\"valor\":43.4}},\"tributacao_monofasica\":{\"quantidade_bc\":1000.0,\"aliquota_ibs\":0.3,\"aliquota_cbs\":0.2,\"valor_ibs\":300.0,\"valor_cbs\":200.0,\"quantidade_bc_retencao\":200.0,\"aliquota_ibs_retencao\":0.1,\"aliquota_cbs_retencao\":0.05,\"valor_ibs_retencao\":20.0,\"valor_cbs_retencao\":10.0,\"quantidade_bc_retido\":100.0,\"aliquota_ibs_retido\":0.08,\"aliquota_cbs_retido\":0.04,\"valor_ibs_retido\":8.0,\"valor_cbs_retido\":4.0,\"aliquota_diferimento_ibs\":0.02,\"aliquota_diferimento_cbs\":0.01,\"valor_diferimento_ibs\":2.0,\"valor_diferimento_cbs\":1.0,\"valor_total_ibs\":330.0,\"valor_total_cbs\":215.0},\"transferencia_credito\":{\"valor_ibs\":6.2,\"valor_cbs\":3.1},\"ajuste_competencia\":{\"competencia_apuracao\":\"2026-01\",\"valor_ibs\":4.96,\"valor_cbs\":2.48},\"credito_presumido\":{\"classificacao\":\"01\",\"bc\":6200.0,\"aliquota_ibs\":0.5,\"valor_ibs\":31.0,\"valor_ibs_condicionado_suspensao\":1.24,\"aliquota_cbs\":0.3,\"valor_cbs\":18.6,\"valor_cbs_condicionado_suspensao\":0.62},\"credito_presumido_zfm\":{\"competencia_apuracao\":\"2026-01\",\"classificacao\":\"02\",\"valor_ibs\":12.4},\"estorno_credito\":{\"valor_ibs\":6.2,\"valor_cbs\":3.1}}}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostos,"{\"icms\":{\"situacao_tributaria\":\"00\",\"origem\":0,\"base_calculo\":6200,\"aliquota\":18,\"valor\":1116},\"ipi\":{\"situacao_tributaria\":\"50\",\"base_calculo\":6200,\"aliquota\":5,\"valor\":310},\"pis\":{\"situacao_tributaria\":\"01\",\"base_calculo\":6200,\"aliquota\":1.65,\"valor\":102.3},\"cofins\":{\"situacao_tributaria\":\"01\",\"base_calculo\":6200,\"aliquota\":7.6,\"valor\":471.2},\"ibs_cbs\":{\"situacao_tributaria\":\"000\",\"classificacao_tributaria\":\"000001\",\"indicador_doacao\":false,\"bc\":6200,\"valor_ibs\":124.0,\"ibs_estadual\":{\"aliquota\":1.2,\"valor\":74.4,\"aliquota_diferimento\":0.1,\"valor_diferimento\":6.2,\"valor_devolvido\":3.1,\"aliquota_reducao\":0.2,\"aliquota_efetiva\":1.0},\"ibs_municipal\":{\"aliquota\":0.8,\"valor\":49.6,\"aliquota_diferimento\":0.05,\"valor_diferimento\":3.1,\"valor_devolvido\":1.24,\"aliquota_reducao\":0.1,\"aliquota_efetiva\":0.7},\"cbs\":{\"aliquota\":0.9,\"valor\":55.8,\"aliquota_diferimento\":0.03,\"valor_diferimento\":1.86,\"valor_devolvido\":0.62,\"aliquota_reducao\":0.05,\"aliquota_efetiva\":0.85},\"situacao_tributaria_regular\":\"000\",\"classificacao_tributaria_regular\":\"000001\",\"tributacao_regular\":{\"ibs_estadual\":{\"aliquota_efetiva\":1.1,\"valor\":68.2},\"ibs_municipal\":{\"aliquota_efetiva\":0.75,\"valor\":46.5},\"cbs\":{\"aliquota_efetiva\":0.88,\"valor\":54.56}},\"compra_governamental\":{\"ibs_estadual\":{\"aliquota\":1.0,\"valor\":62.0},\"ibs_municipal\":{\"aliquota\":0.6,\"valor\":37.2},\"cbs\":{\"aliquota\":0.7,\"valor\":43.4}},\"tributacao_monofasica\":{\"quantidade_bc\":1000.0,\"aliquota_ibs\":0.3,\"aliquota_cbs\":0.2,\"valor_ibs\":300.0,\"valor_cbs\":200.0,\"quantidade_bc_retencao\":200.0,\"aliquota_ibs_retencao\":0.1,\"aliquota_cbs_retencao\":0.05,\"valor_ibs_retencao\":20.0,\"valor_cbs_retencao\":10.0,\"quantidade_bc_retido\":100.0,\"aliquota_ibs_retido\":0.08,\"aliquota_cbs_retido\":0.04,\"valor_ibs_retido\":8.0,\"valor_cbs_retido\":4.0,\"aliquota_diferimento_ibs\":0.02,\"aliquota_diferimento_cbs\":0.01,\"valor_diferimento_ibs\":2.0,\"valor_diferimento_cbs\":1.0,\"valor_total_ibs\":330.0,\"valor_total_cbs\":215.0},\"transferencia_credito\":{\"valor_ibs\":6.2,\"valor_cbs\":3.1},\"ajuste_competencia\":{\"competencia_apuracao\":\"2026-01\",\"valor_ibs\":4.96,\"valor_cbs\":2.48},\"credito_presumido\":{\"classificacao\":\"01\",\"bc\":6200.0,\"aliquota_ibs\":0.5,\"valor_ibs\":31.0,\"valor_ibs_condicionado_suspensao\":1.24,\"aliquota_cbs\":0.3,\"valor_cbs\":18.6,\"valor_cbs_condicionado_suspensao\":0.62},\"credito_presumido_zfm\":{\"competencia_apuracao\":\"2026-01\",\"classificacao\":\"02\",\"valor_ibs\":12.4},\"estorno_credito\":{\"valor_ibs\":6.2,\"valor_cbs\":3.1}}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostos")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostos")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosImpostoImportacao,"{\"ii_bc\":0,\"despesas_aduaneiras\":0,\"ii_valor\":0,\"iof_valor\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosImpostoImportacao")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosImpostoImportacao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIpi,"{\"situacao_tributaria\":\"50\",\"base_calculo\":6200,\"aliquota\":5,\"valor\":310}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIpi")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIpi")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosCofins,"{\"situacao_tributaria\":\"01\",\"base_calculo\":6200,\"aliquota\":7.6,\"valor\":471.2}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosCofins")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosCofins")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbs,"{\"situacao_tributaria\":\"000\",\"classificacao_tributaria\":\"000001\",\"indicador_doacao\":false,\"bc\":6200,\"valor_ibs\":124.0,\"ibs_estadual\":{\"aliquota\":1.2,\"valor\":74.4,\"aliquota_diferimento\":0.1,\"valor_diferimento\":6.2,\"valor_devolvido\":3.1,\"aliquota_reducao\":0.2,\"aliquota_efetiva\":1.0},\"ibs_municipal\":{\"aliquota\":0.8,\"valor\":49.6,\"aliquota_diferimento\":0.05,\"valor_diferimento\":3.1,\"valor_devolvido\":1.24,\"aliquota_reducao\":0.1,\"aliquota_efetiva\":0.7},\"cbs\":{\"aliquota\":0.9,\"valor\":55.8,\"aliquota_diferimento\":0.03,\"valor_diferimento\":1.86,\"valor_devolvido\":0.62,\"aliquota_reducao\":0.05,\"aliquota_efetiva\":0.85},\"situacao_tributaria_regular\":\"000\",\"classificacao_tributaria_regular\":\"000001\",\"tributacao_regular\":{\"ibs_estadual\":{\"aliquota_efetiva\":1.1,\"valor\":68.2},\"ibs_municipal\":{\"aliquota_efetiva\":0.75,\"valor\":46.5},\"cbs\":{\"aliquota_efetiva\":0.88,\"valor\":54.56}},\"compra_governamental\":{\"ibs_estadual\":{\"aliquota\":1.0,\"valor\":62.0},\"ibs_municipal\":{\"aliquota\":0.6,\"valor\":37.2},\"cbs\":{\"aliquota\":0.7,\"valor\":43.4}},\"tributacao_monofasica\":{\"quantidade_bc\":1000.0,\"aliquota_ibs\":0.3,\"aliquota_cbs\":0.2,\"valor_ibs\":300.0,\"valor_cbs\":200.0,\"quantidade_bc_retencao\":200.0,\"aliquota_ibs_retencao\":0.1,\"aliquota_cbs_retencao\":0.05,\"valor_ibs_retencao\":20.0,\"valor_cbs_retencao\":10.0,\"quantidade_bc_retido\":100.0,\"aliquota_ibs_retido\":0.08,\"aliquota_cbs_retido\":0.04,\"valor_ibs_retido\":8.0,\"valor_cbs_retido\":4.0,\"aliquota_diferimento_ibs\":0.02,\"aliquota_diferimento_cbs\":0.01,\"valor_diferimento_ibs\":2.0,\"valor_diferimento_cbs\":1.0,\"valor_total_ibs\":330.0,\"valor_total_cbs\":215.0},\"transferencia_credito\":{\"valor_ibs\":6.2,\"valor_cbs\":3.1},\"ajuste_competencia\":{\"competencia_apuracao\":\"2026-01\",\"valor_ibs\":4.96,\"valor_cbs\":2.48},\"credito_presumido\":{\"classificacao\":\"01\",\"bc\":6200.0,\"aliquota_ibs\":0.5,\"valor_ibs\":31.0,\"valor_ibs_condicionado_suspensao\":1.24,\"aliquota_cbs\":0.3,\"valor_cbs\":18.6,\"valor_cbs_condicionado_suspensao\":0.62},\"credito_presumido_zfm\":{\"competencia_apuracao\":\"2026-01\",\"classificacao\":\"02\",\"valor_ibs\":12.4},\"estorno_credito\":{\"valor_ibs\":6.2,\"valor_cbs\":3.1}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIbsCbs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsEstadual,"{\"aliquota\":1.2,\"valor\":74.4,\"aliquota_diferimento\":0.1,\"valor_diferimento\":6.2,\"valor_devolvido\":3.1,\"aliquota_reducao\":0.2,\"aliquota_efetiva\":1.0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsEstadual")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsMunicipal,"{\"aliquota\":0.8,\"valor\":49.6,\"aliquota_diferimento\":0.05,\"valor_diferimento\":3.1,\"valor_devolvido\":1.24,\"aliquota_reducao\":0.1,\"aliquota_efetiva\":0.7}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsCbs,"{\"aliquota\":0.9,\"valor\":55.8,\"aliquota_diferimento\":0.03,\"valor_diferimento\":1.86,\"valor_devolvido\":0.62,\"aliquota_reducao\":0.05,\"aliquota_efetiva\":0.85}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIbsCbsCbs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIbsCbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegular,"{\"ibs_estadual\":{\"aliquota_efetiva\":1.1,\"valor\":68.2},\"ibs_municipal\":{\"aliquota_efetiva\":0.75,\"valor\":46.5},\"cbs\":{\"aliquota_efetiva\":0.88,\"valor\":54.56}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegular")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegular")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsEstadual,"{\"aliquota_efetiva\":1.1,\"valor\":68.2}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsEstadual")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsMunicipal,"{\"aliquota_efetiva\":0.75,\"valor\":46.5}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularCbs,"{\"aliquota_efetiva\":0.88,\"valor\":54.56}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularCbs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamental,"{\"ibs_estadual\":{\"aliquota\":1.0,\"valor\":62.0},\"ibs_municipal\":{\"aliquota\":0.6,\"valor\":37.2},\"cbs\":{\"aliquota\":0.7,\"valor\":43.4}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamental")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamental")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsEstadual,"{\"aliquota\":1.0,\"valor\":62.0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsEstadual")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsMunicipal,"{\"aliquota\":0.6,\"valor\":37.2}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalCbs,"{\"aliquota\":0.7,\"valor\":43.4}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalCbs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoMonofasica,"{\"quantidade_bc\":1000.0,\"aliquota_ibs\":0.3,\"aliquota_cbs\":0.2,\"valor_ibs\":300.0,\"valor_cbs\":200.0,\"quantidade_bc_retencao\":200.0,\"aliquota_ibs_retencao\":0.1,\"aliquota_cbs_retencao\":0.05,\"valor_ibs_retencao\":20.0,\"valor_cbs_retencao\":10.0,\"quantidade_bc_retido\":100.0,\"aliquota_ibs_retido\":0.08,\"aliquota_cbs_retido\":0.04,\"valor_ibs_retido\":8.0,\"valor_cbs_retido\":4.0,\"aliquota_diferimento_ibs\":0.02,\"aliquota_diferimento_cbs\":0.01,\"valor_diferimento_ibs\":2.0,\"valor_diferimento_cbs\":1.0,\"valor_total_ibs\":330.0,\"valor_total_cbs\":215.0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoMonofasica")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoMonofasica")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsTransferenciaCredito,"{\"valor_ibs\":6.2,\"valor_cbs\":3.1}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIbsCbsTransferenciaCredito")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIbsCbsTransferenciaCredito")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsAjusteCompetencia,"{\"competencia_apuracao\":\"2026-01\",\"valor_ibs\":4.96,\"valor_cbs\":2.48}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIbsCbsAjusteCompetencia")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIbsCbsAjusteCompetencia")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumido,"{\"classificacao\":\"01\",\"bc\":6200.0,\"aliquota_ibs\":0.5,\"valor_ibs\":31.0,\"valor_ibs_condicionado_suspensao\":1.24,\"aliquota_cbs\":0.3,\"valor_cbs\":18.6,\"valor_cbs_condicionado_suspensao\":0.62}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumido")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumido")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumidoZfm,"{\"competencia_apuracao\":\"2026-01\",\"classificacao\":\"02\",\"valor_ibs\":12.4}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumidoZfm")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumidoZfm")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIbsCbsEstornoCredito,"{\"valor_ibs\":6.2,\"valor_cbs\":3.1}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIbsCbsEstornoCredito")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIbsCbsEstornoCredito")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIcms,"{\"situacao_tributaria\":\"00\",\"origem\":0,\"base_calculo\":6200,\"aliquota\":18,\"valor\":1116}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIcms")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIcms")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosPis,"{\"situacao_tributaria\":\"01\",\"base_calculo\":6200,\"aliquota\":1.65,\"valor\":102.3}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosPis")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosPis")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIssqn,"{\"iss_bc\":0,\"iss_aliquota\":0,\"iss_valor\":0,\"municipio_fato_gerador\":\"00000000\",\"item_servico\":\"0000\",\"deducao\":0,\"retencoes\":0,\"desconto_incondicionado\":0,\"desconto_condicionado\":0,\"iss_retido_valor\":0,\"exigibilidade\":\"1\",\"codigo_servico\":\"0000\",\"municipio_incidencia\":\"00000000\",\"pais\":\"1058\",\"processo\":\"12345\",\"incentivo_fiscal\":\"2\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIssqn")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIssqn")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProdutosItemImpostosIpiDevolvido,"{\"percentual_devolvido\":0,\"ipi_devolvido_valor\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProdutosItemImpostosIpiDevolvido")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProdutosItemImpostosIpiDevolvido")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProtocoloVariant1,"{\"motivo\":\"Autorizado o uso da NF-e\",\"status\":\"100\",\"data_recebimento\":\"2025-02-27T13:28:33-03:00\",\"numero_protocolo\":\"000000000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProtocoloVariant1")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProtocoloVariant1")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeProtocolo,"\"135250000123456\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeProtocolo")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeProtocolo")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeTotais,"{\"icms_bc\":6200,\"icms_valor\":1116,\"icms_valor_desonerado\":0,\"icms_st_bc\":0,\"icms_st_valor\":0,\"fcp_valor\":0,\"fcp_st_valor\":0,\"fcp_st_retido_valor\":0,\"ipi_valor\":310,\"ipi_devolvido_valor\":0,\"pis_valor\":102.3,\"cofins_valor\":471.2,\"ii_valor\":0,\"valor_produtos\":6200,\"valor_seguro\":0,\"valor_outras_despesas\":0,\"valor_desconto\":0,\"valor_frete\":0,\"valor_total_nfe\":7826}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeTotais")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeTotais")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeFatura,"{\"numero\":\"2025/0200\",\"valor_original\":6200,\"valor_desconto\":0,\"valor_liquido\":6200}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeFatura")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeFatura")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfePedido,"{\"numero_pedido\":\"PED-2025-001234\",\"numero_compra\":\"OC-2025-005678\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfePedido")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfePedido")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeResponsavelTecnico,"{\"cnpj\":\"33333333000333\",\"contato\":\"Jo\u00e3o Silva\",\"email\":\"suporte@sistema.com\",\"telefone\":\"11777777777\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeResponsavelTecnico")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeResponsavelTecnico")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeTransporte,"{\"modalidade_frete\":1,\"transportadora\":{\"cnpj\":\"22222222000222\",\"razao_social\":\"TRANSPORTADORA R\u00c1PIDA LTDA\",\"ie\":\"222222222222\",\"endereco\":\"Rod. BR-101\",\"numero\":\"KM 50\",\"cidade\":\"S\u00e3o Paulo\",\"uf\":\"SP\"},\"volumes\":[{\"quantidade\":10,\"especie\":\"CAIXA\",\"marca\":\"FORNECEDOR\",\"numeracao\":\"1-10\",\"peso_liquido\":1000,\"peso_bruto\":1050}],\"veiculo\":{\"placa\":\"ABC1234\",\"uf\":\"SP\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeTransporte")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeTransporte")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeTransporteVeiculo,"{\"placa\":\"ABC1234\",\"uf\":\"SP\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeTransporteVeiculo")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeTransporteVeiculo")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeTransporteRetirada,"{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXX XXXXXX XXX\",\"nome_completo\":\"XXXXXX XXXXXX XXX\",\"nome_fantasia\":\"XXXXXXX XXXXXXXXXX\",\"ie\":\"00000000\",\"endereco\":\"XXXX XXXX\",\"numero\":\"XXX\",\"complemento\":\"XXXX XXXXXX\",\"bairro\":\"XXXXXXX XXXX\",\"cep\":\"00000000\",\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"telefone\":\"00000000000\",\"email\":\"abcd@efgh.com\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeTransporteRetirada")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeTransporteRetirada")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeTransporteEntrega,"{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXX XXXXXX XXX\",\"nome_completo\":\"XXXXXX XXXXXX XXX\",\"nome_fantasia\":\"XXXXXXX XXXXXXXXXX\",\"ie\":\"00000000\",\"endereco\":\"XXXX XXXX\",\"numero\":\"XXX\",\"complemento\":\"XXXX XXXXXX\",\"bairro\":\"XXXXXXX XXXX\",\"cep\":\"00000000\",\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"telefone\":\"00000000000\",\"email\":\"abcd@efgh.com\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeTransporteEntrega")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeTransporteEntrega")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeTransporteVolumesItem,"{\"quantidade\":10,\"especie\":\"CAIXA\",\"marca\":\"FORNECEDOR\",\"numeracao\":\"1-10\",\"peso_liquido\":1000,\"peso_bruto\":1050}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeTransporteVolumesItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeTransporteVolumesItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeTransporteTransportadora,"{\"cnpj\":\"22222222000222\",\"razao_social\":\"TRANSPORTADORA R\u00c1PIDA LTDA\",\"ie\":\"222222222222\",\"endereco\":\"Rod. BR-101\",\"numero\":\"KM 50\",\"cidade\":\"S\u00e3o Paulo\",\"uf\":\"SP\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeTransporteTransportadora")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeTransporteTransportadora")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeDocs,"{\"xml\":\"<nfeProc versao=\\\"4.00\\\" xmlns=\\\"http://www.portalfiscal.inf.br/nfe\\\">...</nfeProc>\",\"pdf\":\"H4sIAAAAAAAAA+3BMQEAAADCoPVEAAA...\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeDocs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeDocs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeParcelasItem,"{\"numero\":\"001\",\"vencimento\":\"2025-03-27\",\"valor\":3100}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeParcelasItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeParcelasItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeFornecedorVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeFornecedorVariant0")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeFornecedorVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeTotaisIbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeTotaisIbsCbs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeTotaisIbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfeTotaisIbsCbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfeTotaisIbsCbsCbs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfeTotaisIbsCbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfse,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelo\":\"nfse\",\"status\":\"aprovado\",\"categoria\":\"recebidas\",\"data_emissao\":\"2025-03-10 16:15:12\",\"data_cancelamento\":null,\"numero\":300,\"serie\":\"1\",\"identificacao_nfse\":{\"codigo_verificacao\":\"ABC123456\",\"chave\":\"00000000000000000000000000000000000000000000000000\",\"data_competencia\":\"2025-03-10\",\"rps\":{\"serie\":\"1\",\"numero\":10,\"data_emissao\":\"2025-03-10 16:15:10\"},\"nfse_substituida\":null},\"prestador\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"PRESTADORA DE SERVI\u00c7OS LTDA\",\"im\":\"000000000000\",\"uf\":\"SP\",\"endereco\":\"Rua dos Servi\u00e7os\",\"numero\":\"100\",\"complemento\":\"Sala 201\",\"bairro\":\"Centro\",\"cep\":\"01000-000\",\"cidade\":\"S\u00e3o Paulo\",\"telefone\":\"11999999999\",\"email\":\"fiscal@prestadora.com\"},\"tomador\":{\"cnpj\":\"11111111000111\",\"razao_social\":\"EMPRESA TOMADORA S/A\",\"uf\":\"SP\",\"endereco\":\"Av. Empresarial\",\"numero\":\"500\",\"bairro\":\"Jardim Empresarial\",\"cep\":\"02000-000\",\"cidade\":\"S\u00e3o Paulo\",\"telefone\":\"11888888888\",\"email\":\"financeiro@tomadora.com\"},\"valor\":5500,\"valor_liquido\":5225,\"valor_recebido\":5225,\"desconto_incondicionado\":0,\"desconto_condicionado\":0,\"codigo_cnae\":\"6201500\",\"codigo_servico\":\"01.05\",\"codigo_tributacao_municipio\":\"620150000\",\"discriminacao\":\"DESENVOLVIMENTO E LICENCIAMENTO DE PROGRAMAS DE COMPUTADOR SOB ENCOMENDA - SISTEMA DE GEST\u00c3O EMPRESARIAL\",\"local_prestacao\":\"S\u00e3o Paulo/SP\",\"impostos\":{\"tributacao_iss\":1,\"tributacao_descricao\":\"Opera\u00e7\u00e3o tribut\u00e1vel\",\"iss_retido\":2,\"bc\":5500,\"iss_aliquota\":5,\"iss_valor\":275,\"pis_aliquota\":0.65,\"pis_valor\":35.75,\"cofins_aliquota\":3,\"cofins_valor\":165,\"inss_aliquota\":0,\"inss_valor\":0,\"ir_aliquota\":0,\"ir_valor\":0,\"csll_aliquota\":0,\"csll_valor\":0,\"cp_aliquota\":0,\"cp_valor\":0,\"ibs_cbs\":{\"bc\":5500,\"cbs\":{\"valor\":49.5,\"aliquota\":0.9,\"aliquota_efetiva\":0.9,\"aliquota_diferimento\":0},\"valor_ibs\":5.5,\"ibs_estadual\":{\"valor\":5.5,\"aliquota\":0.1,\"aliquota_efetiva\":0.1,\"aliquota_diferimento\":0},\"ibs_municipal\":{\"valor\":0,\"aliquota\":0,\"aliquota_efetiva\":0,\"aliquota_diferimento\":0},\"finalidade_nfse\":0,\"situacao_tributaria\":\"000\",\"localidade_incidencia\":{\"codigo\":\"3550308\",\"descricao\":\"S\u00e3o Paulo\"},\"cod_indicador_operacao\":\"100301\",\"indicador_destinatario\":0,\"classificacao_tributaria\":\"000001\",\"valor_calculo_reembolso_repasse\":0}}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfse")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseTotais,"{\"icms_bc\":6200,\"icms_valor\":1116,\"icms_valor_desonerado\":0,\"icms_st_bc\":0,\"icms_st_valor\":0,\"fcp_valor\":0,\"fcp_st_valor\":0,\"fcp_st_retido_valor\":0,\"ipi_valor\":310,\"ipi_devolvido_valor\":0,\"pis_valor\":102.3,\"cofins_valor\":471.2,\"ii_valor\":0,\"valor_produtos\":6200,\"valor_seguro\":0,\"valor_outras_despesas\":0,\"valor_desconto\":0,\"valor_frete\":0,\"valor_total_nfe\":7826}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseTotais")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseTotais")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseImpostos,"{\"tributacao_iss\":1,\"tributacao_descricao\":\"Opera\u00e7\u00e3o tribut\u00e1vel\",\"iss_retido\":2,\"bc\":5500,\"iss_aliquota\":5,\"iss_valor\":275,\"pis_aliquota\":0.65,\"pis_valor\":35.75,\"cofins_aliquota\":3,\"cofins_valor\":165,\"inss_aliquota\":0,\"inss_valor\":0,\"ir_aliquota\":0,\"ir_valor\":0,\"csll_aliquota\":0,\"csll_valor\":0,\"cp_aliquota\":0,\"cp_valor\":0,\"ibs_cbs\":{\"bc\":5500,\"cbs\":{\"valor\":49.5,\"aliquota\":0.9,\"aliquota_efetiva\":0.9,\"aliquota_diferimento\":0},\"valor_ibs\":5.5,\"ibs_estadual\":{\"valor\":5.5,\"aliquota\":0.1,\"aliquota_efetiva\":0.1,\"aliquota_diferimento\":0},\"ibs_municipal\":{\"valor\":0,\"aliquota\":0,\"aliquota_efetiva\":0,\"aliquota_diferimento\":0},\"finalidade_nfse\":0,\"situacao_tributaria\":\"000\",\"localidade_incidencia\":{\"codigo\":\"3550308\",\"descricao\":\"S\u00e3o Paulo\"},\"cod_indicador_operacao\":\"100301\",\"indicador_destinatario\":0,\"classificacao_tributaria\":\"000001\",\"valor_calculo_reembolso_repasse\":0}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseImpostos")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseImpostos")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseImpostosIbsCbs,"{\"bc\":5500,\"cbs\":{\"valor\":49.5,\"aliquota\":0.9,\"aliquota_efetiva\":0.9,\"aliquota_diferimento\":0},\"valor_ibs\":5.5,\"ibs_estadual\":{\"valor\":5.5,\"aliquota\":0.1,\"aliquota_efetiva\":0.1,\"aliquota_diferimento\":0},\"ibs_municipal\":{\"valor\":0,\"aliquota\":0,\"aliquota_efetiva\":0,\"aliquota_diferimento\":0},\"finalidade_nfse\":0,\"situacao_tributaria\":\"000\",\"localidade_incidencia\":{\"codigo\":\"3550308\",\"descricao\":\"S\u00e3o Paulo\"},\"cod_indicador_operacao\":\"100301\",\"indicador_destinatario\":0,\"classificacao_tributaria\":\"000001\",\"valor_calculo_reembolso_repasse\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseImpostosIbsCbs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseImpostosIbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseImpostosIbsCbsCbs,"{\"valor\":49.5,\"aliquota\":0.9,\"aliquota_efetiva\":0.9,\"aliquota_diferimento\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseImpostosIbsCbsCbs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseImpostosIbsCbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseImpostosIbsCbsIbsEstadual,"{\"valor\":5.5,\"aliquota\":0.1,\"aliquota_efetiva\":0.1,\"aliquota_diferimento\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseImpostosIbsCbsIbsEstadual")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseImpostosIbsCbsIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseImpostosIbsCbsIbsMunicipal,"{\"valor\":0,\"aliquota\":0,\"aliquota_efetiva\":0,\"aliquota_diferimento\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseImpostosIbsCbsIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseImpostosIbsCbsIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseImpostosIbsCbsLocalidadeIncidencia,"{\"codigo\":\"3550308\",\"descricao\":\"S\u00e3o Paulo\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseImpostosIbsCbsLocalidadeIncidencia")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseImpostosIbsCbsLocalidadeIncidencia")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseIdentificacaoNfse,"{\"codigo_verificacao\":\"ABC123456\",\"chave\":\"00000000000000000000000000000000000000000000000000\",\"data_competencia\":\"2025-03-10\",\"rps\":{\"serie\":\"1\",\"numero\":10,\"data_emissao\":\"2025-03-10 16:15:10\"},\"nfse_substituida\":null}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseIdentificacaoNfse")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseIdentificacaoNfse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseIdentificacaoNfseRps,"{\"serie\":\"1\",\"numero\":10,\"data_emissao\":\"2025-03-10 16:15:10\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseIdentificacaoNfseRps")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseIdentificacaoNfseRps")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseServicosItem,"{\"valor\":3000,\"valor_liquido\":2850,\"valor_recebido\":2850,\"desconto_incondicionado\":0,\"desconto_condicionado\":0,\"codigo_cnae\":\"6201500\",\"codigo_servico\":\"01.05\",\"codigo_tributacao_municipio\":\"620150000\",\"discriminacao\":\"DESENVOLVIMENTO DE SOFTWARE - M\u00d3DULO FINANCEIRO\",\"local_prestacao\":\"S\u00e3o Paulo/SP\",\"impostos\":{\"tributacao_iss\":\"1\",\"tributacao_descricao\":\"Tributada Integralmente (TI)\",\"iss_retido\":2,\"bc\":3000,\"iss_aliquota\":5,\"iss_valor\":150,\"pis_aliquota\":0.65,\"pis_valor\":19.5,\"cofins_aliquota\":3,\"cofins_valor\":90,\"inss_aliquota\":0,\"inss_valor\":0,\"ir_aliquota\":0,\"ir_valor\":0,\"csll_aliquota\":0,\"csll_valor\":0,\"cp_aliquota\":0,\"cp_valor\":0,\"ibs_cbs\":{\"bc\":3000,\"cbs\":{\"valor\":27,\"aliquota\":0.9,\"aliquota_efetiva\":0.9,\"aliquota_diferimento\":0},\"valor_ibs\":3,\"ibs_estadual\":{\"valor\":3,\"aliquota\":0.1,\"aliquota_efetiva\":0.1,\"aliquota_diferimento\":0},\"ibs_municipal\":{\"valor\":0,\"aliquota\":0,\"aliquota_efetiva\":0,\"aliquota_diferimento\":0},\"finalidade_nfse\":0,\"situacao_tributaria\":\"000\",\"localidade_incidencia\":{\"codigo\":\"3550308\",\"descricao\":\"S\u00e3o Paulo\"},\"cod_indicador_operacao\":\"100301\",\"indicador_destinatario\":0,\"classificacao_tributaria\":\"000001\",\"valor_calculo_reembolso_repasse\":0}}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseServicosItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseServicosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseServicosItemLocalPrestacaoVariant1,"{\"uf\":\"SC\",\"cidade\":\"Palho\u00e7a\",\"codigo_municipio\":\"4211900\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseServicosItemLocalPrestacaoVariant1")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseServicosItemLocalPrestacaoVariant1")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseServicosItemLocalPrestacao,"\"S\u00e3o Paulo/SP\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseServicosItemLocalPrestacao")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseServicosItemLocalPrestacao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseServicosItemImpostos,"{\"tributacao_iss\":\"1\",\"tributacao_descricao\":\"Tributada Integralmente (TI)\",\"iss_retido\":2,\"bc\":3000,\"iss_aliquota\":5,\"iss_valor\":150,\"pis_aliquota\":0.65,\"pis_valor\":19.5,\"cofins_aliquota\":3,\"cofins_valor\":90,\"inss_aliquota\":0,\"inss_valor\":0,\"ir_aliquota\":0,\"ir_valor\":0,\"csll_aliquota\":0,\"csll_valor\":0,\"cp_aliquota\":0,\"cp_valor\":0,\"ibs_cbs\":{\"bc\":3000,\"cbs\":{\"valor\":27,\"aliquota\":0.9,\"aliquota_efetiva\":0.9,\"aliquota_diferimento\":0},\"valor_ibs\":3,\"ibs_estadual\":{\"valor\":3,\"aliquota\":0.1,\"aliquota_efetiva\":0.1,\"aliquota_diferimento\":0},\"ibs_municipal\":{\"valor\":0,\"aliquota\":0,\"aliquota_efetiva\":0,\"aliquota_diferimento\":0},\"finalidade_nfse\":0,\"situacao_tributaria\":\"000\",\"localidade_incidencia\":{\"codigo\":\"3550308\",\"descricao\":\"S\u00e3o Paulo\"},\"cod_indicador_operacao\":\"100301\",\"indicador_destinatario\":0,\"classificacao_tributaria\":\"000001\",\"valor_calculo_reembolso_repasse\":0}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseServicosItemImpostos")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseServicosItemImpostos")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseServicosItemImpostosIbsCbs,"{\"bc\":3000,\"cbs\":{\"valor\":27,\"aliquota\":0.9,\"aliquota_efetiva\":0.9,\"aliquota_diferimento\":0},\"valor_ibs\":3,\"ibs_estadual\":{\"valor\":3,\"aliquota\":0.1,\"aliquota_efetiva\":0.1,\"aliquota_diferimento\":0},\"ibs_municipal\":{\"valor\":0,\"aliquota\":0,\"aliquota_efetiva\":0,\"aliquota_diferimento\":0},\"finalidade_nfse\":0,\"situacao_tributaria\":\"000\",\"localidade_incidencia\":{\"codigo\":\"3550308\",\"descricao\":\"S\u00e3o Paulo\"},\"cod_indicador_operacao\":\"100301\",\"indicador_destinatario\":0,\"classificacao_tributaria\":\"000001\",\"valor_calculo_reembolso_repasse\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseServicosItemImpostosIbsCbs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseServicosItemImpostosIbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseServicosItemImpostosIbsCbsCbs,"{\"valor\":27,\"aliquota\":0.9,\"aliquota_efetiva\":0.9,\"aliquota_diferimento\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseServicosItemImpostosIbsCbsCbs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseServicosItemImpostosIbsCbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseServicosItemImpostosIbsCbsIbsEstadual,"{\"valor\":3,\"aliquota\":0.1,\"aliquota_efetiva\":0.1,\"aliquota_diferimento\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseServicosItemImpostosIbsCbsIbsEstadual")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseServicosItemImpostosIbsCbsIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseServicosItemImpostosIbsCbsIbsMunicipal,"{\"valor\":0,\"aliquota\":0,\"aliquota_efetiva\":0,\"aliquota_diferimento\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseServicosItemImpostosIbsCbsIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseServicosItemImpostosIbsCbsIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseServicosItemImpostosIbsCbsLocalidadeIncidencia,"{\"codigo\":\"3550308\",\"descricao\":\"S\u00e3o Paulo\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseServicosItemImpostosIbsCbsLocalidadeIncidencia")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseServicosItemImpostosIbsCbsLocalidadeIncidencia")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseLocalPrestacaoVariant1,"{\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"codigo_municipio\":\"3550308\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseLocalPrestacaoVariant1")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseLocalPrestacaoVariant1")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseLocalPrestacao,"\"S\u00e3o Paulo/SP\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseLocalPrestacao")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseLocalPrestacao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseDocs,"{\"xml\":\"<nfeProc versao=\\\"4.00\\\" xmlns=\\\"http://www.portalfiscal.inf.br/nfe\\\">...</nfeProc>\",\"pdf\":\"H4sIAAAAAAAAA+3BMQEAAADCoPVEAAA...\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseDocs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseDocs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentNfseFornecedorVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentNfseFornecedorVariant0")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentNfseFornecedorVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfe,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelo\":\"mdfe\",\"status\":\"aprovado\",\"categoria\":\"proprietario_veiculos\",\"data_emissao\":\"2025-02-01 20:09:54\",\"numero\":600,\"serie\":1,\"chave\":\"00000000000000000000000000000000000000000000\",\"valor\":23000,\"modalidade\":1,\"uf_carregamento\":\"BA\",\"uf_descarregamento\":\"PA\",\"peso_bruto\":6300,\"quantidade_nfe\":3,\"quantidade_cte\":1,\"quantidade_mdfe\":0,\"emitente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"TRANSPORTADORA NACIONAL LTDA\",\"ie\":\"000000000\",\"uf\":\"BA\",\"endereco\":\"Rod. BR-101\",\"numero\":\"KM 150\",\"complemento\":\"Posto Fiscal\",\"bairro\":\"Zona Rural\",\"cep\":\"40000-000\",\"cidade\":\"Salvador\",\"telefone\":\"71999999999\",\"email\":\"mdfe@transportadora.com\"},\"carregamento\":[{\"cidade\":\"Salvador\",\"uf\":\"BA\",\"documentos\":[{\"tipo\":\"NFe\",\"chave\":\"29250212345678901234550010000001231234567890\"},{\"tipo\":\"NFe\",\"chave\":\"29250212345678901234550010000001241234567891\"}]}],\"descarregamento\":[{\"cidade\":\"Bel\u00e9m\",\"uf\":\"PA\",\"documentos\":[{\"tipo\":\"NFe\",\"chave\":\"29250212345678901234550010000001231234567890\"},{\"tipo\":\"NFe\",\"chave\":\"29250212345678901234550010000001241234567891\"},{\"tipo\":\"NFe\",\"chave\":\"29250212345678901234550010000001251234567892\"},{\"tipo\":\"CTe\",\"chave\":\"29250287654321098765570010000008001234567893\"}]}],\"percurso\":[{\"uf\":\"BA\",\"ordem\":1},{\"uf\":\"MG\",\"ordem\":2},{\"uf\":\"ES\",\"ordem\":3},{\"uf\":\"RJ\",\"ordem\":4},{\"uf\":\"MG\",\"ordem\":5},{\"uf\":\"GO\",\"ordem\":6},{\"uf\":\"TO\",\"ordem\":7},{\"uf\":\"PA\",\"ordem\":8}],\"rodoviario\":{\"rntrc\":\"12345678\",\"ciot\":[{\"numero\":\"123456789012\",\"cpf_cnpj\":\"12345678901\"}],\"veiculos\":[{\"codigo_interno\":\"001\",\"placa\":\"ABC1234\",\"renavam\":\"123456789\",\"tara\":8000,\"capacidade_kg\":15000,\"capacidade_m3\":90,\"tipo_rodado\":\"06\",\"tipo_carroceria\":\"00\",\"uf\":\"BA\",\"condutor\":{\"cpf\":\"12345678901\",\"nome\":\"JOS\u00c9 DA SILVA\"}},{\"codigo_interno\":\"002\",\"placa\":\"DEF5678\",\"renavam\":\"987654321\",\"tara\":4000,\"capacidade_kg\":10000,\"capacidade_m3\":60,\"tipo_rodado\":\"04\",\"tipo_carroceria\":\"01\",\"uf\":\"BA\"}],\"vale_pedagio\":{\"cnpj_fornecedor\":\"33333333000333\",\"cnpj_responsavel\":\"00000000000000\",\"numero_comprovante\":\"123456\",\"valor\":150.5},\"contratantes\":[{\"cnpj\":\"44444444000444\",\"razao_social\":\"EMPRESA CONTRATANTE LTDA\"}],\"lacres\":[{\"numero\":\"LAC001\"},{\"numero\":\"LAC002\"}]}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfe")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfe")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeCarregamentoItem,"{\"cidade\":\"Salvador\",\"uf\":\"BA\",\"documentos\":[{\"tipo\":\"NFe\",\"chave\":\"29250212345678901234550010000001231234567890\"},{\"tipo\":\"NFe\",\"chave\":\"29250212345678901234550010000001241234567891\"}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeCarregamentoItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeCarregamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeCarregamentoItemDocumentosItem,"{\"tipo\":\"NFe\",\"chave\":\"29250212345678901234550010000001231234567890\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeCarregamentoItemDocumentosItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeCarregamentoItemDocumentosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeSeguroItem,"{\"responsavel\":{\"tipo_responsavel\":\"2\",\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\"},\"seguradora\":{\"cnpj\":\"00000000000000\",\"nome_seguradora\":\"XXXXXXXXXXXX\"},\"numero_apolice\":\"000000000000\",\"numero_averbacao\":[\"000000000000\"]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeSeguroItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeSeguroItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeSeguroItemResponsavel,"{\"tipo_responsavel\":\"2\",\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeSeguroItemResponsavel")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeSeguroItemResponsavel")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeSeguroItemSeguradora,"{\"cnpj\":\"00000000000000\",\"nome_seguradora\":\"XXXXXXXXXXXX\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeSeguroItemSeguradora")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeSeguroItemSeguradora")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfePercursoItemVariant0,"{\"uf\":\"BA\",\"ordem\":1}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfePercursoItemVariant0")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfePercursoItemVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfePercursoItem,"{\"uf\":\"BA\",\"ordem\":1}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfePercursoItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfePercursoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeDescarregamentoItem,"{\"cidade\":\"Bel\u00e9m\",\"uf\":\"PA\",\"documentos\":[{\"tipo\":\"NFe\",\"chave\":\"29250212345678901234550010000001231234567890\"},{\"tipo\":\"NFe\",\"chave\":\"29250212345678901234550010000001241234567891\"},{\"tipo\":\"NFe\",\"chave\":\"29250212345678901234550010000001251234567892\"},{\"tipo\":\"CTe\",\"chave\":\"29250287654321098765570010000008001234567893\"}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeDescarregamentoItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeDescarregamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeDescarregamentoItemDocumentosFiscaisItem,"{\"chave\":\"00000000000000000000000000000000000000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeDescarregamentoItemDocumentosFiscaisItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeDescarregamentoItemDocumentosFiscaisItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeDescarregamentoItemDocumentosItem,"{\"tipo\":\"NFe\",\"chave\":\"29250212345678901234550010000001231234567890\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeDescarregamentoItemDocumentosItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeDescarregamentoItemDocumentosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeFerroviario,"{\"trem\":{\"prefixo\":\"ABC123\",\"data_liberacao\":\"2025-03-02 20:00:00\",\"origem\":\"A12\",\"destino\":\"B34\"},\"vagoes\":[{\"peso_bc\":\"0\",\"peso_real\":\"0\",\"tipo_vagao\":\"ABC\",\"serie\":\"XYZ\",\"numero\":\"110\",\"sequencia_vagao\":\"1\",\"tonelada_util\":\"0\"}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeFerroviario")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeFerroviario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeFerroviarioTrem,"{\"prefixo\":\"ABC123\",\"data_liberacao\":\"2025-03-02 20:00:00\",\"origem\":\"A12\",\"destino\":\"B34\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeFerroviarioTrem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeFerroviarioTrem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeFerroviarioVagoesItem,"{\"peso_bc\":\"0\",\"peso_real\":\"0\",\"tipo_vagao\":\"ABC\",\"serie\":\"XYZ\",\"numero\":\"110\",\"sequencia_vagao\":\"1\",\"tonelada_util\":\"0\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeFerroviarioVagoesItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeFerroviarioVagoesItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeProdutoPredominante,"{\"tipo_carga\":\"02\",\"nome\":\"XXXXXX\",\"gtin\":\"00000000000000\",\"ncm\":\"00000000\",\"lotacao\":{\"carregamento\":{\"cep\":\"00000-000\",\"latitude\":\"00.000\",\"longitude\":\"00.000\"},\"descarregamento\":{\"cep\":\"00000-000\",\"latitude\":\"00.000\",\"longitude\":\"00.000\"}}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeProdutoPredominante")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeProdutoPredominante")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeProdutoPredominanteLotacao,"{\"carregamento\":{\"cep\":\"00000-000\",\"latitude\":\"00.000\",\"longitude\":\"00.000\"},\"descarregamento\":{\"cep\":\"00000-000\",\"latitude\":\"00.000\",\"longitude\":\"00.000\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeProdutoPredominanteLotacao")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeProdutoPredominanteLotacao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeProdutoPredominanteLotacaoCarregamento,"{\"cep\":\"00000-000\",\"latitude\":\"00.000\",\"longitude\":\"00.000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeProdutoPredominanteLotacaoCarregamento")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeProdutoPredominanteLotacaoCarregamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeProdutoPredominanteLotacaoDescarregamento,"{\"cep\":\"00000-000\",\"latitude\":\"00.000\",\"longitude\":\"00.000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeProdutoPredominanteLotacaoDescarregamento")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeProdutoPredominanteLotacaoDescarregamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeAquaviario,"{\"irin\":\"XXXX12345\",\"tipo_embarcacao\":\"01\",\"codigo_embarcacao\":\"AB12345\",\"nome_embarcacao\":\"XXXX XXXXXXXX\",\"numero_viagem\":\"AA12345\",\"codigo_porto_embarque\":\"XXXXX\",\"codigo_porto_destino\":\"XXXXX\",\"porto_transbordo\":\"XXXXXXXXX\",\"tipo_navegacao\":\"1\",\"terminal_carregamento\":[{\"codigo\":\"TC1\",\"nome\":\"XXXXXXXXXXX\"}],\"terminal_descarregamento\":[{\"codigo\":\"TD1\",\"nome\":\"XXXXXXXXXXX\"}],\"embarcacao_comboio\":[{\"codigo\":\"EC1\",\"identificador_balsa\":\"XXXXXXXXXXX\"}],\"carga_vazia\":[{\"identificador\":\"UCV1\",\"tipo_unidade\":1}],\"transporte_vazio\":[{\"identificador\":\"UTV1\",\"tipo_unidade\":1}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeAquaviario")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeAquaviario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeAquaviarioTerminalCarregamentoItem,"{\"codigo\":\"TC1\",\"nome\":\"XXXXXXXXXXX\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeAquaviarioTerminalCarregamentoItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeAquaviarioTerminalCarregamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeAquaviarioTerminalDescarregamentoItem,"{\"codigo\":\"TD1\",\"nome\":\"XXXXXXXXXXX\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeAquaviarioTerminalDescarregamentoItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeAquaviarioTerminalDescarregamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeAquaviarioEmbarcacaoComboioItem,"{\"codigo\":\"EC1\",\"identificador_balsa\":\"XXXXXXXXXXX\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeAquaviarioEmbarcacaoComboioItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeAquaviarioEmbarcacaoComboioItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeAquaviarioCargaVaziaItem,"{\"identificador\":\"UCV1\",\"tipo_unidade\":1}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeAquaviarioCargaVaziaItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeAquaviarioCargaVaziaItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeAquaviarioTransporteVazioItem,"{\"identificador\":\"UTV1\",\"tipo_unidade\":1}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeAquaviarioTransporteVazioItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeAquaviarioTransporteVazioItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeRodoviario,"{\"rntrc\":\"12345678\",\"ciot\":[{\"numero\":\"123456789012\",\"cpf_cnpj\":\"12345678901\"}],\"veiculos\":[{\"codigo_interno\":\"001\",\"placa\":\"ABC1234\",\"renavam\":\"123456789\",\"tara\":8000,\"capacidade_kg\":15000,\"capacidade_m3\":90,\"tipo_rodado\":\"06\",\"tipo_carroceria\":\"00\",\"uf\":\"BA\",\"condutor\":{\"cpf\":\"12345678901\",\"nome\":\"JOS\u00c9 DA SILVA\"}},{\"codigo_interno\":\"002\",\"placa\":\"DEF5678\",\"renavam\":\"987654321\",\"tara\":4000,\"capacidade_kg\":10000,\"capacidade_m3\":60,\"tipo_rodado\":\"04\",\"tipo_carroceria\":\"01\",\"uf\":\"BA\"}],\"vale_pedagio\":{\"cnpj_fornecedor\":\"33333333000333\",\"cnpj_responsavel\":\"00000000000000\",\"numero_comprovante\":\"123456\",\"valor\":150.5},\"contratantes\":[{\"cnpj\":\"44444444000444\",\"razao_social\":\"EMPRESA CONTRATANTE LTDA\"}],\"lacres\":[{\"numero\":\"LAC001\"},{\"numero\":\"LAC002\"}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeRodoviario")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeRodoviario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeRodoviarioContratantesItem,"{\"cnpj\":\"44444444000444\",\"razao_social\":\"EMPRESA CONTRATANTE LTDA\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeRodoviarioContratantesItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeRodoviarioContratantesItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeRodoviarioVeiculoReboqueItem,"{\"codigo_interno\":\"2\",\"placa\":\"ABC0E00\",\"renavam\":\"00000000000\",\"tara\":\"0\",\"capacidade_kg\":\"100\",\"capacidade_m3\":\"0\",\"tipo_carroceria\":\"00\",\"uf_licenciamento\":\"MT\",\"proprietario\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXXXX XXXXXXXXXXXX\",\"nome_completo\":\"XXXXXX XXXXXX XXX\",\"ie\":\"0000000000\",\"rntrc\":\"00000000\",\"uf\":\"PR\",\"tipo_proprietario\":2}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeRodoviarioVeiculoReboqueItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeRodoviarioVeiculoReboqueItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeRodoviarioVeiculoReboqueItemProprietario,"{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXXXX XXXXXXXXXXXX\",\"nome_completo\":\"XXXXXX XXXXXX XXX\",\"ie\":\"0000000000\",\"rntrc\":\"00000000\",\"uf\":\"PR\",\"tipo_proprietario\":2}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeRodoviarioVeiculoReboqueItemProprietario")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeRodoviarioVeiculoReboqueItemProprietario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeRodoviarioLacresItem,"{\"numero\":\"LAC001\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeRodoviarioLacresItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeRodoviarioLacresItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeRodoviarioVeiculosItem,"{\"codigo_interno\":\"001\",\"placa\":\"ABC1234\",\"renavam\":\"123456789\",\"tara\":8000,\"capacidade_kg\":15000,\"capacidade_m3\":90,\"tipo_rodado\":\"06\",\"tipo_carroceria\":\"00\",\"uf\":\"BA\",\"condutor\":{\"cpf\":\"12345678901\",\"nome\":\"JOS\u00c9 DA SILVA\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeRodoviarioVeiculosItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeRodoviarioVeiculosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeRodoviarioVeiculosItemCondutor,"{\"cpf\":\"12345678901\",\"nome\":\"JOS\u00c9 DA SILVA\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeRodoviarioVeiculosItemCondutor")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeRodoviarioVeiculosItemCondutor")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeRodoviarioCiotItem,"{\"numero\":\"123456789012\",\"cpf_cnpj\":\"12345678901\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeRodoviarioCiotItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeRodoviarioCiotItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeRodoviarioContratanteItem,"{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeRodoviarioContratanteItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeRodoviarioContratanteItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeRodoviarioCondutorItem,"{\"cpf\":\"00000000000\",\"nome\":\"XXXXXXX XXXXXXXXXXXXXX\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeRodoviarioCondutorItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeRodoviarioCondutorItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeRodoviarioVeiculoTracao,"{\"codigo_interno\":\"1\",\"placa\":\"ABC0D00\",\"renavam\":\"00000000000\",\"tara\":\"0\",\"capacidade_kg\":\"100\",\"capacidade_m3\":\"0\",\"tipo_rodado\":\"06\",\"tipo_carroceria\":\"00\",\"uf_licenciamento\":\"MT\",\"proprietario\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXXXX XXXXXXXXXXXX\",\"nome_completo\":\"XXXXXX XXXXXX XXX\",\"ie\":\"0000000000\",\"rntrc\":\"00000000\",\"uf\":\"PR\",\"tipo_proprietario\":2}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeRodoviarioVeiculoTracao")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeRodoviarioVeiculoTracao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeRodoviarioVeiculoTracaoProprietario,"{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXXXX XXXXXXXXXXXX\",\"nome_completo\":\"XXXXXX XXXXXX XXX\",\"ie\":\"0000000000\",\"rntrc\":\"00000000\",\"uf\":\"PR\",\"tipo_proprietario\":2}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeRodoviarioVeiculoTracaoProprietario")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeRodoviarioVeiculoTracaoProprietario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeRodoviarioValePedagioVariant0,"{\"cnpj_fornecedor\":\"33333333000333\",\"cnpj_responsavel\":\"00000000000000\",\"numero_comprovante\":\"123456\",\"valor\":150.5}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeRodoviarioValePedagioVariant0")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeRodoviarioValePedagioVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeRodoviarioValePedagioVariant1Item,"{\"cnpj_fornecedor\":\"00000000000000\",\"cnpj_responsavel\":\"00000000000000\",\"cpf_responsavel\":\"00000000000\",\"valor\":\"327.00\",\"comprovante\":\"00000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeRodoviarioValePedagioVariant1Item")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeRodoviarioValePedagioVariant1Item")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeRodoviarioValePedagio,"{\"cnpj_fornecedor\":\"33333333000333\",\"cnpj_responsavel\":\"00000000000000\",\"numero_comprovante\":\"123456\",\"valor\":150.5}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeRodoviarioValePedagio")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeRodoviarioValePedagio")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeDocs,"{\"xml\":\"<nfeProc versao=\\\"4.00\\\" xmlns=\\\"http://www.portalfiscal.inf.br/nfe\\\">...</nfeProc>\",\"pdf\":\"H4sIAAAAAAAAA+3BMQEAAADCoPVEAAA...\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeDocs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeDocs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeAereo,"{\"nacionalidade_aeronave\":\"XXXX\",\"matricula_aeronave\":\"XXXXXX\",\"numero_voo\":\"AB1234\",\"aerodromo_embarque\":\"AB1\",\"aerodromo_destino\":\"AB2\",\"data_voo\":\"2025-02-03\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeAereo")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeAereo")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentMdfeFornecedorVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentMdfeFornecedorVariant0")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentMdfeFornecedorVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCte,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelo\":\"cte\",\"status\":\"aprovado\",\"categoria\":\"citadas\",\"data_emissao\":\"2025-02-22 17:08:23\",\"numero\":800,\"serie\":1,\"chave\":\"00000000000000000000000000000000000000000000\",\"valor\":5600,\"finalidade\":0,\"cfop\":[\"6353\"],\"modalidade\":1,\"uf_inicio_prestacao\":\"SP\",\"uf_termino_prestacao\":\"PR\",\"natureza_operacao\":\"PRESTA\u00c7\u00c3O DE SERVI\u00c7O DE TRANSPORTE A ESTABELECIMENTO INDUSTRIAL\",\"indicador_tomador\":0,\"emitente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"TRANSPORTADORA EXPRESS LTDA\",\"ie\":\"000000000\",\"uf\":\"SP\",\"endereco\":\"Rod. Anhanguera\",\"numero\":\"KM 30\",\"complemento\":\"Galp\u00e3o Log\u00edstico\",\"bairro\":\"Distrito Industrial\",\"cep\":\"13000-000\",\"cidade\":\"Campinas\",\"telefone\":\"19999999999\",\"email\":\"cte@transportadora.com\"},\"remetente\":{\"cnpj\":\"11111111000111\",\"razao_social\":\"IND\u00daSTRIA METAL\u00daRGICA LTDA\",\"ie\":\"111111111111\",\"uf\":\"SP\",\"endereco\":\"Av. Industrial\",\"numero\":\"5000\",\"complemento\":\"Bloco A\",\"bairro\":\"Parque Industrial\",\"cep\":\"13200-000\",\"cidade\":\"Jundia\u00ed\",\"telefone\":\"11888888888\",\"email\":\"logistica@industria.com\"},\"destinatario\":{\"cnpj\":\"22222222000222\",\"razao_social\":\"DISTRIBUIDORA PARANAENSE S/A\",\"ie\":\"222222222222\",\"uf\":\"PR\",\"endereco\":\"Rua das Ind\u00fastrias\",\"numero\":\"1500\",\"bairro\":\"CIC\",\"cep\":\"81000-000\",\"cidade\":\"Curitiba\",\"telefone\":\"41777777777\",\"email\":\"recebimento@distribuidora.com\"},\"expedidor\":null,\"recebedor\":null,\"tomador\":{\"cnpj\":\"11111111000111\",\"razao_social\":\"IND\u00daSTRIA METAL\u00daRGICA LTDA\",\"ie\":\"111111111111\",\"uf\":\"SP\",\"endereco\":\"Av. Industrial\",\"numero\":\"5000\",\"complemento\":\"Bloco A\",\"bairro\":\"Parque Industrial\",\"cep\":\"13200-000\",\"cidade\":\"Jundia\u00ed\",\"telefone\":\"11888888888\",\"email\":\"fiscal@industria.com\"},\"impostos\":{\"icms\":{\"codigo_cfop\":\"5353\",\"situacao_tributaria\":\"00\",\"bc\":5600,\"aliquota\":12,\"valor\":672,\"percentual_reducao\":0,\"valor_credito\":0,\"percentual_credito\":0},\"ibs_cbs\":{\"situacao_tributaria\":\"000\",\"classificacao_tributaria\":\"000001\",\"indicador_doacao\":false,\"bc\":5600,\"valor_ibs\":112.0,\"ibs_estadual\":{\"aliquota\":1.2,\"valor\":67.2,\"aliquota_diferimento\":0.1,\"valor_diferimento\":5.6,\"valor_devolvido\":2.8,\"aliquota_reducao\":0.2,\"aliquota_efetiva\":1.0},\"ibs_municipal\":{\"aliquota\":0.8,\"valor\":44.8,\"aliquota_diferimento\":0.05,\"valor_diferimento\":2.8,\"valor_devolvido\":1.12,\"aliquota_reducao\":0.1,\"aliquota_efetiva\":0.7},\"cbs\":{\"aliquota\":0.9,\"valor\":50.4,\"aliquota_diferimento\":0.03,\"valor_diferimento\":1.68,\"valor_devolvido\":0.56,\"aliquota_reducao\":0.05,\"aliquota_efetiva\":0.85},\"situacao_tributaria_regular\":\"000\",\"classificacao_tributaria_regular\":\"000001\",\"tributacao_regular\":{\"ibs_estadual\":{\"aliquota_efetiva\":1.1,\"valor\":61.6},\"ibs_municipal\":{\"aliquota_efetiva\":0.75,\"valor\":42.0},\"cbs\":{\"aliquota_efetiva\":0.88,\"valor\":49.28}},\"compra_governamental\":{\"ibs_estadual\":{\"aliquota\":1.0,\"valor\":56.0},\"ibs_municipal\":{\"aliquota\":0.6,\"valor\":33.6},\"cbs\":{\"aliquota\":0.7,\"valor\":39.2}},\"credito_presumido\":{\"classificacao\":\"01\",\"aliquota_ibs\":0.5,\"valor_ibs\":28.0,\"valor_ibs_condicionado_suspensao\":1.12,\"aliquota_cbs\":0.3,\"valor_cbs\":16.8,\"valor_cbs_condicionado_suspensao\":0.56},\"estorno_credito\":{\"valor_ibs\":5.6,\"valor_cbs\":2.8}}},\"servico\":{\"descricao\":\"TRANSPORTE RODOVI\u00c1RIO DE PRODUTOS METAL\u00daRGICOS\",\"quantidade_carga\":2500,\"unidade_medida\":\"KG\",\"tipo_servico\":0,\"modal\":\"01\",\"documentos_originarios\":[{\"tipo\":\"NFe\",\"chave\":\"35250211111111000111550010000123451234567890\",\"serie\":\"1\",\"numero\":\"12345\",\"data_emissao\":\"2025-02-20\"},{\"tipo\":\"NFe\",\"chave\":\"35250211111111000111550010000123461234567891\",\"serie\":\"1\",\"numero\":\"12346\",\"data_emissao\":\"2025-02-20\"}],\"componentes_valor\":[{\"nome\":\"FRETE PESO\",\"valor\":4500},{\"nome\":\"GRIS\",\"valor\":500},{\"nome\":\"PEDAGIO\",\"valor\":350},{\"nome\":\"TAS\",\"valor\":250}],\"informacoes_carga\":{\"valor_total\":125000,\"produto_predominante\":\"PRODUTOS METAL\u00daRGICOS\",\"outras_caracteristicas\":\"CARGA FRACIONADA\",\"cubagem\":{\"quantidade\":15,\"unidade\":\"M3\"}}}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCte")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCte")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteDocumentosFiscaisItem,"{\"chave\":\"00000000000000000000000000000000000000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteDocumentosFiscaisItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteDocumentosFiscaisItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteServico,"{\"descricao\":\"TRANSPORTE RODOVI\u00c1RIO DE PRODUTOS METAL\u00daRGICOS\",\"quantidade_carga\":2500,\"unidade_medida\":\"KG\",\"tipo_servico\":0,\"modal\":\"01\",\"documentos_originarios\":[{\"tipo\":\"NFe\",\"chave\":\"35250211111111000111550010000123451234567890\",\"serie\":\"1\",\"numero\":\"12345\",\"data_emissao\":\"2025-02-20\"},{\"tipo\":\"NFe\",\"chave\":\"35250211111111000111550010000123461234567891\",\"serie\":\"1\",\"numero\":\"12346\",\"data_emissao\":\"2025-02-20\"}],\"componentes_valor\":[{\"nome\":\"FRETE PESO\",\"valor\":4500},{\"nome\":\"GRIS\",\"valor\":500},{\"nome\":\"PEDAGIO\",\"valor\":350},{\"nome\":\"TAS\",\"valor\":250}],\"informacoes_carga\":{\"valor_total\":125000,\"produto_predominante\":\"PRODUTOS METAL\u00daRGICOS\",\"outras_caracteristicas\":\"CARGA FRACIONADA\",\"cubagem\":{\"quantidade\":15,\"unidade\":\"M3\"}}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteServico")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteServico")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteServicoDocumentosOriginariosItem,"{\"tipo\":\"NFe\",\"chave\":\"35250211111111000111550010000123451234567890\",\"serie\":\"1\",\"numero\":\"12345\",\"data_emissao\":\"2025-02-20\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteServicoDocumentosOriginariosItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteServicoDocumentosOriginariosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteServicoComponentesValorItem,"{\"nome\":\"FRETE PESO\",\"valor\":4500}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteServicoComponentesValorItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteServicoComponentesValorItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteServicoInformacoesCarga,"{\"valor_total\":125000,\"produto_predominante\":\"PRODUTOS METAL\u00daRGICOS\",\"outras_caracteristicas\":\"CARGA FRACIONADA\",\"cubagem\":{\"quantidade\":15,\"unidade\":\"M3\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteServicoInformacoesCarga")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteServicoInformacoesCarga")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteServicoInformacoesCargaCubagem,"{\"quantidade\":15,\"unidade\":\"M3\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteServicoInformacoesCargaCubagem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteServicoInformacoesCargaCubagem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteImpostos,"{\"tributacao_iss\":1,\"tributacao_descricao\":\"Opera\u00e7\u00e3o tribut\u00e1vel\",\"iss_retido\":2,\"bc\":5500,\"iss_aliquota\":5,\"iss_valor\":275,\"pis_aliquota\":0.65,\"pis_valor\":35.75,\"cofins_aliquota\":3,\"cofins_valor\":165,\"inss_aliquota\":0,\"inss_valor\":0,\"ir_aliquota\":0,\"ir_valor\":0,\"csll_aliquota\":0,\"csll_valor\":0,\"cp_aliquota\":0,\"cp_valor\":0,\"ibs_cbs\":{\"bc\":5500,\"cbs\":{\"valor\":49.5,\"aliquota\":0.9,\"aliquota_efetiva\":0.9,\"aliquota_diferimento\":0},\"valor_ibs\":5.5,\"ibs_estadual\":{\"valor\":5.5,\"aliquota\":0.1,\"aliquota_efetiva\":0.1,\"aliquota_diferimento\":0},\"ibs_municipal\":{\"valor\":0,\"aliquota\":0,\"aliquota_efetiva\":0,\"aliquota_diferimento\":0},\"finalidade_nfse\":0,\"situacao_tributaria\":\"000\",\"localidade_incidencia\":{\"codigo\":\"3550308\",\"descricao\":\"S\u00e3o Paulo\"},\"cod_indicador_operacao\":\"100301\",\"indicador_destinatario\":0,\"classificacao_tributaria\":\"000001\",\"valor_calculo_reembolso_repasse\":0}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteImpostos")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteImpostos")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteImpostosIbsCbs,"{\"bc\":5500,\"cbs\":{\"valor\":49.5,\"aliquota\":0.9,\"aliquota_efetiva\":0.9,\"aliquota_diferimento\":0},\"valor_ibs\":5.5,\"ibs_estadual\":{\"valor\":5.5,\"aliquota\":0.1,\"aliquota_efetiva\":0.1,\"aliquota_diferimento\":0},\"ibs_municipal\":{\"valor\":0,\"aliquota\":0,\"aliquota_efetiva\":0,\"aliquota_diferimento\":0},\"finalidade_nfse\":0,\"situacao_tributaria\":\"000\",\"localidade_incidencia\":{\"codigo\":\"3550308\",\"descricao\":\"S\u00e3o Paulo\"},\"cod_indicador_operacao\":\"100301\",\"indicador_destinatario\":0,\"classificacao_tributaria\":\"000001\",\"valor_calculo_reembolso_repasse\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteImpostosIbsCbs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteImpostosIbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsIbsEstadual,"{\"valor\":5.5,\"aliquota\":0.1,\"aliquota_efetiva\":0.1,\"aliquota_diferimento\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteImpostosIbsCbsIbsEstadual")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteImpostosIbsCbsIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsIbsMunicipal,"{\"valor\":0,\"aliquota\":0,\"aliquota_efetiva\":0,\"aliquota_diferimento\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteImpostosIbsCbsIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteImpostosIbsCbsIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsCbs,"{\"valor\":49.5,\"aliquota\":0.9,\"aliquota_efetiva\":0.9,\"aliquota_diferimento\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteImpostosIbsCbsCbs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteImpostosIbsCbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsTributacaoRegular,"{\"ibs_estadual\":{\"aliquota_efetiva\":1.1,\"valor\":61.6},\"ibs_municipal\":{\"aliquota_efetiva\":0.75,\"valor\":42.0},\"cbs\":{\"aliquota_efetiva\":0.88,\"valor\":49.28}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteImpostosIbsCbsTributacaoRegular")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteImpostosIbsCbsTributacaoRegular")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsEstadual,"{\"aliquota_efetiva\":1.1,\"valor\":61.6}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsEstadual")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsMunicipal,"{\"aliquota_efetiva\":0.75,\"valor\":42.0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsTributacaoRegularCbs,"{\"aliquota_efetiva\":0.88,\"valor\":49.28}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteImpostosIbsCbsTributacaoRegularCbs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteImpostosIbsCbsTributacaoRegularCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsCompraGovernamental,"{\"ibs_estadual\":{\"aliquota\":1.0,\"valor\":56.0},\"ibs_municipal\":{\"aliquota\":0.6,\"valor\":33.6},\"cbs\":{\"aliquota\":0.7,\"valor\":39.2}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteImpostosIbsCbsCompraGovernamental")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteImpostosIbsCbsCompraGovernamental")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsEstadual,"{\"aliquota\":1.0,\"valor\":56.0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsEstadual")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsMunicipal,"{\"aliquota\":0.6,\"valor\":33.6}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsCompraGovernamentalCbs,"{\"aliquota\":0.7,\"valor\":39.2}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteImpostosIbsCbsCompraGovernamentalCbs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteImpostosIbsCbsCompraGovernamentalCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsCreditoPresumido,"{\"classificacao\":\"01\",\"aliquota_ibs\":0.5,\"valor_ibs\":28.0,\"valor_ibs_condicionado_suspensao\":1.12,\"aliquota_cbs\":0.3,\"valor_cbs\":16.8,\"valor_cbs_condicionado_suspensao\":0.56}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteImpostosIbsCbsCreditoPresumido")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteImpostosIbsCbsCreditoPresumido")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteImpostosIbsCbsEstornoCredito,"{\"valor_ibs\":5.6,\"valor_cbs\":2.8}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteImpostosIbsCbsEstornoCredito")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteImpostosIbsCbsEstornoCredito")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteImpostosIcms,"{\"codigo_cfop\":\"5353\",\"situacao_tributaria\":\"00\",\"bc\":5600,\"aliquota\":12,\"valor\":672,\"percentual_reducao\":0,\"valor_credito\":0,\"percentual_credito\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteImpostosIcms")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteImpostosIcms")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteDocs,"{\"xml\":\"<nfeProc versao=\\\"4.00\\\" xmlns=\\\"http://www.portalfiscal.inf.br/nfe\\\">...</nfeProc>\",\"pdf\":\"H4sIAAAAAAAAA+3BMQEAAADCoPVEAAA...\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteDocs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteDocs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteFornecedorVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteFornecedorVariant0")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteFornecedorVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOs,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelo\":\"cte_os\",\"status\":\"aprovado\",\"categoria\":\"citadas\",\"data_emissao\":\"2025-02-22 17:08:23\",\"numero\":800,\"serie\":1,\"chave\":\"00000000000000000000000000000000000000000000\",\"valor\":5600,\"finalidade\":0,\"cfop\":[\"6353\"],\"modalidade\":1,\"uf_inicio_prestacao\":\"SP\",\"uf_termino_prestacao\":\"PR\",\"natureza_operacao\":\"PRESTA\u00c7\u00c3O DE SERVI\u00c7O DE TRANSPORTE A ESTABELECIMENTO INDUSTRIAL\",\"indicador_tomador\":0,\"emitente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"TRANSPORTADORA EXPRESS LTDA\",\"ie\":\"000000000\",\"uf\":\"SP\",\"endereco\":\"Rod. Anhanguera\",\"numero\":\"KM 30\",\"complemento\":\"Galp\u00e3o Log\u00edstico\",\"bairro\":\"Distrito Industrial\",\"cep\":\"13000-000\",\"cidade\":\"Campinas\",\"telefone\":\"19999999999\",\"email\":\"cte@transportadora.com\"},\"tomador\":{\"cnpj\":\"11111111000111\",\"razao_social\":\"IND\u00daSTRIA METAL\u00daRGICA LTDA\",\"ie\":\"111111111111\",\"uf\":\"SP\",\"endereco\":\"Av. Industrial\",\"numero\":\"5000\",\"complemento\":\"Bloco A\",\"bairro\":\"Parque Industrial\",\"cep\":\"13200-000\",\"cidade\":\"Jundia\u00ed\",\"telefone\":\"11888888888\",\"email\":\"fiscal@industria.com\"},\"impostos\":{\"icms\":{\"codigo_cfop\":\"5353\",\"situacao_tributaria\":\"00\",\"bc\":5600,\"aliquota\":12,\"valor\":672,\"percentual_reducao\":0,\"valor_credito\":0,\"percentual_credito\":0},\"ibs_cbs\":{\"situacao_tributaria\":\"000\",\"classificacao_tributaria\":\"000001\",\"indicador_doacao\":false,\"bc\":5600,\"valor_ibs\":112.0,\"ibs_estadual\":{\"aliquota\":1.2,\"valor\":67.2,\"aliquota_diferimento\":0.1,\"valor_diferimento\":5.6,\"valor_devolvido\":2.8,\"aliquota_reducao\":0.2,\"aliquota_efetiva\":1.0},\"ibs_municipal\":{\"aliquota\":0.8,\"valor\":44.8,\"aliquota_diferimento\":0.05,\"valor_diferimento\":2.8,\"valor_devolvido\":1.12,\"aliquota_reducao\":0.1,\"aliquota_efetiva\":0.7},\"cbs\":{\"aliquota\":0.9,\"valor\":50.4,\"aliquota_diferimento\":0.03,\"valor_diferimento\":1.68,\"valor_devolvido\":0.56,\"aliquota_reducao\":0.05,\"aliquota_efetiva\":0.85},\"situacao_tributaria_regular\":\"000\",\"classificacao_tributaria_regular\":\"000001\",\"tributacao_regular\":{\"ibs_estadual\":{\"aliquota_efetiva\":1.1,\"valor\":61.6},\"ibs_municipal\":{\"aliquota_efetiva\":0.75,\"valor\":42.0},\"cbs\":{\"aliquota_efetiva\":0.88,\"valor\":49.28}},\"compra_governamental\":{\"ibs_estadual\":{\"aliquota\":1.0,\"valor\":56.0},\"ibs_municipal\":{\"aliquota\":0.6,\"valor\":33.6},\"cbs\":{\"aliquota\":0.7,\"valor\":39.2}},\"credito_presumido\":{\"classificacao\":\"01\",\"aliquota_ibs\":0.5,\"valor_ibs\":28.0,\"valor_ibs_condicionado_suspensao\":1.12,\"aliquota_cbs\":0.3,\"valor_cbs\":16.8,\"valor_cbs_condicionado_suspensao\":0.56},\"estorno_credito\":{\"valor_ibs\":5.6,\"valor_cbs\":2.8}}},\"servico\":{\"descricao\":\"TRANSPORTE RODOVI\u00c1RIO DE PRODUTOS METAL\u00daRGICOS\",\"quantidade_carga\":2500,\"unidade_medida\":\"KG\",\"tipo_servico\":0,\"modal\":\"01\",\"documentos_originarios\":[{\"tipo\":\"NFe\",\"chave\":\"35250211111111000111550010000123451234567890\",\"serie\":\"1\",\"numero\":\"12345\",\"data_emissao\":\"2025-02-20\"},{\"tipo\":\"NFe\",\"chave\":\"35250211111111000111550010000123461234567891\",\"serie\":\"1\",\"numero\":\"12346\",\"data_emissao\":\"2025-02-20\"}],\"componentes_valor\":[{\"nome\":\"FRETE PESO\",\"valor\":4500},{\"nome\":\"GRIS\",\"valor\":500},{\"nome\":\"PEDAGIO\",\"valor\":350},{\"nome\":\"TAS\",\"valor\":250}],\"informacoes_carga\":{\"valor_total\":125000,\"produto_predominante\":\"PRODUTOS METAL\u00daRGICOS\",\"outras_caracteristicas\":\"CARGA FRACIONADA\",\"cubagem\":{\"quantidade\":15,\"unidade\":\"M3\"}}}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsDocumentosFiscaisItem,"{\"chave\":\"00000000000000000000000000000000000000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsDocumentosFiscaisItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsDocumentosFiscaisItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsServico,"{\"descricao\":\"TRANSPORTE RODOVI\u00c1RIO DE PRODUTOS METAL\u00daRGICOS\",\"quantidade_carga\":2500,\"unidade_medida\":\"KG\",\"tipo_servico\":0,\"modal\":\"01\",\"documentos_originarios\":[{\"tipo\":\"NFe\",\"chave\":\"35250211111111000111550010000123451234567890\",\"serie\":\"1\",\"numero\":\"12345\",\"data_emissao\":\"2025-02-20\"},{\"tipo\":\"NFe\",\"chave\":\"35250211111111000111550010000123461234567891\",\"serie\":\"1\",\"numero\":\"12346\",\"data_emissao\":\"2025-02-20\"}],\"componentes_valor\":[{\"nome\":\"FRETE PESO\",\"valor\":4500},{\"nome\":\"GRIS\",\"valor\":500},{\"nome\":\"PEDAGIO\",\"valor\":350},{\"nome\":\"TAS\",\"valor\":250}],\"informacoes_carga\":{\"valor_total\":125000,\"produto_predominante\":\"PRODUTOS METAL\u00daRGICOS\",\"outras_caracteristicas\":\"CARGA FRACIONADA\",\"cubagem\":{\"quantidade\":15,\"unidade\":\"M3\"}}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsServico")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsServico")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsServicoDocumentosOriginariosItem,"{\"tipo\":\"NFe\",\"chave\":\"35250211111111000111550010000123451234567890\",\"serie\":\"1\",\"numero\":\"12345\",\"data_emissao\":\"2025-02-20\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsServicoDocumentosOriginariosItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsServicoDocumentosOriginariosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsServicoComponentesValorItem,"{\"nome\":\"FRETE PESO\",\"valor\":4500}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsServicoComponentesValorItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsServicoComponentesValorItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsServicoInformacoesCarga,"{\"valor_total\":125000,\"produto_predominante\":\"PRODUTOS METAL\u00daRGICOS\",\"outras_caracteristicas\":\"CARGA FRACIONADA\",\"cubagem\":{\"quantidade\":15,\"unidade\":\"M3\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsServicoInformacoesCarga")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsServicoInformacoesCarga")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsServicoInformacoesCargaCubagem,"{\"quantidade\":15,\"unidade\":\"M3\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsServicoInformacoesCargaCubagem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsServicoInformacoesCargaCubagem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsImpostos,"{\"tributacao_iss\":1,\"tributacao_descricao\":\"Opera\u00e7\u00e3o tribut\u00e1vel\",\"iss_retido\":2,\"bc\":5500,\"iss_aliquota\":5,\"iss_valor\":275,\"pis_aliquota\":0.65,\"pis_valor\":35.75,\"cofins_aliquota\":3,\"cofins_valor\":165,\"inss_aliquota\":0,\"inss_valor\":0,\"ir_aliquota\":0,\"ir_valor\":0,\"csll_aliquota\":0,\"csll_valor\":0,\"cp_aliquota\":0,\"cp_valor\":0,\"ibs_cbs\":{\"bc\":5500,\"cbs\":{\"valor\":49.5,\"aliquota\":0.9,\"aliquota_efetiva\":0.9,\"aliquota_diferimento\":0},\"valor_ibs\":5.5,\"ibs_estadual\":{\"valor\":5.5,\"aliquota\":0.1,\"aliquota_efetiva\":0.1,\"aliquota_diferimento\":0},\"ibs_municipal\":{\"valor\":0,\"aliquota\":0,\"aliquota_efetiva\":0,\"aliquota_diferimento\":0},\"finalidade_nfse\":0,\"situacao_tributaria\":\"000\",\"localidade_incidencia\":{\"codigo\":\"3550308\",\"descricao\":\"S\u00e3o Paulo\"},\"cod_indicador_operacao\":\"100301\",\"indicador_destinatario\":0,\"classificacao_tributaria\":\"000001\",\"valor_calculo_reembolso_repasse\":0}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsImpostos")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsImpostos")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbs,"{\"bc\":5500,\"cbs\":{\"valor\":49.5,\"aliquota\":0.9,\"aliquota_efetiva\":0.9,\"aliquota_diferimento\":0},\"valor_ibs\":5.5,\"ibs_estadual\":{\"valor\":5.5,\"aliquota\":0.1,\"aliquota_efetiva\":0.1,\"aliquota_diferimento\":0},\"ibs_municipal\":{\"valor\":0,\"aliquota\":0,\"aliquota_efetiva\":0,\"aliquota_diferimento\":0},\"finalidade_nfse\":0,\"situacao_tributaria\":\"000\",\"localidade_incidencia\":{\"codigo\":\"3550308\",\"descricao\":\"S\u00e3o Paulo\"},\"cod_indicador_operacao\":\"100301\",\"indicador_destinatario\":0,\"classificacao_tributaria\":\"000001\",\"valor_calculo_reembolso_repasse\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsImpostosIbsCbs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsImpostosIbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsIbsEstadual,"{\"valor\":5.5,\"aliquota\":0.1,\"aliquota_efetiva\":0.1,\"aliquota_diferimento\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsImpostosIbsCbsIbsEstadual")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsImpostosIbsCbsIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsIbsMunicipal,"{\"valor\":0,\"aliquota\":0,\"aliquota_efetiva\":0,\"aliquota_diferimento\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsImpostosIbsCbsIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsImpostosIbsCbsIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsCbs,"{\"valor\":49.5,\"aliquota\":0.9,\"aliquota_efetiva\":0.9,\"aliquota_diferimento\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsImpostosIbsCbsCbs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsImpostosIbsCbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsTributacaoRegular,"{\"ibs_estadual\":{\"aliquota_efetiva\":1.1,\"valor\":61.6},\"ibs_municipal\":{\"aliquota_efetiva\":0.75,\"valor\":42.0},\"cbs\":{\"aliquota_efetiva\":0.88,\"valor\":49.28}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsImpostosIbsCbsTributacaoRegular")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsImpostosIbsCbsTributacaoRegular")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsEstadual,"{\"aliquota_efetiva\":1.1,\"valor\":61.6}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsEstadual")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsMunicipal,"{\"aliquota_efetiva\":0.75,\"valor\":42.0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularCbs,"{\"aliquota_efetiva\":0.88,\"valor\":49.28}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularCbs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsCompraGovernamental,"{\"ibs_estadual\":{\"aliquota\":1.0,\"valor\":56.0},\"ibs_municipal\":{\"aliquota\":0.6,\"valor\":33.6},\"cbs\":{\"aliquota\":0.7,\"valor\":39.2}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsImpostosIbsCbsCompraGovernamental")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsImpostosIbsCbsCompraGovernamental")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsEstadual,"{\"aliquota\":1.0,\"valor\":56.0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsEstadual")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsMunicipal,"{\"aliquota\":0.6,\"valor\":33.6}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalCbs,"{\"aliquota\":0.7,\"valor\":39.2}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalCbs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsCreditoPresumido,"{\"classificacao\":\"01\",\"aliquota_ibs\":0.5,\"valor_ibs\":28.0,\"valor_ibs_condicionado_suspensao\":1.12,\"aliquota_cbs\":0.3,\"valor_cbs\":16.8,\"valor_cbs_condicionado_suspensao\":0.56}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsImpostosIbsCbsCreditoPresumido")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsImpostosIbsCbsCreditoPresumido")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsImpostosIbsCbsEstornoCredito,"{\"valor_ibs\":5.6,\"valor_cbs\":2.8}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsImpostosIbsCbsEstornoCredito")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsImpostosIbsCbsEstornoCredito")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsImpostosIcms,"{\"codigo_cfop\":\"5353\",\"situacao_tributaria\":\"00\",\"bc\":5600,\"aliquota\":12,\"valor\":672,\"percentual_reducao\":0,\"valor_credito\":0,\"percentual_credito\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsImpostosIcms")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsImpostosIcms")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsDocs,"{\"xml\":\"<nfeProc versao=\\\"4.00\\\" xmlns=\\\"http://www.portalfiscal.inf.br/nfe\\\">...</nfeProc>\",\"pdf\":\"H4sIAAAAAAAAA+3BMQEAAADCoPVEAAA...\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsDocs")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsDocs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentCteOsFornecedorVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentCteOsFornecedorVariant0")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentCteOsFornecedorVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocument,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelo\":\"nfe\",\"status\":\"aprovado\",\"categoria\":\"recebidas\",\"data_emissao\":\"2025-02-27 13:17:00\",\"numero\":200,\"serie\":1,\"chave\":\"00000000000000000000000000000000000000000000\",\"valor\":6200,\"operacao\":0,\"finalidade\":1,\"cfop\":[\"2909\"],\"natureza_operacao\":\"Compra para industrializa\u00e7\u00e3o\",\"emitente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"EMPRESA FORNECEDORA LTDA\",\"ie\":\"000000000000\",\"uf\":\"SP\",\"endereco\":\"Rua das Ind\u00fastrias\",\"numero\":\"1500\",\"complemento\":\"Galp\u00e3o 2\",\"bairro\":\"Distrito Industrial\",\"cep\":\"12345-678\",\"cidade\":\"S\u00e3o Paulo\",\"telefone\":\"11999999999\",\"email\":\"fiscal@fornecedor.com\"},\"cliente\":{\"cnpj\":\"11111111000111\",\"razao_social\":\"EMPRESA COMPRADORA S/A\",\"ie\":\"111111111111\",\"uf\":\"SP\",\"endereco\":\"Av. Principal\",\"numero\":\"1000\",\"bairro\":\"Centro\",\"cep\":\"98765-432\",\"cidade\":\"S\u00e3o Paulo\",\"telefone\":\"11888888888\",\"email\":\"compras@empresa.com\"},\"pedido\":{\"numero_pedido\":\"PED-2025-001234\",\"numero_compra\":\"OC-2025-005678\"},\"produtos\":[{\"codigo\":\"MP001\",\"descricao\":\"MAT\u00c9RIA PRIMA ESPECIAL TIPO A\",\"ncm\":\"39269090\",\"cfop\":\"2909\",\"unidade\":\"KG\",\"quantidade\":1000,\"valor_unitario\":6.2,\"valor_total\":6200,\"impostos\":{\"icms\":{\"situacao_tributaria\":\"00\",\"origem\":0,\"base_calculo\":6200,\"aliquota\":18,\"valor\":1116},\"ipi\":{\"situacao_tributaria\":\"50\",\"base_calculo\":6200,\"aliquota\":5,\"valor\":310},\"pis\":{\"situacao_tributaria\":\"01\",\"base_calculo\":6200,\"aliquota\":1.65,\"valor\":102.3},\"cofins\":{\"situacao_tributaria\":\"01\",\"base_calculo\":6200,\"aliquota\":7.6,\"valor\":471.2},\"ibs_cbs\":{\"situacao_tributaria\":\"000\",\"classificacao_tributaria\":\"000001\",\"indicador_doacao\":false,\"bc\":6200,\"valor_ibs\":124.0,\"ibs_estadual\":{\"aliquota\":1.2,\"valor\":74.4,\"aliquota_diferimento\":0.1,\"valor_diferimento\":6.2,\"valor_devolvido\":3.1,\"aliquota_reducao\":0.2,\"aliquota_efetiva\":1.0},\"ibs_municipal\":{\"aliquota\":0.8,\"valor\":49.6,\"aliquota_diferimento\":0.05,\"valor_diferimento\":3.1,\"valor_devolvido\":1.24,\"aliquota_reducao\":0.1,\"aliquota_efetiva\":0.7},\"cbs\":{\"aliquota\":0.9,\"valor\":55.8,\"aliquota_diferimento\":0.03,\"valor_diferimento\":1.86,\"valor_devolvido\":0.62,\"aliquota_reducao\":0.05,\"aliquota_efetiva\":0.85},\"situacao_tributaria_regular\":\"000\",\"classificacao_tributaria_regular\":\"000001\",\"tributacao_regular\":{\"ibs_estadual\":{\"aliquota_efetiva\":1.1,\"valor\":68.2},\"ibs_municipal\":{\"aliquota_efetiva\":0.75,\"valor\":46.5},\"cbs\":{\"aliquota_efetiva\":0.88,\"valor\":54.56}},\"compra_governamental\":{\"ibs_estadual\":{\"aliquota\":1.0,\"valor\":62.0},\"ibs_municipal\":{\"aliquota\":0.6,\"valor\":37.2},\"cbs\":{\"aliquota\":0.7,\"valor\":43.4}},\"tributacao_monofasica\":{\"quantidade_bc\":1000.0,\"aliquota_ibs\":0.3,\"aliquota_cbs\":0.2,\"valor_ibs\":300.0,\"valor_cbs\":200.0,\"quantidade_bc_retencao\":200.0,\"aliquota_ibs_retencao\":0.1,\"aliquota_cbs_retencao\":0.05,\"valor_ibs_retencao\":20.0,\"valor_cbs_retencao\":10.0,\"quantidade_bc_retido\":100.0,\"aliquota_ibs_retido\":0.08,\"aliquota_cbs_retido\":0.04,\"valor_ibs_retido\":8.0,\"valor_cbs_retido\":4.0,\"aliquota_diferimento_ibs\":0.02,\"aliquota_diferimento_cbs\":0.01,\"valor_diferimento_ibs\":2.0,\"valor_diferimento_cbs\":1.0,\"valor_total_ibs\":330.0,\"valor_total_cbs\":215.0},\"transferencia_credito\":{\"valor_ibs\":6.2,\"valor_cbs\":3.1},\"ajuste_competencia\":{\"competencia_apuracao\":\"2026-01\",\"valor_ibs\":4.96,\"valor_cbs\":2.48},\"credito_presumido\":{\"classificacao\":\"01\",\"bc\":6200.0,\"aliquota_ibs\":0.5,\"valor_ibs\":31.0,\"valor_ibs_condicionado_suspensao\":1.24,\"aliquota_cbs\":0.3,\"valor_cbs\":18.6,\"valor_cbs_condicionado_suspensao\":0.62},\"credito_presumido_zfm\":{\"competencia_apuracao\":\"2026-01\",\"classificacao\":\"02\",\"valor_ibs\":12.4},\"estorno_credito\":{\"valor_ibs\":6.2,\"valor_cbs\":3.1}}}}],\"transporte\":{\"modalidade_frete\":1,\"transportadora\":{\"cnpj\":\"22222222000222\",\"razao_social\":\"TRANSPORTADORA R\u00c1PIDA LTDA\",\"ie\":\"222222222222\",\"endereco\":\"Rod. BR-101\",\"numero\":\"KM 50\",\"cidade\":\"S\u00e3o Paulo\",\"uf\":\"SP\"},\"volumes\":[{\"quantidade\":10,\"especie\":\"CAIXA\",\"marca\":\"FORNECEDOR\",\"numeracao\":\"1-10\",\"peso_liquido\":1000,\"peso_bruto\":1050}],\"veiculo\":{\"placa\":\"ABC1234\",\"uf\":\"SP\"}},\"totais\":{\"icms_bc\":6200,\"icms_valor\":1116,\"icms_valor_desonerado\":0,\"icms_st_bc\":0,\"icms_st_valor\":0,\"fcp_valor\":0,\"fcp_st_valor\":0,\"fcp_st_retido_valor\":0,\"ipi_valor\":310,\"ipi_devolvido_valor\":0,\"pis_valor\":102.3,\"cofins_valor\":471.2,\"ii_valor\":0,\"valor_produtos\":6200,\"valor_seguro\":0,\"valor_outras_despesas\":0,\"valor_desconto\":0,\"valor_frete\":0,\"valor_total_nfe\":7826},\"totais_issqn\":{\"valor_servicos\":0,\"iss_bc\":0,\"iss_valor\":0,\"pis_valor\":0,\"cofins_valor\":0,\"data_competencia\":\"2025-02-27\",\"deducao\":0,\"outras_retencoes\":0,\"desconto_incondicionado\":0,\"desconto_condicionado\":0,\"iss_retido_valor\":0,\"regime_especial_tributacao\":\"1\"},\"fatura\":{\"numero\":\"2025/0200\",\"valor_original\":6200,\"valor_desconto\":0,\"valor_liquido\":6200},\"parcelas\":[{\"numero\":\"001\",\"vencimento\":\"2025-03-27\",\"valor\":3100},{\"numero\":\"002\",\"vencimento\":\"2025-04-27\",\"valor\":3100}],\"responsavel_tecnico\":{\"cnpj\":\"33333333000333\",\"contato\":\"Jo\u00e3o Silva\",\"email\":\"suporte@sistema.com\",\"telefone\":\"11777777777\"},\"protocolo\":\"135250000123456\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocument")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocument")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorCursorPagination,"{\"per_page\":1,\"next_cursor\":\"synthetic\",\"prev_cursor\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorCursorPagination")
stopifnot(inherits(x,"api2_monitor_documents.MonitorCursorPagination")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentPage,"{\"data\":[],\"meta\":{\"current_page\":1,\"last_page\":1,\"per_page\":1,\"total\":0}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentPage")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentPage")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocumentPageMeta,"{\"current_page\":1,\"last_page\":1,\"per_page\":1,\"total\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorDocumentPageMeta")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocumentPageMeta")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorReport,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"relatorio\":\"xml\",\"modelo\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorReport")
stopifnot(inherits(x,"api2_monitor_documents.MonitorReport")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorReportFiltros,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorReportFiltros")
stopifnot(inherits(x,"api2_monitor_documents.MonitorReportFiltros")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorReportFiltrosPeriodo,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorReportFiltrosPeriodo")
stopifnot(inherits(x,"api2_monitor_documents.MonitorReportFiltrosPeriodo")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorReportPage,"{\"data\":[],\"meta\":{\"current_page\":1,\"last_page\":1,\"per_page\":1,\"total\":0}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorReportPage")
stopifnot(inherits(x,"api2_monitor_documents.MonitorReportPage")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequest,"{\"modelo\":\"nfe\",\"filtros\":{\"empresa_uuid\":[\"00000000-0000-0000-0000-000000000000\"],\"categoria\":[\"recebidas\"],\"status\":[\"aprovado\"]},\"filtros_modelo\":{\"operacao\":[\"0\",1]},\"paginacao\":\"cursor\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorSearchRequest")
stopifnot(inherits(x,"api2_monitor_documents.MonitorSearchRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequestEmpresaUuid,"\"00000000-0000-4000-8000-000000000001\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorSearchRequestEmpresaUuid")
stopifnot(inherits(x,"api2_monitor_documents.MonitorSearchRequestEmpresaUuid")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequestCategoria,"\"emitidas\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorSearchRequestCategoria")
stopifnot(inherits(x,"api2_monitor_documents.MonitorSearchRequestCategoria")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequestStatus,"\"aprovado\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorSearchRequestStatus")
stopifnot(inherits(x,"api2_monitor_documents.MonitorSearchRequestStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequestManifestacao,"\"pendente\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorSearchRequestManifestacao")
stopifnot(inherits(x,"api2_monitor_documents.MonitorSearchRequestManifestacao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequestFinalidade,"0",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorSearchRequestFinalidade")
stopifnot(inherits(x,"api2_monitor_documents.MonitorSearchRequestFinalidade")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequestOperacao,"0",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorSearchRequestOperacao")
stopifnot(inherits(x,"api2_monitor_documents.MonitorSearchRequestOperacao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequestModalidade,"1",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorSearchRequestModalidade")
stopifnot(inherits(x,"api2_monitor_documents.MonitorSearchRequestModalidade")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequestFiltros,"{\"empresa_uuid\":[\"00000000-0000-0000-0000-000000000000\"],\"categoria\":[\"recebidas\"],\"status\":[\"aprovado\"]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorSearchRequestFiltros")
stopifnot(inherits(x,"api2_monitor_documents.MonitorSearchRequestFiltros")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequestFiltrosEmpresaUuid,"[\"00000000-0000-0000-0000-000000000000\"]",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorSearchRequestFiltrosEmpresaUuid")
stopifnot(inherits(x,"api2_monitor_documents.MonitorSearchRequestFiltrosEmpresaUuid")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequestFiltrosCategoria,"[\"recebidas\"]",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorSearchRequestFiltrosCategoria")
stopifnot(inherits(x,"api2_monitor_documents.MonitorSearchRequestFiltrosCategoria")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequestFiltrosStatus,"[\"aprovado\"]",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorSearchRequestFiltrosStatus")
stopifnot(inherits(x,"api2_monitor_documents.MonitorSearchRequestFiltrosStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequestFiltrosManifestacao,"\"pendente\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorSearchRequestFiltrosManifestacao")
stopifnot(inherits(x,"api2_monitor_documents.MonitorSearchRequestFiltrosManifestacao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequestFiltrosModelo,"{\"operacao\":[\"0\",1]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorSearchRequestFiltrosModelo")
stopifnot(inherits(x,"api2_monitor_documents.MonitorSearchRequestFiltrosModelo")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequestFiltrosModeloFinalidade,"0",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorSearchRequestFiltrosModeloFinalidade")
stopifnot(inherits(x,"api2_monitor_documents.MonitorSearchRequestFiltrosModeloFinalidade")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequestFiltrosModeloOperacao,"[\"0\",1]",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorSearchRequestFiltrosModeloOperacao")
stopifnot(inherits(x,"api2_monitor_documents.MonitorSearchRequestFiltrosModeloOperacao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequestFiltrosModeloModalidade,"1",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorSearchRequestFiltrosModeloModalidade")
stopifnot(inherits(x,"api2_monitor_documents.MonitorSearchRequestFiltrosModeloModalidade")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":110110,\"descricao_evento\":\"Carta de corre\u00e7\u00e3o\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":false,\"correcao\":\"XXXXXX XXXXXXXXXXXXXX XXXXXXXXXXXXXXXX XXXXXXXXXXXXXXXXX XXXXXXXXXXXXXXXX\",\"log\":{\"tpEvento\":\"110110\",\"xEvento\":\"Carta de Correcao\",\"nProt\":\"0000000000000000\",\"dhRegEvento\":\"2025-06-02T13:17:00-03:00\",\"cStat\":\"135\",\"xMotivo\":\"Evento registrado e vinculado a NF-e\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorEvent")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEventAlteracoesItem,"{\"grupo\":\"XXXX\",\"campo\":\"XXXX\",\"alteracao\":\"XXXXXXX XXXXX\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorEventAlteracoesItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEventAlteracoesItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEventMdfe,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"modalidade\":1,\"data_emissao\":\"2025-06-02 09:00:00\",\"protocolo\":\"000000000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorEventMdfe")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEventMdfe")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEventLog,"{\"tpEvento\":\"110110\",\"xEvento\":\"Carta de Correcao\",\"nProt\":\"0000000000000000\",\"dhRegEvento\":\"2025-06-02T13:17:00-03:00\",\"cStat\":\"135\",\"xMotivo\":\"Evento registrado e vinculado a NF-e\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorEventLog")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEventLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorManifestationRequest,"{\"evento\":1,\"manifestacao\":3,\"justificativa\":\"Synthetic justified operation\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorManifestationRequest")
stopifnot(inherits(x,"api2_monitor_documents.MonitorManifestationRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorImportRequest,"{\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"chave\":\"00000000000000000000000000000000000000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorImportRequest")
stopifnot(inherits(x,"api2_monitor_documents.MonitorImportRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorImportStatus,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"status\":\"processando\",\"processado\":0,\"importados\":[],\"descartados\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorImportStatus")
stopifnot(inherits(x,"api2_monitor_documents.MonitorImportStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorImportStatusImportadosItem,"{\"arquivo\":\"synthetic\",\"uuid\":\"00000000-0000-4000-8000-000000000001\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorImportStatusImportadosItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorImportStatusImportadosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorImportStatusDescartadosItem,"{\"arquivo\":\"synthetic\",\"motivo\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorImportStatusDescartadosItem")
stopifnot(inherits(x,"api2_monitor_documents.MonitorImportStatusDescartadosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchDocumentsResponse,"{\"data\":[],\"meta\":{\"current_page\":1,\"last_page\":1,\"per_page\":1,\"total\":0}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorSearchDocumentsResponse")
stopifnot(inherits(x,"api2_monitor_documents.MonitorSearchDocumentsResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchDocumentsQuery,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorSearchDocumentsQuery")
stopifnot(inherits(x,"api2_monitor_documents.MonitorSearchDocumentsQuery")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorGetDocumentQuery,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorGetDocumentQuery")
stopifnot(inherits(x,"api2_monitor_documents.MonitorGetDocumentQuery")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorListDocumentEventsResponse,"{\"data\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorListDocumentEventsResponse")
stopifnot(inherits(x,"api2_monitor_documents.MonitorListDocumentEventsResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorListReportsQuery,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorListReportsQuery")
stopifnot(inherits(x,"api2_monitor_documents.MonitorListReportsQuery")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorImportDocumentResponse,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelo\":\"nfe\",\"status\":\"aprovado\",\"categoria\":\"recebidas\",\"data_emissao\":\"2025-02-27 13:17:00\",\"numero\":200,\"serie\":1,\"chave\":\"00000000000000000000000000000000000000000000\",\"valor\":6200,\"operacao\":0,\"finalidade\":1,\"cfop\":[\"2909\"],\"natureza_operacao\":\"Compra para industrializa\u00e7\u00e3o\",\"emitente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"EMPRESA FORNECEDORA LTDA\",\"ie\":\"000000000000\",\"uf\":\"SP\",\"endereco\":\"Rua das Ind\u00fastrias\",\"numero\":\"1500\",\"complemento\":\"Galp\u00e3o 2\",\"bairro\":\"Distrito Industrial\",\"cep\":\"12345-678\",\"cidade\":\"S\u00e3o Paulo\",\"telefone\":\"11999999999\",\"email\":\"fiscal@fornecedor.com\"},\"cliente\":{\"cnpj\":\"11111111000111\",\"razao_social\":\"EMPRESA COMPRADORA S/A\",\"ie\":\"111111111111\",\"uf\":\"SP\",\"endereco\":\"Av. Principal\",\"numero\":\"1000\",\"bairro\":\"Centro\",\"cep\":\"98765-432\",\"cidade\":\"S\u00e3o Paulo\",\"telefone\":\"11888888888\",\"email\":\"compras@empresa.com\"},\"pedido\":{\"numero_pedido\":\"PED-2025-001234\",\"numero_compra\":\"OC-2025-005678\"},\"produtos\":[{\"codigo\":\"MP001\",\"descricao\":\"MAT\u00c9RIA PRIMA ESPECIAL TIPO A\",\"ncm\":\"39269090\",\"cfop\":\"2909\",\"unidade\":\"KG\",\"quantidade\":1000,\"valor_unitario\":6.2,\"valor_total\":6200,\"impostos\":{\"icms\":{\"situacao_tributaria\":\"00\",\"origem\":0,\"base_calculo\":6200,\"aliquota\":18,\"valor\":1116},\"ipi\":{\"situacao_tributaria\":\"50\",\"base_calculo\":6200,\"aliquota\":5,\"valor\":310},\"pis\":{\"situacao_tributaria\":\"01\",\"base_calculo\":6200,\"aliquota\":1.65,\"valor\":102.3},\"cofins\":{\"situacao_tributaria\":\"01\",\"base_calculo\":6200,\"aliquota\":7.6,\"valor\":471.2},\"ibs_cbs\":{\"situacao_tributaria\":\"000\",\"classificacao_tributaria\":\"000001\",\"indicador_doacao\":false,\"bc\":6200,\"valor_ibs\":124.0,\"ibs_estadual\":{\"aliquota\":1.2,\"valor\":74.4,\"aliquota_diferimento\":0.1,\"valor_diferimento\":6.2,\"valor_devolvido\":3.1,\"aliquota_reducao\":0.2,\"aliquota_efetiva\":1.0},\"ibs_municipal\":{\"aliquota\":0.8,\"valor\":49.6,\"aliquota_diferimento\":0.05,\"valor_diferimento\":3.1,\"valor_devolvido\":1.24,\"aliquota_reducao\":0.1,\"aliquota_efetiva\":0.7},\"cbs\":{\"aliquota\":0.9,\"valor\":55.8,\"aliquota_diferimento\":0.03,\"valor_diferimento\":1.86,\"valor_devolvido\":0.62,\"aliquota_reducao\":0.05,\"aliquota_efetiva\":0.85},\"situacao_tributaria_regular\":\"000\",\"classificacao_tributaria_regular\":\"000001\",\"tributacao_regular\":{\"ibs_estadual\":{\"aliquota_efetiva\":1.1,\"valor\":68.2},\"ibs_municipal\":{\"aliquota_efetiva\":0.75,\"valor\":46.5},\"cbs\":{\"aliquota_efetiva\":0.88,\"valor\":54.56}},\"compra_governamental\":{\"ibs_estadual\":{\"aliquota\":1.0,\"valor\":62.0},\"ibs_municipal\":{\"aliquota\":0.6,\"valor\":37.2},\"cbs\":{\"aliquota\":0.7,\"valor\":43.4}},\"tributacao_monofasica\":{\"quantidade_bc\":1000.0,\"aliquota_ibs\":0.3,\"aliquota_cbs\":0.2,\"valor_ibs\":300.0,\"valor_cbs\":200.0,\"quantidade_bc_retencao\":200.0,\"aliquota_ibs_retencao\":0.1,\"aliquota_cbs_retencao\":0.05,\"valor_ibs_retencao\":20.0,\"valor_cbs_retencao\":10.0,\"quantidade_bc_retido\":100.0,\"aliquota_ibs_retido\":0.08,\"aliquota_cbs_retido\":0.04,\"valor_ibs_retido\":8.0,\"valor_cbs_retido\":4.0,\"aliquota_diferimento_ibs\":0.02,\"aliquota_diferimento_cbs\":0.01,\"valor_diferimento_ibs\":2.0,\"valor_diferimento_cbs\":1.0,\"valor_total_ibs\":330.0,\"valor_total_cbs\":215.0},\"transferencia_credito\":{\"valor_ibs\":6.2,\"valor_cbs\":3.1},\"ajuste_competencia\":{\"competencia_apuracao\":\"2026-01\",\"valor_ibs\":4.96,\"valor_cbs\":2.48},\"credito_presumido\":{\"classificacao\":\"01\",\"bc\":6200.0,\"aliquota_ibs\":0.5,\"valor_ibs\":31.0,\"valor_ibs_condicionado_suspensao\":1.24,\"aliquota_cbs\":0.3,\"valor_cbs\":18.6,\"valor_cbs_condicionado_suspensao\":0.62},\"credito_presumido_zfm\":{\"competencia_apuracao\":\"2026-01\",\"classificacao\":\"02\",\"valor_ibs\":12.4},\"estorno_credito\":{\"valor_ibs\":6.2,\"valor_cbs\":3.1}}}}],\"transporte\":{\"modalidade_frete\":1,\"transportadora\":{\"cnpj\":\"22222222000222\",\"razao_social\":\"TRANSPORTADORA R\u00c1PIDA LTDA\",\"ie\":\"222222222222\",\"endereco\":\"Rod. BR-101\",\"numero\":\"KM 50\",\"cidade\":\"S\u00e3o Paulo\",\"uf\":\"SP\"},\"volumes\":[{\"quantidade\":10,\"especie\":\"CAIXA\",\"marca\":\"FORNECEDOR\",\"numeracao\":\"1-10\",\"peso_liquido\":1000,\"peso_bruto\":1050}],\"veiculo\":{\"placa\":\"ABC1234\",\"uf\":\"SP\"}},\"totais\":{\"icms_bc\":6200,\"icms_valor\":1116,\"icms_valor_desonerado\":0,\"icms_st_bc\":0,\"icms_st_valor\":0,\"fcp_valor\":0,\"fcp_st_valor\":0,\"fcp_st_retido_valor\":0,\"ipi_valor\":310,\"ipi_devolvido_valor\":0,\"pis_valor\":102.3,\"cofins_valor\":471.2,\"ii_valor\":0,\"valor_produtos\":6200,\"valor_seguro\":0,\"valor_outras_despesas\":0,\"valor_desconto\":0,\"valor_frete\":0,\"valor_total_nfe\":7826},\"totais_issqn\":{\"valor_servicos\":0,\"iss_bc\":0,\"iss_valor\":0,\"pis_valor\":0,\"cofins_valor\":0,\"data_competencia\":\"2025-02-27\",\"deducao\":0,\"outras_retencoes\":0,\"desconto_incondicionado\":0,\"desconto_condicionado\":0,\"iss_retido_valor\":0,\"regime_especial_tributacao\":\"1\"},\"fatura\":{\"numero\":\"2025/0200\",\"valor_original\":6200,\"valor_desconto\":0,\"valor_liquido\":6200},\"parcelas\":[{\"numero\":\"001\",\"vencimento\":\"2025-03-27\",\"valor\":3100},{\"numero\":\"002\",\"vencimento\":\"2025-04-27\",\"valor\":3100}],\"responsavel_tecnico\":{\"cnpj\":\"33333333000333\",\"contato\":\"Jo\u00e3o Silva\",\"email\":\"suporte@sistema.com\",\"telefone\":\"11777777777\"},\"protocolo\":\"135250000123456\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_documents::MonitorImportDocumentResponse")
stopifnot(inherits(x,"api2_monitor_documents.MonitorImportDocumentResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorError,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorError")
stopifnot(inherits(x,"api2_monitor_management.MonitorError")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorPagination,"{\"current_page\":1,\"last_page\":1,\"per_page\":1,\"total\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorPagination")
stopifnot(inherits(x,"api2_monitor_management.MonitorPagination")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorAddress,"{\"codigo_municipio\":3550308,\"cep\":\"00000-000\",\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorAddress")
stopifnot(inherits(x,"api2_monitor_management.MonitorAddress")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorCompany,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorCompany")
stopifnot(inherits(x,"api2_monitor_management.MonitorCompany")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorMunicipalityRegistration,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"tipo_download\":1,\"municipio\":\"synthetic\",\"uf\":\"synthetic\",\"codigo_ibge\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorMunicipalityRegistration")
stopifnot(inherits(x,"api2_monitor_management.MonitorMunicipalityRegistration")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorAvailableMunicipality,"{\"nativo\":false,\"im\":false,\"certificado\":false,\"login_senha\":false,\"cadastro_prefeitura\":false,\"domicilio_fiscal_municipio\":false,\"multiplos_servicos\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorAvailableMunicipality")
stopifnot(inherits(x,"api2_monitor_management.MonitorAvailableMunicipality")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDownloadStatistics,"{\"total_downloads\":0,\"empresas\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDownloadStatistics")
stopifnot(inherits(x,"api2_monitor_management.MonitorDownloadStatistics")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDownloadStatisticsEmpresasItem,"{\"empresa_uuid\":\"00000000-0000-4000-8000-000000000001\",\"total_downloads\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDownloadStatisticsEmpresasItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDownloadStatisticsEmpresasItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorCompanyPage,"{\"data\":[],\"meta\":{\"current_page\":1,\"last_page\":1,\"per_page\":1,\"total\":0}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorCompanyPage")
stopifnot(inherits(x,"api2_monitor_management.MonitorCompanyPage")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorMunicipalityPage,"{\"data\":[],\"meta\":{\"current_page\":1,\"last_page\":1,\"per_page\":1,\"total\":0}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorMunicipalityPage")
stopifnot(inherits(x,"api2_monitor_management.MonitorMunicipalityPage")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorAvailableMunicipalities,"{\"data\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorAvailableMunicipalities")
stopifnot(inherits(x,"api2_monitor_management.MonitorAvailableMunicipalities")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorPerson,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorPerson")
stopifnot(inherits(x,"api2_monitor_management.MonitorPerson")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorManifestationStateVariant0,"{\"codigo\":0,\"descricao\":\"synthetic\",\"manifestado\":false,\"automatica\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorManifestationStateVariant0")
stopifnot(inherits(x,"api2_monitor_management.MonitorManifestationStateVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfe,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000001\",\"modelo\":\"nfe\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfe")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfe")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeTotaisIssqn,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeTotaisIssqn")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeTotaisIssqn")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostos,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostos")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostos")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosImpostoImportacao,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosImpostoImportacao")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosImpostoImportacao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIpi,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIpi")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIpi")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosCofins,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosCofins")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosCofins")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsEstadual,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsEstadual")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsMunicipal,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsCbs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIbsCbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegular,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegular")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegular")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsEstadual,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsEstadual")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsMunicipal,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularCbs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamental,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamental")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamental")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsEstadual,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsEstadual")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsMunicipal,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalCbs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoMonofasica,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoMonofasica")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoMonofasica")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsTransferenciaCredito,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsTransferenciaCredito")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIbsCbsTransferenciaCredito")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsAjusteCompetencia,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsAjusteCompetencia")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIbsCbsAjusteCompetencia")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumido,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumido")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumido")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumidoZfm,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumidoZfm")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumidoZfm")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIbsCbsEstornoCredito,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsEstornoCredito")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIbsCbsEstornoCredito")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIcms,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIcms")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIcms")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosPis,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosPis")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosPis")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIssqn,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIssqn")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIssqn")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProdutosItemImpostosIpiDevolvido,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIpiDevolvido")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProdutosItemImpostosIpiDevolvido")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProtocoloVariant1,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProtocoloVariant1")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProtocoloVariant1")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeProtocolo,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeProtocolo")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeProtocolo")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeTotais,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeTotais")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeTotais")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeFatura,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeFatura")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeFatura")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfePedido,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfePedido")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfePedido")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeResponsavelTecnico,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeResponsavelTecnico")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeResponsavelTecnico")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeTransporte,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeTransporte")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeTransporte")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeTransporteVeiculo,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeTransporteVeiculo")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeTransporteVeiculo")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeTransporteRetirada,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeTransporteRetirada")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeTransporteRetirada")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeTransporteEntrega,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeTransporteEntrega")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeTransporteEntrega")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeTransporteVolumesItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeTransporteVolumesItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeTransporteVolumesItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeTransporteTransportadora,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeTransporteTransportadora")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeTransporteTransportadora")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeDocs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeDocs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeDocs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeParcelasItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeParcelasItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeParcelasItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeFornecedorVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeFornecedorVariant0")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeFornecedorVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeTotaisIbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeTotaisIbsCbs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeTotaisIbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfeTotaisIbsCbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfeTotaisIbsCbsCbs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfeTotaisIbsCbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfse,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000001\",\"modelo\":\"nfse\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfse")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseTotais,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseTotais")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseTotais")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseImpostos,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseImpostos")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseImpostos")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseImpostosIbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseImpostosIbsCbs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseImpostosIbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseImpostosIbsCbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseImpostosIbsCbsCbs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseImpostosIbsCbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseImpostosIbsCbsIbsEstadual,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseImpostosIbsCbsIbsEstadual")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseImpostosIbsCbsIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseImpostosIbsCbsIbsMunicipal,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseImpostosIbsCbsIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseImpostosIbsCbsIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseImpostosIbsCbsLocalidadeIncidencia,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseImpostosIbsCbsLocalidadeIncidencia")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseImpostosIbsCbsLocalidadeIncidencia")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseIdentificacaoNfse,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseIdentificacaoNfse")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseIdentificacaoNfse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseIdentificacaoNfseRps,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseIdentificacaoNfseRps")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseIdentificacaoNfseRps")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseServicosItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseServicosItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseServicosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseServicosItemLocalPrestacaoVariant1,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseServicosItemLocalPrestacaoVariant1")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseServicosItemLocalPrestacaoVariant1")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseServicosItemLocalPrestacao,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseServicosItemLocalPrestacao")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseServicosItemLocalPrestacao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseServicosItemImpostos,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseServicosItemImpostos")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseServicosItemImpostos")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseServicosItemImpostosIbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseServicosItemImpostosIbsCbs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseServicosItemImpostosIbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseServicosItemImpostosIbsCbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseServicosItemImpostosIbsCbsCbs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseServicosItemImpostosIbsCbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseServicosItemImpostosIbsCbsIbsEstadual,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseServicosItemImpostosIbsCbsIbsEstadual")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseServicosItemImpostosIbsCbsIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseServicosItemImpostosIbsCbsIbsMunicipal,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseServicosItemImpostosIbsCbsIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseServicosItemImpostosIbsCbsIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseServicosItemImpostosIbsCbsLocalidadeIncidencia,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseServicosItemImpostosIbsCbsLocalidadeIncidencia")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseServicosItemImpostosIbsCbsLocalidadeIncidencia")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseLocalPrestacaoVariant1,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseLocalPrestacaoVariant1")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseLocalPrestacaoVariant1")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseLocalPrestacao,"\"synthetic\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseLocalPrestacao")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseLocalPrestacao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseDocs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseDocs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseDocs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentNfseFornecedorVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentNfseFornecedorVariant0")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentNfseFornecedorVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfe,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000001\",\"modelo\":\"mdfe\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfe")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfe")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeCarregamentoItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeCarregamentoItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeCarregamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeCarregamentoItemDocumentosItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeCarregamentoItemDocumentosItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeCarregamentoItemDocumentosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeSeguroItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeSeguroItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeSeguroItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeSeguroItemResponsavel,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeSeguroItemResponsavel")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeSeguroItemResponsavel")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeSeguroItemSeguradora,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeSeguroItemSeguradora")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeSeguroItemSeguradora")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfePercursoItemVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfePercursoItemVariant0")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfePercursoItemVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfePercursoItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfePercursoItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfePercursoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeDescarregamentoItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeDescarregamentoItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeDescarregamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeDescarregamentoItemDocumentosFiscaisItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeDescarregamentoItemDocumentosFiscaisItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeDescarregamentoItemDocumentosFiscaisItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeDescarregamentoItemDocumentosItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeDescarregamentoItemDocumentosItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeDescarregamentoItemDocumentosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeFerroviario,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeFerroviario")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeFerroviario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeFerroviarioTrem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeFerroviarioTrem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeFerroviarioTrem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeFerroviarioVagoesItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeFerroviarioVagoesItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeFerroviarioVagoesItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeProdutoPredominante,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeProdutoPredominante")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeProdutoPredominante")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeProdutoPredominanteLotacao,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeProdutoPredominanteLotacao")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeProdutoPredominanteLotacao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeProdutoPredominanteLotacaoCarregamento,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeProdutoPredominanteLotacaoCarregamento")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeProdutoPredominanteLotacaoCarregamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeProdutoPredominanteLotacaoDescarregamento,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeProdutoPredominanteLotacaoDescarregamento")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeProdutoPredominanteLotacaoDescarregamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeAquaviario,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeAquaviario")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeAquaviario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeAquaviarioTerminalCarregamentoItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeAquaviarioTerminalCarregamentoItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeAquaviarioTerminalCarregamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeAquaviarioTerminalDescarregamentoItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeAquaviarioTerminalDescarregamentoItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeAquaviarioTerminalDescarregamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeAquaviarioEmbarcacaoComboioItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeAquaviarioEmbarcacaoComboioItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeAquaviarioEmbarcacaoComboioItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeAquaviarioCargaVaziaItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeAquaviarioCargaVaziaItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeAquaviarioCargaVaziaItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeAquaviarioTransporteVazioItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeAquaviarioTransporteVazioItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeAquaviarioTransporteVazioItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeRodoviario,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeRodoviario")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeRodoviario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeRodoviarioContratantesItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeRodoviarioContratantesItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeRodoviarioContratantesItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeRodoviarioVeiculoReboqueItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeRodoviarioVeiculoReboqueItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeRodoviarioVeiculoReboqueItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeRodoviarioVeiculoReboqueItemProprietario,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeRodoviarioVeiculoReboqueItemProprietario")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeRodoviarioVeiculoReboqueItemProprietario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeRodoviarioLacresItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeRodoviarioLacresItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeRodoviarioLacresItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeRodoviarioVeiculosItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeRodoviarioVeiculosItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeRodoviarioVeiculosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeRodoviarioVeiculosItemCondutor,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeRodoviarioVeiculosItemCondutor")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeRodoviarioVeiculosItemCondutor")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeRodoviarioCiotItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeRodoviarioCiotItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeRodoviarioCiotItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeRodoviarioContratanteItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeRodoviarioContratanteItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeRodoviarioContratanteItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeRodoviarioCondutorItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeRodoviarioCondutorItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeRodoviarioCondutorItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeRodoviarioVeiculoTracao,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeRodoviarioVeiculoTracao")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeRodoviarioVeiculoTracao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeRodoviarioVeiculoTracaoProprietario,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeRodoviarioVeiculoTracaoProprietario")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeRodoviarioVeiculoTracaoProprietario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeRodoviarioValePedagioVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeRodoviarioValePedagioVariant0")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeRodoviarioValePedagioVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeRodoviarioValePedagioVariant1Item,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeRodoviarioValePedagioVariant1Item")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeRodoviarioValePedagioVariant1Item")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeRodoviarioValePedagio,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeRodoviarioValePedagio")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeRodoviarioValePedagio")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeDocs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeDocs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeDocs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeAereo,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeAereo")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeAereo")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentMdfeFornecedorVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentMdfeFornecedorVariant0")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentMdfeFornecedorVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCte,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000001\",\"modelo\":\"cte\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCte")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCte")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteDocumentosFiscaisItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteDocumentosFiscaisItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteDocumentosFiscaisItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteServico,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteServico")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteServico")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteServicoDocumentosOriginariosItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteServicoDocumentosOriginariosItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteServicoDocumentosOriginariosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteServicoComponentesValorItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteServicoComponentesValorItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteServicoComponentesValorItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteServicoInformacoesCarga,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteServicoInformacoesCarga")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteServicoInformacoesCarga")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteServicoInformacoesCargaCubagem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteServicoInformacoesCargaCubagem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteServicoInformacoesCargaCubagem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteImpostos,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteImpostos")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteImpostos")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteImpostosIbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteImpostosIbsCbs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteImpostosIbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteImpostosIbsCbsIbsEstadual,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteImpostosIbsCbsIbsEstadual")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteImpostosIbsCbsIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteImpostosIbsCbsIbsMunicipal,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteImpostosIbsCbsIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteImpostosIbsCbsIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteImpostosIbsCbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteImpostosIbsCbsCbs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteImpostosIbsCbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteImpostosIbsCbsTributacaoRegular,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteImpostosIbsCbsTributacaoRegular")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteImpostosIbsCbsTributacaoRegular")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsEstadual,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsEstadual")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsMunicipal,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteImpostosIbsCbsTributacaoRegularCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteImpostosIbsCbsTributacaoRegularCbs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteImpostosIbsCbsTributacaoRegularCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteImpostosIbsCbsCompraGovernamental,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteImpostosIbsCbsCompraGovernamental")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteImpostosIbsCbsCompraGovernamental")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsEstadual,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsEstadual")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsMunicipal,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteImpostosIbsCbsCompraGovernamentalCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteImpostosIbsCbsCompraGovernamentalCbs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteImpostosIbsCbsCompraGovernamentalCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteImpostosIbsCbsCreditoPresumido,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteImpostosIbsCbsCreditoPresumido")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteImpostosIbsCbsCreditoPresumido")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteImpostosIbsCbsEstornoCredito,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteImpostosIbsCbsEstornoCredito")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteImpostosIbsCbsEstornoCredito")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteImpostosIcms,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteImpostosIcms")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteImpostosIcms")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteDocs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteDocs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteDocs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteFornecedorVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteFornecedorVariant0")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteFornecedorVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOs,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000001\",\"modelo\":\"cte_os\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsDocumentosFiscaisItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsDocumentosFiscaisItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsDocumentosFiscaisItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsServico,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsServico")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsServico")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsServicoDocumentosOriginariosItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsServicoDocumentosOriginariosItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsServicoDocumentosOriginariosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsServicoComponentesValorItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsServicoComponentesValorItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsServicoComponentesValorItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsServicoInformacoesCarga,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsServicoInformacoesCarga")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsServicoInformacoesCarga")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsServicoInformacoesCargaCubagem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsServicoInformacoesCargaCubagem")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsServicoInformacoesCargaCubagem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsImpostos,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsImpostos")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsImpostos")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsImpostosIbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsIbsEstadual,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsIbsEstadual")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsImpostosIbsCbsIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsIbsMunicipal,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsImpostosIbsCbsIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsCbs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsImpostosIbsCbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsTributacaoRegular,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsTributacaoRegular")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsImpostosIbsCbsTributacaoRegular")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsEstadual,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsEstadual")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsMunicipal,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularCbs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsCompraGovernamental,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsCompraGovernamental")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsImpostosIbsCbsCompraGovernamental")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsEstadual,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsEstadual")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsMunicipal,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsMunicipal")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalCbs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsCreditoPresumido,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsCreditoPresumido")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsImpostosIbsCbsCreditoPresumido")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsImpostosIbsCbsEstornoCredito,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsEstornoCredito")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsImpostosIbsCbsEstornoCredito")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsImpostosIcms,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsImpostosIcms")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsImpostosIcms")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsDocs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsDocs")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsDocs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentCteOsFornecedorVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentCteOsFornecedorVariant0")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentCteOsFornecedorVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocument,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000001\",\"modelo\":\"nfe\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocument")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocument")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorCursorPagination,"{\"per_page\":1,\"next_cursor\":\"synthetic\",\"prev_cursor\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorCursorPagination")
stopifnot(inherits(x,"api2_monitor_management.MonitorCursorPagination")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentPage,"{\"data\":[],\"meta\":{\"current_page\":1,\"last_page\":1,\"per_page\":1,\"total\":0}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentPage")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentPage")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDocumentPageMeta,"{\"current_page\":1,\"last_page\":1,\"per_page\":1,\"total\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDocumentPageMeta")
stopifnot(inherits(x,"api2_monitor_management.MonitorDocumentPageMeta")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorReport,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"relatorio\":\"xml\",\"modelo\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorReport")
stopifnot(inherits(x,"api2_monitor_management.MonitorReport")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorReportFiltros,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorReportFiltros")
stopifnot(inherits(x,"api2_monitor_management.MonitorReportFiltros")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorReportFiltrosPeriodo,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorReportFiltrosPeriodo")
stopifnot(inherits(x,"api2_monitor_management.MonitorReportFiltrosPeriodo")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorReportPage,"{\"data\":[],\"meta\":{\"current_page\":1,\"last_page\":1,\"per_page\":1,\"total\":0}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorReportPage")
stopifnot(inherits(x,"api2_monitor_management.MonitorReportPage")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorSearchRequest,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorSearchRequest")
stopifnot(inherits(x,"api2_monitor_management.MonitorSearchRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorSearchRequestEmpresaUuid,"\"00000000-0000-4000-8000-000000000001\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorSearchRequestEmpresaUuid")
stopifnot(inherits(x,"api2_monitor_management.MonitorSearchRequestEmpresaUuid")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorSearchRequestCategoria,"\"emitidas\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorSearchRequestCategoria")
stopifnot(inherits(x,"api2_monitor_management.MonitorSearchRequestCategoria")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorSearchRequestStatus,"\"aprovado\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorSearchRequestStatus")
stopifnot(inherits(x,"api2_monitor_management.MonitorSearchRequestStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorSearchRequestManifestacao,"\"pendente\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorSearchRequestManifestacao")
stopifnot(inherits(x,"api2_monitor_management.MonitorSearchRequestManifestacao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorSearchRequestFinalidade,"0",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorSearchRequestFinalidade")
stopifnot(inherits(x,"api2_monitor_management.MonitorSearchRequestFinalidade")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorSearchRequestOperacao,"0",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorSearchRequestOperacao")
stopifnot(inherits(x,"api2_monitor_management.MonitorSearchRequestOperacao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorSearchRequestModalidade,"1",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorSearchRequestModalidade")
stopifnot(inherits(x,"api2_monitor_management.MonitorSearchRequestModalidade")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorSearchRequestFiltros,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorSearchRequestFiltros")
stopifnot(inherits(x,"api2_monitor_management.MonitorSearchRequestFiltros")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorSearchRequestFiltrosEmpresaUuid,"\"00000000-0000-4000-8000-000000000001\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorSearchRequestFiltrosEmpresaUuid")
stopifnot(inherits(x,"api2_monitor_management.MonitorSearchRequestFiltrosEmpresaUuid")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorSearchRequestFiltrosCategoria,"\"emitidas\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorSearchRequestFiltrosCategoria")
stopifnot(inherits(x,"api2_monitor_management.MonitorSearchRequestFiltrosCategoria")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorSearchRequestFiltrosStatus,"\"aprovado\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorSearchRequestFiltrosStatus")
stopifnot(inherits(x,"api2_monitor_management.MonitorSearchRequestFiltrosStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorSearchRequestFiltrosManifestacao,"\"pendente\"",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorSearchRequestFiltrosManifestacao")
stopifnot(inherits(x,"api2_monitor_management.MonitorSearchRequestFiltrosManifestacao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorSearchRequestFiltrosModelo,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorSearchRequestFiltrosModelo")
stopifnot(inherits(x,"api2_monitor_management.MonitorSearchRequestFiltrosModelo")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorSearchRequestFiltrosModeloFinalidade,"0",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorSearchRequestFiltrosModeloFinalidade")
stopifnot(inherits(x,"api2_monitor_management.MonitorSearchRequestFiltrosModeloFinalidade")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorSearchRequestFiltrosModeloOperacao,"0",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorSearchRequestFiltrosModeloOperacao")
stopifnot(inherits(x,"api2_monitor_management.MonitorSearchRequestFiltrosModeloOperacao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorSearchRequestFiltrosModeloModalidade,"1",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorSearchRequestFiltrosModeloModalidade")
stopifnot(inherits(x,"api2_monitor_management.MonitorSearchRequestFiltrosModeloModalidade")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorEvent,"{\"uuid\":\"synthetic\",\"documento_uuid\":\"synthetic\",\"registrado_em\":\"synthetic\",\"tipo_evento\":0,\"resumo\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorEvent")
stopifnot(inherits(x,"api2_monitor_management.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorEventAlteracoesItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorEventAlteracoesItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorEventAlteracoesItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorEventMdfe,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorEventMdfe")
stopifnot(inherits(x,"api2_monitor_management.MonitorEventMdfe")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorEventLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorEventLog")
stopifnot(inherits(x,"api2_monitor_management.MonitorEventLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorManifestationRequest,"{\"evento\":1,\"manifestacao\":1}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorManifestationRequest")
stopifnot(inherits(x,"api2_monitor_management.MonitorManifestationRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorImportRequest,"{\"empresa_uuid\":\"00000000-0000-4000-8000-000000000001\",\"url_arquivo_zip\":\"https://example.invalid/fiscal.zip\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorImportRequest")
stopifnot(inherits(x,"api2_monitor_management.MonitorImportRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorImportStatus,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"status\":\"synthetic\",\"processado\":0,\"importados\":[],\"descartados\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorImportStatus")
stopifnot(inherits(x,"api2_monitor_management.MonitorImportStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorImportStatusImportadosItem,"{\"arquivo\":\"synthetic\",\"uuid\":\"00000000-0000-4000-8000-000000000001\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorImportStatusImportadosItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorImportStatusImportadosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorImportStatusDescartadosItem,"{\"arquivo\":\"synthetic\",\"motivo\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorImportStatusDescartadosItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorImportStatusDescartadosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorCreateCompanyRequest,"{\"cnpj\":\"00000000000000\",\"razao_social\":\"Synthetic company\",\"cep\":\"01001000\",\"certificado_base64\":\"PHRlc3QvPg==\",\"certificado_senha\":\"synthetic-placeholder\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorCreateCompanyRequest")
stopifnot(inherits(x,"api2_monitor_management.MonitorCreateCompanyRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorUpdateCompanyRequest,"{\"modelos_download\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorUpdateCompanyRequest")
stopifnot(inherits(x,"api2_monitor_management.MonitorUpdateCompanyRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorCreateMunicipalityRequest,"{\"codigo_ibge\":\"3550308\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorCreateMunicipalityRequest")
stopifnot(inherits(x,"api2_monitor_management.MonitorCreateMunicipalityRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorUpdateMunicipalityRequest,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorUpdateMunicipalityRequest")
stopifnot(inherits(x,"api2_monitor_management.MonitorUpdateMunicipalityRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorImportNotificationData,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"status\":\"processando\",\"empresa_uuid\":null,\"processado\":0,\"total\":null,\"importados\":[],\"descartados\":[],\"erro\":null}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorImportNotificationData")
stopifnot(inherits(x,"api2_monitor_management.MonitorImportNotificationData")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorImportNotificationDataImportadosItem,"{\"arquivo\":\"synthetic\",\"uuid\":\"00000000-0000-4000-8000-000000000001\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorImportNotificationDataImportadosItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorImportNotificationDataImportadosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorImportNotificationDataDescartadosItem,"{\"arquivo\":\"synthetic\",\"motivo\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorImportNotificationDataDescartadosItem")
stopifnot(inherits(x,"api2_monitor_management.MonitorImportNotificationDataDescartadosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorNotification1,"{\"tipo_notificacao\":1,\"data\":{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000001\",\"modelo\":\"nfe\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorNotification1")
stopifnot(inherits(x,"api2_monitor_management.MonitorNotification1")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorNotification2,"{\"tipo_notificacao\":2,\"data\":{\"uuid\":\"synthetic\",\"documento_uuid\":\"synthetic\",\"registrado_em\":\"synthetic\",\"tipo_evento\":0,\"resumo\":false}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorNotification2")
stopifnot(inherits(x,"api2_monitor_management.MonitorNotification2")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorNotification3,"{\"tipo_notificacao\":3,\"data\":{\"uuid\":\"00000000-0000-4000-8000-000000000000\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorNotification3")
stopifnot(inherits(x,"api2_monitor_management.MonitorNotification3")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorNotification4,"{\"tipo_notificacao\":4,\"data\":{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"erro\":\"synthetic\",\"data_erro\":\"synthetic\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorNotification4")
stopifnot(inherits(x,"api2_monitor_management.MonitorNotification4")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorNotification4Data,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"erro\":\"synthetic\",\"data_erro\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorNotification4Data")
stopifnot(inherits(x,"api2_monitor_management.MonitorNotification4Data")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorNotification5,"{\"tipo_notificacao\":5,\"data\":{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"status\":\"processando\",\"empresa_uuid\":null,\"processado\":0,\"total\":null,\"importados\":[],\"descartados\":[],\"erro\":null}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorNotification5")
stopifnot(inherits(x,"api2_monitor_management.MonitorNotification5")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorNotification,"{\"tipo_notificacao\":3,\"data\":{\"uuid\":\"00000000-0000-4000-8000-000000000000\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorNotification")
stopifnot(inherits(x,"api2_monitor_management.MonitorNotification")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorDeleteCompanyMunicipalityResponse,"{\"msg\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_management::MonitorDeleteCompanyMunicipalityResponse")
stopifnot(inherits(x,"api2_monitor_management.MonitorDeleteCompanyMunicipalityResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorError,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_reads::MonitorError")
stopifnot(inherits(x,"api2_monitor_reads.MonitorError")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorPagination,"{\"current_page\":1,\"last_page\":1,\"per_page\":50,\"total\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_reads::MonitorPagination")
stopifnot(inherits(x,"api2_monitor_reads.MonitorPagination")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorAddress,"{\"codigo_municipio\":3550308,\"cep\":\"00000-000\",\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_reads::MonitorAddress")
stopifnot(inherits(x,"api2_monitor_reads.MonitorAddress")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorCompany,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelos_download\":[\"nfse\"],\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_reads::MonitorCompany")
stopifnot(inherits(x,"api2_monitor_reads.MonitorCompany")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorMunicipalityRegistration,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"tipo_download\":1,\"municipio\":\"synthetic\",\"uf\":\"synthetic\",\"codigo_ibge\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_reads::MonitorMunicipalityRegistration")
stopifnot(inherits(x,"api2_monitor_reads.MonitorMunicipalityRegistration")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorAvailableMunicipality,"{\"nativo\":false,\"im\":false,\"certificado\":false,\"login_senha\":false,\"cadastro_prefeitura\":false,\"domicilio_fiscal_municipio\":false,\"multiplos_servicos\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_reads::MonitorAvailableMunicipality")
stopifnot(inherits(x,"api2_monitor_reads.MonitorAvailableMunicipality")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorDownloadStatistics,"{\"total_downloads\":0,\"empresas\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_reads::MonitorDownloadStatistics")
stopifnot(inherits(x,"api2_monitor_reads.MonitorDownloadStatistics")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorDownloadStatisticsEmpresasItem,"{\"empresa_uuid\":\"00000000-0000-4000-8000-000000000001\",\"total_downloads\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_reads::MonitorDownloadStatisticsEmpresasItem")
stopifnot(inherits(x,"api2_monitor_reads.MonitorDownloadStatisticsEmpresasItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorCompanyPage,"{\"data\":[],\"meta\":{\"current_page\":1,\"last_page\":1,\"per_page\":50,\"total\":0}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_reads::MonitorCompanyPage")
stopifnot(inherits(x,"api2_monitor_reads.MonitorCompanyPage")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorMunicipalityPage,"{\"data\":[],\"meta\":{\"current_page\":1,\"last_page\":1,\"per_page\":1,\"total\":0}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_reads::MonitorMunicipalityPage")
stopifnot(inherits(x,"api2_monitor_reads.MonitorMunicipalityPage")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorAvailableMunicipalities,"{\"data\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_reads::MonitorAvailableMunicipalities")
stopifnot(inherits(x,"api2_monitor_reads.MonitorAvailableMunicipalities")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorListCompaniesQuery,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_reads::MonitorListCompaniesQuery")
stopifnot(inherits(x,"api2_monitor_reads.MonitorListCompaniesQuery")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorListCompanyMunicipalitiesQuery,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_reads::MonitorListCompanyMunicipalitiesQuery")
stopifnot(inherits(x,"api2_monitor_reads.MonitorListCompanyMunicipalitiesQuery")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorListAvailableMunicipalitiesResponse,"{\"data\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_reads::MonitorListAvailableMunicipalitiesResponse")
stopifnot(inherits(x,"api2_monitor_reads.MonitorListAvailableMunicipalitiesResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorListAvailableMunicipalitiesQuery,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_reads::MonitorListAvailableMunicipalitiesQuery")
stopifnot(inherits(x,"api2_monitor_reads.MonitorListAvailableMunicipalitiesQuery")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorGetDownloadStatisticsQuery,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_monitor_reads::MonitorGetDownloadStatisticsQuery")
stopifnot(inherits(x,"api2_monitor_reads.MonitorGetDownloadStatisticsQuery")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterError,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterError")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterError")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfseServiceCode,"{\"codigo\":\"synthetic\",\"descricao\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfseServiceCode")
stopifnot(inherits(x,"api2_nfcom_issuance.NfseServiceCode")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfseServiceCodeAliquotaSugerida,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfseServiceCodeAliquotaSugerida")
stopifnot(inherits(x,"api2_nfcom_issuance.NfseServiceCodeAliquotaSugerida")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfseProviderStatus,"{\"status\":true,\"ambientes\":[],\"autenticacao\":[],\"emissao\":[],\"funcoes\":[],\"pdf_nfse\":false,\"pdf_sincrono\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfseProviderStatus")
stopifnot(inherits(x,"api2_nfcom_issuance.NfseProviderStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomServiceStatus,"{\"operacional\":false,\"mensagem\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomServiceStatus")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomServiceStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfseFiscalResponse,"{\"uuid\":\"synthetic\",\"modelo\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfseFiscalResponse")
stopifnot(inherits(x,"api2_nfcom_issuance.NfseFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfseFiscalResponseNfseSubstituida,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfseFiscalResponseNfseSubstituida")
stopifnot(inherits(x,"api2_nfcom_issuance.NfseFiscalResponseNfseSubstituida")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfseFiscalResponseInfoNfseItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfseFiscalResponseInfoNfseItem")
stopifnot(inherits(x,"api2_nfcom_issuance.NfseFiscalResponseInfoNfseItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfseFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfseFiscalResponseLog")
stopifnot(inherits(x,"api2_nfcom_issuance.NfseFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomPaymentEvent,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomPaymentEvent")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomPaymentEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomPaymentEventPagamentoVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomPaymentEventPagamentoVariant0")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomPaymentEventPagamentoVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomFiscalResponse,"{\"uuid\":\"synthetic\",\"modelo\":\"nfcom\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomFiscalResponse")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomFiscalResponseLog")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomPaymentEvents,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\",\"eventos_pagamento\":[],\"total_eventos\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomPaymentEvents")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomPaymentEvents")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfseManifestationRequest,"{\"ambiente\":1,\"chave\":\"syntheticaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\",\"manifestador\":1,\"evento\":1}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfseManifestationRequest")
stopifnot(inherits(x,"api2_nfcom_issuance.NfseManifestationRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_CteFiscalResponse,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::CteFiscalResponse")
stopifnot(inherits(x,"api2_nfcom_issuance.CteFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_CteFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::CteFiscalResponseLog")
stopifnot(inherits(x,"api2_nfcom_issuance.CteFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_CteFiscalResponseEventosPagamentoItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::CteFiscalResponseEventosPagamentoItem")
stopifnot(inherits(x,"api2_nfcom_issuance.CteFiscalResponseEventosPagamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_MdfeFiscalResponse,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::MdfeFiscalResponse")
stopifnot(inherits(x,"api2_nfcom_issuance.MdfeFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_MdfeFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::MdfeFiscalResponseLog")
stopifnot(inherits(x,"api2_nfcom_issuance.MdfeFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_DceFiscalResponse,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::DceFiscalResponse")
stopifnot(inherits(x,"api2_nfcom_issuance.DceFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_DceFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::DceFiscalResponseLog")
stopifnot(inherits(x,"api2_nfcom_issuance.DceFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_FiscalEventResponse,"{\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::FiscalEventResponse")
stopifnot(inherits(x,"api2_nfcom_issuance.FiscalEventResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_FiscalEventResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::FiscalEventResponseLog")
stopifnot(inherits(x,"api2_nfcom_issuance.FiscalEventResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_CtePaymentEvents,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\",\"eventos_pagamento\":[],\"total_eventos\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::CtePaymentEvents")
stopifnot(inherits(x,"api2_nfcom_issuance.CtePaymentEvents")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_CtePaymentEventsEventosPagamentoItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::CtePaymentEventsEventosPagamentoItem")
stopifnot(inherits(x,"api2_nfcom_issuance.CtePaymentEventsEventosPagamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayload,"{\"ambiente\":2,\"natureza_operacao\":\"Synthetic communication\",\"tipo_operacao\":1,\"finalidade\":1,\"tipo_faturamento\":0,\"cliente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"Synthetic company\",\"indicador_ie\":9,\"endereco\":{\"logradouro\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"codigo_municipio\":\"3550308\",\"municipio\":\"Synthetic municipality\",\"uf\":\"SP\",\"cep\":\"00000000\"}},\"assinante\":{\"codigo\":\"SYNTHETIC\",\"tipo\":1,\"tipo_servico\":4,\"contrato\":{\"numero\":\"SYNTHETIC\",\"data_inicio\":\"2026-01-01\",\"data_fim\":\"2026-12-31\"}},\"itens\":[{\"descricao\":\"Synthetic communication service\",\"unidade\":\"MES\",\"quantidade\":\"1.0000\",\"valor_unitario\":\"99.90\",\"valor_total\":\"99.90\",\"indicador_total\":1,\"classe_imposto\":\"REF123456\"}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayload")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayloadAssinanteVariant0,"{\"codigo\":\"SYNTHETIC\",\"tipo\":1,\"tipo_servico\":4,\"contrato\":{\"numero\":\"SYNTHETIC\",\"data_inicio\":\"2026-01-01\",\"data_fim\":\"2026-12-31\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayloadAssinanteVariant0")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayloadAssinanteVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayloadAssinanteVariant0ContratoVariant0,"{\"numero\":\"SYNTHETIC\",\"data_inicio\":\"2026-01-01\",\"data_fim\":\"2026-12-31\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayloadAssinanteVariant0ContratoVariant0")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayloadAssinanteVariant0ContratoVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayloadCliente,"{\"cnpj\":\"00000000000000\",\"razao_social\":\"Synthetic company\",\"indicador_ie\":9,\"endereco\":{\"logradouro\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"codigo_municipio\":\"3550308\",\"municipio\":\"Synthetic municipality\",\"uf\":\"SP\",\"cep\":\"00000000\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayloadCliente")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayloadCliente")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayloadClienteEmail,"[]",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayloadClienteEmail")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayloadClienteEmail")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayloadClienteEndereco,"{\"logradouro\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"codigo_municipio\":\"3550308\",\"municipio\":\"Synthetic municipality\",\"uf\":\"SP\",\"cep\":\"00000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayloadClienteEndereco")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayloadClienteEndereco")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayloadCofaturamentoVariant0,"{\"chave_nfcom_local\":\"123456ab12cd34ef5600000000000000000000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayloadCofaturamentoVariant0")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayloadCofaturamentoVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayloadCofaturamentoVariant0NfReferenciadaVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayloadCofaturamentoVariant0NfReferenciadaVariant0")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayloadCofaturamentoVariant0NfReferenciadaVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayloadFaturaVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayloadFaturaVariant0")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayloadFaturaVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayloadFaturamentoCentralizadoVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayloadFaturamentoCentralizadoVariant0")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayloadFaturamentoCentralizadoVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayloadImpostosVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayloadImpostosVariant0")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayloadImpostosVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0CompraGovernamentalVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0CompraGovernamentalVariant0")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0CompraGovernamentalVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0CreditoPresumido,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0CreditoPresumido")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0CreditoPresumido")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0EstornoCredito,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0EstornoCredito")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0EstornoCredito")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0Cbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0Cbs")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0Cbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0IbsEstadual,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0IbsEstadual")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0IbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0IbsMunicipal,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0IbsMunicipal")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0IbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomItemGroup,"{\"descricao\":\"Synthetic communication service\",\"unidade\":\"MES\",\"quantidade\":\"1.0000\",\"valor_unitario\":\"99.90\",\"valor_total\":\"99.90\",\"indicador_total\":1,\"classe_imposto\":\"REF123456\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomItemGroup")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomItemGroup")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomItemGroupImpostos,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomItemGroupImpostos")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomItemGroupImpostos")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomItemGroupImpostosCofinsVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomItemGroupImpostosCofinsVariant0")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomItemGroupImpostosCofinsVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomItemGroupImpostosFunttelVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomItemGroupImpostosFunttelVariant0")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomItemGroupImpostosFunttelVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomItemGroupImpostosFustVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomItemGroupImpostosFustVariant0")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomItemGroupImpostosFustVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomItemGroupImpostosIbsCbsVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomItemGroupImpostosIbsCbsVariant0")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomItemGroupImpostosIbsCbsVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomItemGroupImpostosIbsCbsVariant0CompraGovernamentalVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomItemGroupImpostosIbsCbsVariant0CompraGovernamentalVariant0")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomItemGroupImpostosIbsCbsVariant0CompraGovernamentalVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomItemGroupImpostosIbsCbsVariant0CreditoPresumido,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomItemGroupImpostosIbsCbsVariant0CreditoPresumido")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomItemGroupImpostosIbsCbsVariant0CreditoPresumido")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomItemGroupImpostosIbsCbsVariant0EstornoCredito,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomItemGroupImpostosIbsCbsVariant0EstornoCredito")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomItemGroupImpostosIbsCbsVariant0EstornoCredito")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomItemGroupImpostosIbsCbsVariant0Cbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomItemGroupImpostosIbsCbsVariant0Cbs")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomItemGroupImpostosIbsCbsVariant0Cbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomItemGroupImpostosIbsCbsVariant0IbsEstadual,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomItemGroupImpostosIbsCbsVariant0IbsEstadual")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomItemGroupImpostosIbsCbsVariant0IbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomItemGroupImpostosIbsCbsVariant0IbsMunicipal,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomItemGroupImpostosIbsCbsVariant0IbsMunicipal")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomItemGroupImpostosIbsCbsVariant0IbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomItemGroupImpostosIcmsVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomItemGroupImpostosIcmsVariant0")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomItemGroupImpostosIcmsVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomItemGroupImpostosPisVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomItemGroupImpostosPisVariant0")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomItemGroupImpostosPisVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayloadPgtoVincVariant0,"{\"pagamentos\":[{\"n_pag\":1,\"id_transacao\":\"SYNTHETIC\",\"tp_meio_pgto\":\"01\",\"cnpj_receb\":\"ab12cd34ef5600\",\"cnpj_base_psp\":\"ab12cd34\"}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayloadPgtoVincVariant0")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayloadPgtoVincVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayloadPgtoVincVariant0PagamentosItem,"{\"n_pag\":1,\"id_transacao\":\"SYNTHETIC\",\"tp_meio_pgto\":\"01\",\"cnpj_receb\":\"ab12cd34ef5600\",\"cnpj_base_psp\":\"ab12cd34\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayloadPgtoVincVariant0PagamentosItem")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayloadPgtoVincVariant0PagamentosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayloadSubstituicaoVariant0,"{\"chave_nfcom_substituida\":\"123456ab12cd34ef5600000000000000000000000000\",\"motivo\":\"01\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayloadSubstituicaoVariant0")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayloadSubstituicaoVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayloadSubstituicaoVariant0NfReferenciadaVariant0,"{\"cnpj\":\"00000000000000\",\"modelo\":\"21\",\"serie\":\"001\",\"numero\":1,\"competencia\":\"202601\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterIssueNfcomPayloadSubstituicaoVariant0NfReferenciadaVariant0")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayloadSubstituicaoVariant0NfReferenciadaVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterCancelNfcomPayload,"{\"chave\":\"123456ab12cd34ef5600000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::EmitterCancelNfcomPayload")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterCancelNfcomPayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomDocumentedGroup1906,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomDocumentedGroup1906")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomDocumentedGroup1906")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomDocumentedGroup1953,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomDocumentedGroup1953")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomDocumentedGroup1953")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomDocumentedGroup2114,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomDocumentedGroup2114")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomDocumentedGroup2114")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomDocumentedGroup2382,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfcom_issuance::NfcomDocumentedGroup2382")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomDocumentedGroup2382")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterError,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterError")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterError")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceCode,"{\"codigo\":\"synthetic\",\"descricao\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceCode")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceCode")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceCodeAliquotaSugerida,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceCodeAliquotaSugerida")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceCodeAliquotaSugerida")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseProviderStatus,"{\"status\":true,\"ambientes\":[],\"autenticacao\":[],\"emissao\":[],\"funcoes\":[],\"pdf_nfse\":false,\"pdf_sincrono\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseProviderStatus")
stopifnot(inherits(x,"api2_nfse_issuance.NfseProviderStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfcomServiceStatus,"{\"operacional\":false,\"mensagem\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfcomServiceStatus")
stopifnot(inherits(x,"api2_nfse_issuance.NfcomServiceStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseFiscalResponse,"{\"uuid\":\"synthetic\",\"modelo\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseFiscalResponse")
stopifnot(inherits(x,"api2_nfse_issuance.NfseFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseFiscalResponseNfseSubstituida,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseFiscalResponseNfseSubstituida")
stopifnot(inherits(x,"api2_nfse_issuance.NfseFiscalResponseNfseSubstituida")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseFiscalResponseInfoNfseItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseFiscalResponseInfoNfseItem")
stopifnot(inherits(x,"api2_nfse_issuance.NfseFiscalResponseInfoNfseItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseFiscalResponseLog")
stopifnot(inherits(x,"api2_nfse_issuance.NfseFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfcomPaymentEvent,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfcomPaymentEvent")
stopifnot(inherits(x,"api2_nfse_issuance.NfcomPaymentEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfcomPaymentEventPagamentoVariant0,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfcomPaymentEventPagamentoVariant0")
stopifnot(inherits(x,"api2_nfse_issuance.NfcomPaymentEventPagamentoVariant0")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfcomFiscalResponse,"{\"uuid\":\"synthetic\",\"modelo\":\"nfcom\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfcomFiscalResponse")
stopifnot(inherits(x,"api2_nfse_issuance.NfcomFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfcomFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfcomFiscalResponseLog")
stopifnot(inherits(x,"api2_nfse_issuance.NfcomFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfcomPaymentEvents,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\",\"eventos_pagamento\":[],\"total_eventos\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfcomPaymentEvents")
stopifnot(inherits(x,"api2_nfse_issuance.NfcomPaymentEvents")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseManifestationRequest,"{\"ambiente\":1,\"chave\":\"syntheticaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\",\"manifestador\":1,\"evento\":1}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseManifestationRequest")
stopifnot(inherits(x,"api2_nfse_issuance.NfseManifestationRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_CteFiscalResponse,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::CteFiscalResponse")
stopifnot(inherits(x,"api2_nfse_issuance.CteFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_CteFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::CteFiscalResponseLog")
stopifnot(inherits(x,"api2_nfse_issuance.CteFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_CteFiscalResponseEventosPagamentoItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::CteFiscalResponseEventosPagamentoItem")
stopifnot(inherits(x,"api2_nfse_issuance.CteFiscalResponseEventosPagamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_MdfeFiscalResponse,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::MdfeFiscalResponse")
stopifnot(inherits(x,"api2_nfse_issuance.MdfeFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_MdfeFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::MdfeFiscalResponseLog")
stopifnot(inherits(x,"api2_nfse_issuance.MdfeFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_DceFiscalResponse,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::DceFiscalResponse")
stopifnot(inherits(x,"api2_nfse_issuance.DceFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_DceFiscalResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::DceFiscalResponseLog")
stopifnot(inherits(x,"api2_nfse_issuance.DceFiscalResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_FiscalEventResponse,"{\"status\":\"synthetic\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::FiscalEventResponse")
stopifnot(inherits(x,"api2_nfse_issuance.FiscalEventResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_FiscalEventResponseLog,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::FiscalEventResponseLog")
stopifnot(inherits(x,"api2_nfse_issuance.FiscalEventResponseLog")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_CtePaymentEvents,"{\"uuid\":\"synthetic\",\"status\":\"synthetic\",\"eventos_pagamento\":[],\"total_eventos\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::CtePaymentEvents")
stopifnot(inherits(x,"api2_nfse_issuance.CtePaymentEvents")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_CtePaymentEventsEventosPagamentoItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::CtePaymentEventsEventosPagamentoItem")
stopifnot(inherits(x,"api2_nfse_issuance.CtePaymentEventsEventosPagamentoItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayload,"{\"ambiente\":2,\"rps\":[{\"servico\":{\"discriminacao\":\"Synthetic service\",\"valor_servicos\":\"100.00\",\"iss_retido\":2}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayload")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItem,"{\"servico\":{\"discriminacao\":\"Synthetic service\",\"valor_servicos\":\"100.00\",\"iss_retido\":2}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItem")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemCondicaoPagamento,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemCondicaoPagamento")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemCondicaoPagamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemCondicaoPagamentoParcelasItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemCondicaoPagamentoParcelasItem")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemCondicaoPagamentoParcelasItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemConstrucaoCivil,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemConstrucaoCivil")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemConstrucaoCivil")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemDestinatario,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemDestinatario")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemDestinatario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemDestinatarioEndereco,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemDestinatarioEndereco")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemDestinatarioEndereco")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemDestinatarioEnderecoEnderecoExterior,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemDestinatarioEnderecoEnderecoExterior")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemDestinatarioEnderecoEnderecoExterior")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemDestinatarioEnderecoEnderecoNacional,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemDestinatarioEnderecoEnderecoNacional")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemDestinatarioEnderecoEnderecoNacional")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServico,"{\"discriminacao\":\"Synthetic service\",\"valor_servicos\":\"100.00\",\"iss_retido\":2}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServico")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServico")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoDeducaoReducao,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoDeducaoReducao")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoDeducaoReducao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItem")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemFornecedor,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemFornecedor")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemFornecedor")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfNfs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfNfs")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfNfs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfseMunicipal,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfseMunicipal")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfseMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoEnteGovernamental,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoEnteGovernamental")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoEnteGovernamental")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImovel,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImovel")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoImovel")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImovelEndereco,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImovelEndereco")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoImovelEndereco")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImovelEnderecoEnderecoExterior,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImovelEnderecoEnderecoExterior")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoImovelEnderecoEnderecoExterior")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImovelEnderecoEnderecoNacional,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImovelEnderecoEnderecoNacional")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoImovelEnderecoEnderecoNacional")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImpostos,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImpostos")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoImpostos")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbs")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsCbs")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsCreditoPresumido,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsCreditoPresumido")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsCreditoPresumido")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsIbsEstadual,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsIbsEstadual")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsIbsMunicipal,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsIbsMunicipal")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsTransferenciaCredito,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsTransferenciaCredito")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsTransferenciaCredito")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImpostosPiscofins,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImpostosPiscofins")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoImpostosPiscofins")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImpostosTotTrib,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImpostosTotTrib")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoImpostosTotTrib")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoImpostosTotTrib2,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImpostosTotTrib2")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoImpostosTotTrib2")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoIntermediario,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoIntermediario")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoIntermediario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasse,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasse")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItem")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeNacional,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeNacional")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeNacional")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeOutro,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeOutro")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeOutro")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDocOutro,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDocOutro")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDocOutro")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemFornecedor,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemFornecedor")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemFornecedor")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemServicoItensItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoItensItem")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemServicoItensItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemTomador,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemTomador")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemTomador")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayloadRpsItemAtividadeEvento,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemAtividadeEvento")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayloadRpsItemAtividadeEvento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterCancelNfsePayload,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterCancelNfsePayload")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterCancelNfsePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayload,"{\"ambiente\":2,\"motivo\":1,\"chave\":\"00000000000000000000000000000000000000000000000000\",\"rps\":[{\"servico\":{\"classe_imposto\":\"SYNTHETIC\",\"discriminacao\":\"Synthetic service\",\"valor_servicos\":\"1.00\"}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayload")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItem,"{\"servico\":{\"classe_imposto\":\"SYNTHETIC\",\"discriminacao\":\"Synthetic service\",\"valor_servicos\":\"1.00\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItem")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemCondicaoPagamento,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemCondicaoPagamento")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemCondicaoPagamento")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemCondicaoPagamentoParcelasItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemCondicaoPagamentoParcelasItem")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemCondicaoPagamentoParcelasItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemConstrucaoCivil,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemConstrucaoCivil")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemConstrucaoCivil")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemDestinatario,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemDestinatario")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemDestinatario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemDestinatarioEndereco,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemDestinatarioEndereco")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemDestinatarioEndereco")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemDestinatarioEnderecoEnderecoExterior,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemDestinatarioEnderecoEnderecoExterior")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemDestinatarioEnderecoEnderecoExterior")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemDestinatarioEnderecoEnderecoNacional,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemDestinatarioEnderecoEnderecoNacional")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemDestinatarioEnderecoEnderecoNacional")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServico,"{\"classe_imposto\":\"SYNTHETIC\",\"discriminacao\":\"Synthetic service\",\"valor_servicos\":\"1.00\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServico")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServico")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducao,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducao")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItem")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemFornecedor,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemFornecedor")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemFornecedor")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfNfs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfNfs")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfNfs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfseMunicipal,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfseMunicipal")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfseMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoEnteGovernamental,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoEnteGovernamental")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoEnteGovernamental")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoImovel,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoImovel")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoImovel")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoImovelEndereco,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoImovelEndereco")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoImovelEndereco")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoImovelEnderecoEnderecoExterior,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoImovelEnderecoEnderecoExterior")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoImovelEnderecoEnderecoExterior")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoImovelEnderecoEnderecoNacional,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoImovelEnderecoEnderecoNacional")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoImovelEnderecoEnderecoNacional")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoImpostos,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoImpostos")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoImpostos")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoImpostosPiscofins,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoImpostosPiscofins")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoImpostosPiscofins")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoImpostosTotTrib,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoImpostosTotTrib")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoImpostosTotTrib")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoImpostosTotTrib2,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoImpostosTotTrib2")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoImpostosTotTrib2")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoImpostosIbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoImpostosIbsCbs")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoImpostosIbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoIntermediario,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoIntermediario")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoIntermediario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasse,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasse")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItem")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeNacional,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeNacional")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeNacional")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeOutro,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeOutro")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeOutro")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDocOutro,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDocOutro")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDocOutro")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemFornecedor,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemFornecedor")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemFornecedor")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterReplaceNfsePayloadRpsItemTomador,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemTomador")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterReplaceNfsePayloadRpsItemTomador")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseDocumentedGroup516,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseDocumentedGroup516")
stopifnot(inherits(x,"api2_nfse_issuance.NfseDocumentedGroup516")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseDocumentedGroup700,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseDocumentedGroup700")
stopifnot(inherits(x,"api2_nfse_issuance.NfseDocumentedGroup700")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseDocumentedGroup829,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseDocumentedGroup829")
stopifnot(inherits(x,"api2_nfse_issuance.NfseDocumentedGroup829")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseDocumentedGroup1074,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseDocumentedGroup1074")
stopifnot(inherits(x,"api2_nfse_issuance.NfseDocumentedGroup1074")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseDocumentedGroup1181,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseDocumentedGroup1181")
stopifnot(inherits(x,"api2_nfse_issuance.NfseDocumentedGroup1181")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseDocumentedGroup6052,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseDocumentedGroup6052")
stopifnot(inherits(x,"api2_nfse_issuance.NfseDocumentedGroup6052")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseDocumentedGroup6116,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseDocumentedGroup6116")
stopifnot(inherits(x,"api2_nfse_issuance.NfseDocumentedGroup6116")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseDocumentedGroup6216,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseDocumentedGroup6216")
stopifnot(inherits(x,"api2_nfse_issuance.NfseDocumentedGroup6216")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroup,"{\"discriminacao\":\"Synthetic service\",\"valor_servicos\":\"123456789012345.67\",\"future\":{\"zero\":0,\"enabled\":false}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroup")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroup")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupDeducaoReducao,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupDeducaoReducao")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupDeducaoReducao")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupDeducaoReducaoDocumentosItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupDeducaoReducaoDocumentosItem")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupDeducaoReducaoDocumentosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupDeducaoReducaoDocumentosItemFornecedor,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupDeducaoReducaoDocumentosItemFornecedor")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupDeducaoReducaoDocumentosItemFornecedor")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupDeducaoReducaoDocumentosItemNfNfs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupDeducaoReducaoDocumentosItemNfNfs")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupDeducaoReducaoDocumentosItemNfNfs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupDeducaoReducaoDocumentosItemNfseMunicipal,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupDeducaoReducaoDocumentosItemNfseMunicipal")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupDeducaoReducaoDocumentosItemNfseMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupEnteGovernamental,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupEnteGovernamental")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupEnteGovernamental")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupImovel,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupImovel")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupImovel")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupImovelEndereco,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupImovelEndereco")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupImovelEndereco")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupImovelEnderecoEnderecoExterior,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupImovelEnderecoEnderecoExterior")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupImovelEnderecoEnderecoExterior")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupImovelEnderecoEnderecoNacional,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupImovelEnderecoEnderecoNacional")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupImovelEnderecoEnderecoNacional")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupImpostos,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupImpostos")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupImpostos")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupImpostosIbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupImpostosIbsCbs")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupImpostosIbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupImpostosIbsCbsCbs,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupImpostosIbsCbsCbs")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupImpostosIbsCbsCbs")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupImpostosIbsCbsCreditoPresumido,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupImpostosIbsCbsCreditoPresumido")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupImpostosIbsCbsCreditoPresumido")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupImpostosIbsCbsIbsEstadual,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupImpostosIbsCbsIbsEstadual")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupImpostosIbsCbsIbsEstadual")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupImpostosIbsCbsIbsMunicipal,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupImpostosIbsCbsIbsMunicipal")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupImpostosIbsCbsIbsMunicipal")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupImpostosIbsCbsTransferenciaCredito,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupImpostosIbsCbsTransferenciaCredito")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupImpostosIbsCbsTransferenciaCredito")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupImpostosPiscofins,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupImpostosPiscofins")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupImpostosPiscofins")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupImpostosTotTrib,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupImpostosTotTrib")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupImpostosTotTrib")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupImpostosTotTrib2,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupImpostosTotTrib2")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupImpostosTotTrib2")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupIntermediario,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupIntermediario")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupIntermediario")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupReembolsoRepasse,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupReembolsoRepasse")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupReembolsoRepasse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupReembolsoRepasseDocumentosItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupReembolsoRepasseDocumentosItem")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupReembolsoRepasseDocumentosItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupReembolsoRepasseDocumentosItemDfeNacional,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupReembolsoRepasseDocumentosItemDfeNacional")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupReembolsoRepasseDocumentosItemDfeNacional")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupReembolsoRepasseDocumentosItemDfeOutro,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupReembolsoRepasseDocumentosItemDfeOutro")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupReembolsoRepasseDocumentosItemDfeOutro")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupReembolsoRepasseDocumentosItemDocOutro,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupReembolsoRepasseDocumentosItemDocOutro")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupReembolsoRepasseDocumentosItemDocOutro")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupReembolsoRepasseDocumentosItemFornecedor,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupReembolsoRepasseDocumentosItemFornecedor")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupReembolsoRepasseDocumentosItemFornecedor")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroupItensItem,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_nfse_issuance::NfseServiceGroupItensItem")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroupItensItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_reports_ReportError,"{\"error\":\"Synthetic report error\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2_reports::ReportError")
stopifnot(inherits(x,"api2_reports.ReportError")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeLookupRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:lookup-leading-zero-key")
stopifnot(inherits(x,"api1_fiscal.NfeLookupRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeLookupRequest,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:lookup-no-selector")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeLookupRequest,"{\"chave\":1000}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:lookup-numeric-key-not-string")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeLookupRequest,"{\"ID\":\"customer-001\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:lookup-id-array-response")
stopifnot(inherits(x,"api1_fiscal.NfeLookupRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeCorrectionRequest,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"correcao\":\"short\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:correction-short-text")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeCorrectionRequest,"{\"correcao\":\"Correct the delivery address.\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:correction-no-key-or-uuid")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeManifestationRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":2,\"evento\":\"210240\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:manifestation-nonperformance-needs-reason")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeManifestationRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":2,\"evento\":\"210240\",\"justificativa\":\"The goods were never delivered.\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:manifestation-nonperformance-with-reason")
stopifnot(inherits(x,"api1_fiscal.NfeManifestationRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfePaymentEventItem,"{\"forma_pagamento\":\"01\",\"valor_pagamento\":\"0.00\",\"data_pagamento\":\"2026-10-25\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:econf-zero-decimal-string")
stopifnot(inherits(x,"api1_fiscal.NfePaymentEventItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfePaymentEventItem,"{\"forma_pagamento\":\"01\",\"valor_pagamento\":0,\"data_pagamento\":\"2026-10-25\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:econf-numeric-wire-amount")
stopifnot(inherits(x,"api1_fiscal.NfePaymentEventItem")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfePaymentEventItem,"{\"forma_pagamento\":\"01\",\"valor_pagamento\":{},\"data_pagamento\":\"2026-10-25\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:econf-invalid-amount")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfePaymentEventItem,"{\"forma_pagamento\":\"01\",\"valor_pagamento\":\"0.00\",\"data_pagamento\":\"2026-10-25\",\"uf_pagamento\":\"SP\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:econf-unpaired-company-uf")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfePaymentEventRequest,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"pagamento\":{\"forma_pagamento\":\"01\",\"valor_pagamento\":\"0.00\",\"data_pagamento\":\"2026-10-25\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:econf-object-single-payment")
stopifnot(inherits(x,"api1_fiscal.NfePaymentEventRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfePaymentEventRequest,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"pagamentos\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:econf-empty-payment-list")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":2,\"cod_evento\":\"112110\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:ibs-effective-payment-minimal")
stopifnot(inherits(x,"api1_fiscal.NfeIbsCbsEventRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":2,\"cod_evento\":\"112150\",\"data_previsao_entrega\":\"2026-11-01\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:ibs-delivery-date-root")
stopifnot(inherits(x,"api1_fiscal.NfeIbsCbsEventRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":2,\"cod_evento\":\"112150\",\"informacoes_evento\":{\"data_previsao_entrega\":\"2026-11-01\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:ibs-delivery-date-legacy-wrapper")
stopifnot(inherits(x,"api1_fiscal.NfeIbsCbsEventRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":2,\"cod_evento\":\"112150\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:ibs-delivery-missing-date")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":2,\"cod_evento\":\"999999\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:ibs-unknown-event")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":2,\"cod_evento\":\"112120\",\"itens\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:ibs-consumption-needs-items")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":2,\"cod_evento\":\"112120\",\"itens\":[{\"item\":1,\"valor_ibs\":\"0.00\",\"valor_cbs\":0,\"controle_estoque\":{\"quantidade\":\"1.2500\",\"unidade\":\"UN\"}}],\"additional_future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:ibs-consumption-full-structured-item")
stopifnot(inherits(x,"api1_fiscal.NfeIbsCbsEventRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_G031,"{\"defensivos\":[],\"guia_transito\":{}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:agro-mutually-exclusive-groups")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_FiscalCompanyUpdateRequest,"{\"cnae\":null}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:company-optional-cnae-can-clear")
stopifnot(inherits(x,"api1_fiscal.FiscalCompanyUpdateRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_FiscalCompanyUpdateRequest,"{\"certificado\":\"Zml4dHVyZQ==\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:company-certificate-password-pair")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_FiscalCompanyUpdateRequest,"{\"informacoes_fisco\":\"Controlled source-model case\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:company-absent-identities-not-forced")
stopifnot(inherits(x,"api1_fiscal.FiscalCompanyUpdateRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_FiscalCompanyUpdateRequest,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:company-empty-update")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_FiscalReportRequest,"{\"modelo\":\"nfe\",\"relatorio\":\"xml\",\"status\":\"emitidas\",\"data_inicio\":\"2026-10-01\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:report-date-pair")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_FiscalReportRequest,"{\"modelo\":\"nfe\",\"relatorio\":\"csv\",\"numero_inicio\":\"1\",\"numero_final\":\"5\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:report-csv-date-required")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_FiscalReportRequest,"{\"modelo\":\"nfe\",\"relatorio\":\"danfe\",\"numero_inicio\":\"1\",\"numero_final\":\"5\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:report-number-filter")
stopifnot(inherits(x,"api1_fiscal.FiscalReportRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_FiscalReportRequest,"{\"modelo\":\"ciot\",\"relatorio\":\"csv\",\"data_inicio\":\"2026-10-01\",\"data_final\":\"2026-10-25\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:standalone-ciot-report-excluded")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfcomCommunicationTaxClass,"{\"tipo\":\"nfcom\",\"descricao\":\"Controlled communication class\",\"codigo_classificacao\":\"100101\",\"icms\":{\"situacao_tributaria\":\"40\"},\"pis\":{\"situacao_tributaria\":\"06\"},\"cofins\":{\"situacao_tributaria\":\"06\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:nfcom-class-minimal-valid")
stopifnot(inherits(x,"api1_fiscal.NfcomCommunicationTaxClass")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfcomClassIcms,"{\"situacao_tributaria\":\"20\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:nfcom-cst20-requires-rate-and-reduction")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfcomClassPisCofins,"{\"situacao_tributaria\":\"01\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:nfcom-taxable-pis-needs-rate")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIssueResult,"{\"danfe\":\"https://nfe.webmania.com.br/danfe/00000000-0000-4000-8000-000000000000/\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:preview-not-authorization")
stopifnot(inherits(x,"api1_fiscal.NfeIssueResult")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeDocument,"{\"danfe\":\"https://nfe.webmania.com.br/danfe/00000000-0000-4000-8000-000000000000/\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:preview-is-not-document-status")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIssueResult,"{\"impostos\":{\"icms\":\"0.00\"},\"aliquotas\":{\"icms\":[]},\"pedido\":{\"total\":\"1.00\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:calculation-does-not-need-document-uuid")
stopifnot(inherits(x,"api1_fiscal.NfeIssueResult")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_Nfe55Customer,"{\"cpf\":\"000.000.000-00\",\"nome_completo\":\"Synthetic person\",\"endereco\":\"Synthetic street\",\"numero\":\"1\",\"bairro\":\"Synthetic district\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\",\"cep\":\"01001-000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:masked-customer-fields")
stopifnot(inherits(x,"api1_fiscal.Nfe55Customer")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_FiscalReportRequest,"{\"modelo\":\"nfe\",\"relatorio\":\"dacte\",\"numero_inicio\":\"1\",\"numero_final\":\"5\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:government-report-format-cannot-use-nfe-dacte")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeReturnRequest,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"natureza_operacao\":\"Synthetic return\",\"ambiente\":2,\"codigo_cfop\":\"5202\",\"classe_imposto\":\"REF1\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:return-cfop-and-class-are-exclusive")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeReturnRequest,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"natureza_operacao\":\"Synthetic return\",\"ambiente\":2}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:return-needs-tax-selection")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"112130\",\"itens\":[{\"item\":1,\"valor_ibs\":0,\"valor_cbs\":\"0.00\",\"controle_estoque\":{\"quantidade_perecimento\":\"1.0000\",\"unidade_perecimento\":\"UN\",\"valor_ibs_estorno\":\"0.00\",\"valor_cbs_estorno\":0}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:ibs-complete-variant-112130")
stopifnot(inherits(x,"api1_fiscal.NfeIbsCbsEventRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"112130\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:ibs-incomplete-variant-112130")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"112140\",\"itens\":[{\"item\":1,\"valor_ibs\":0,\"valor_cbs\":\"0.00\",\"controle_estoque\":{\"quantidade_nao_fornecida\":\"1.0000\",\"unidade_nao_fornecida\":\"UN\"}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:ibs-complete-variant-112140")
stopifnot(inherits(x,"api1_fiscal.NfeIbsCbsEventRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"112140\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:ibs-incomplete-variant-112140")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"211110\",\"itens\":[{\"item\":1,\"base_calculo\":0,\"credito_presumido\":{\"classificacao\":\"01\",\"aliquota_ibs\":0,\"aliquota_cbs\":\"0.0000\",\"valor_ibs\":\"0.00\",\"valor_cbs\":0}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:ibs-complete-variant-211110")
stopifnot(inherits(x,"api1_fiscal.NfeIbsCbsEventRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"211110\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:ibs-incomplete-variant-211110")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"211124\",\"itens\":[{\"item\":1,\"valor_ibs\":0,\"valor_cbs\":\"0.00\",\"controle_estoque\":{\"quantidade_perecimento\":\"1.0000\",\"unidade_perecimento\":\"UN\"}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:ibs-complete-variant-211124")
stopifnot(inherits(x,"api1_fiscal.NfeIbsCbsEventRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"211124\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:ibs-incomplete-variant-211124")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"211128\",\"indicador_aceitacao\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:ibs-complete-variant-211128")
stopifnot(inherits(x,"api1_fiscal.NfeIbsCbsEventRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"211128\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:ibs-incomplete-variant-211128")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"211130\",\"itens\":[{\"item\":1,\"valor_ibs\":0,\"valor_cbs\":\"0.00\",\"controle_estoque\":{\"quantidade_imobilizada\":\"1.0000\",\"unidade_imobilizada\":\"UN\"}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:ibs-complete-variant-211130")
stopifnot(inherits(x,"api1_fiscal.NfeIbsCbsEventRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"211130\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:ibs-incomplete-variant-211130")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"211140\",\"itens\":[{\"item\":1,\"valor_ibs\":0,\"valor_cbs\":\"0.00\",\"controle_estoque\":{\"quantidade_combustivel\":\"1.0000\",\"unidade_combustivel\":\"UN\"}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:ibs-complete-variant-211140")
stopifnot(inherits(x,"api1_fiscal.NfeIbsCbsEventRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"211140\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:ibs-incomplete-variant-211140")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"211150\",\"itens\":[{\"item\":1,\"valor_credito_ibs\":0,\"valor_credito_cbs\":\"0.00\"}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:ibs-complete-variant-211150")
stopifnot(inherits(x,"api1_fiscal.NfeIbsCbsEventRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIbsCbsEventRequest,"{\"chave\":\"00000000000000000000000000000000000000000000\",\"ambiente\":\"2\",\"cod_evento\":\"211150\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:ibs-incomplete-variant-211150")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_Nfe55IssueRequest,"{\"modelo\":\"1\",\"operacao\":1,\"natureza_operacao\":\"Synthetic sale\",\"finalidade\":1,\"ambiente\":2,\"cliente\":{\"cpf\":\"000.000.000-00\",\"nome_completo\":\"Synthetic person\",\"endereco\":\"Synthetic street\",\"numero\":\"1\",\"bairro\":\"Synthetic district\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\",\"cep\":\"01001-000\"},\"produtos\":[{\"nome\":\"Synthetic item\",\"codigo\":\"0001\",\"ncm\":\"0000.00.00\",\"quantidade\":\"1.0000\",\"unidade\":\"UN\",\"subtotal\":\"0.10\",\"total\":\"0.10\",\"origem\":0,\"impostos\":{\"icms\":{\"codigo_cfop\":\"5102\",\"situacao_tributaria\":\"102\"}}}],\"pedido\":{\"presenca\":1,\"modalidade_frete\":9,\"pagamento\":0,\"forma_pagamento\":\"01\",\"valor_pagamento\":\"0.10\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:full-structured-nfe-request")
stopifnot(inherits(x,"api1_fiscal.Nfe55IssueRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_Nfce65IssueRequest,"{\"modelo\":2,\"operacao\":1,\"natureza_operacao\":\"Synthetic sale\",\"finalidade\":1,\"ambiente\":2,\"produtos\":[{\"nome\":\"Synthetic item\",\"codigo\":\"0001\",\"ncm\":\"0000.00.00\",\"quantidade\":\"1.0000\",\"unidade\":\"UN\",\"subtotal\":\"0.10\",\"total\":\"0.10\",\"origem\":0,\"impostos\":{\"icms\":{\"codigo_cfop\":\"5102\",\"situacao_tributaria\":\"102\"}}}],\"pedido\":{\"presenca\":1,\"modalidade_frete\":9,\"pagamento\":0,\"forma_pagamento\":\"01\",\"valor_pagamento\":\"0.10\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:full-structured-nfce-without-recipient")
stopifnot(inherits(x,"api1_fiscal.Nfce65IssueRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_Nfe55IssueRequest,"{\"modelo\":\"1\",\"operacao\":1,\"natureza_operacao\":\"Synthetic sale\",\"finalidade\":1,\"ambiente\":2,\"produtos\":[{\"nome\":\"Synthetic item\",\"codigo\":\"0001\",\"ncm\":\"0000.00.00\",\"quantidade\":\"1.0000\",\"unidade\":\"UN\",\"subtotal\":\"0.10\",\"total\":\"0.10\",\"origem\":0,\"impostos\":{\"icms\":{\"codigo_cfop\":\"5102\",\"situacao_tributaria\":\"102\"}}}],\"pedido\":{\"presenca\":1,\"modalidade_frete\":9,\"pagamento\":0,\"forma_pagamento\":\"01\",\"valor_pagamento\":\"0.10\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:nfe-requires-recipient")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIssueRequest,"{\"modelo\":\"1\",\"operacao\":1,\"natureza_operacao\":\"Synthetic sale\",\"finalidade\":5,\"ambiente\":2,\"cliente\":{\"cpf\":\"000.000.000-00\",\"nome_completo\":\"Synthetic person\",\"endereco\":\"Synthetic street\",\"numero\":\"1\",\"bairro\":\"Synthetic district\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\",\"cep\":\"01001-000\"},\"produtos\":[{\"nome\":\"Synthetic item\",\"codigo\":\"0001\",\"ncm\":\"0000.00.00\",\"quantidade\":\"1.0000\",\"unidade\":\"UN\",\"subtotal\":\"0.10\",\"total\":\"0.10\",\"origem\":0,\"impostos\":{\"icms\":{\"codigo_cfop\":\"5102\",\"situacao_tributaria\":\"102\"}}}],\"pedido\":{\"presenca\":1,\"modalidade_frete\":9,\"pagamento\":0,\"forma_pagamento\":\"01\",\"valor_pagamento\":\"0.10\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:credit-requires-credit-type")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeIssueRequest,"{\"modelo\":\"1\",\"operacao\":1,\"natureza_operacao\":\"Synthetic sale\",\"finalidade\":1,\"ambiente\":2,\"cliente\":{\"cpf\":\"000.000.000-00\",\"nome_completo\":\"Synthetic person\",\"endereco\":\"Synthetic street\",\"numero\":\"1\",\"bairro\":\"Synthetic district\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\",\"cep\":\"01001-000\"},\"produtos\":[{\"arbitrary\":\"not a product\"}],\"pedido\":{\"presenca\":1,\"modalidade_frete\":9,\"pagamento\":0,\"forma_pagamento\":\"01\",\"valor_pagamento\":\"0.10\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api1:product-cannot-be-generic-map")
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_Nfe55IssueRequest,"{\"modelo\":\"1\",\"operacao\":1,\"natureza_operacao\":\"Synthetic sale\",\"finalidade\":1,\"ambiente\":2,\"cliente\":{\"cpf\":\"000.000.000-00\",\"nome_completo\":\"Synthetic person\",\"endereco\":\"Synthetic street\",\"numero\":\"1\",\"bairro\":\"Synthetic district\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\",\"cep\":\"01001-000\"},\"produtos\":[{\"nome\":\"Synthetic item\",\"codigo\":\"0001\",\"ncm\":\"0000.00.00\",\"quantidade\":\"1.0000\",\"unidade\":\"UN\",\"subtotal\":\"0.10\",\"total\":\"0.10\",\"origem\":0,\"impostos\":{\"icms\":{\"codigo_cfop\":\"5102\",\"situacao_tributaria\":\"102\"}},\"future_flag\":false}],\"pedido\":{\"presenca\":1,\"modalidade_frete\":9,\"pagamento\":0,\"forma_pagamento\":\"01\",\"valor_pagamento\":\"0.10\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:unknown-nested-product-field-preserved")
stopifnot(inherits(x,"api1_fiscal.Nfe55IssueRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_fiscal_NfeDocument,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"status\":\"new_provider_state\",\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api1:unknown-document-state-preserved")
stopifnot(inherits(x,"api1_fiscal.NfeDocument")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocument,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelo\":\"nfe\",\"status\":\"aprovado\",\"categoria\":\"recebidas\",\"data_emissao\":\"2025-02-27 13:17:00\",\"numero\":200,\"serie\":1,\"chave\":\"00000000000000000000000000000000000000000000\",\"valor\":6200,\"operacao\":0,\"finalidade\":1,\"cfop\":[\"2909\"],\"natureza_operacao\":\"Compra para industrializa\u00e7\u00e3o\",\"emitente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"EMPRESA FORNECEDORA LTDA\",\"ie\":\"000000000000\",\"uf\":\"SP\",\"endereco\":\"Rua das Ind\u00fastrias\",\"numero\":\"1500\",\"complemento\":\"Galp\u00e3o 2\",\"bairro\":\"Distrito Industrial\",\"cep\":\"12345-678\",\"cidade\":\"S\u00e3o Paulo\",\"telefone\":\"11999999999\",\"email\":\"fiscal@fornecedor.com\"},\"cliente\":{\"cnpj\":\"11111111000111\",\"razao_social\":\"EMPRESA COMPRADORA S/A\",\"ie\":\"111111111111\",\"uf\":\"SP\",\"endereco\":\"Av. Principal\",\"numero\":\"1000\",\"bairro\":\"Centro\",\"cep\":\"98765-432\",\"cidade\":\"S\u00e3o Paulo\",\"telefone\":\"11888888888\",\"email\":\"compras@empresa.com\"},\"pedido\":{\"numero_pedido\":\"PED-2025-001234\",\"numero_compra\":\"OC-2025-005678\"},\"produtos\":[{\"codigo\":\"MP001\",\"descricao\":\"MAT\u00c9RIA PRIMA ESPECIAL TIPO A\",\"ncm\":\"39269090\",\"cfop\":\"2909\",\"unidade\":\"KG\",\"quantidade\":1000,\"valor_unitario\":6.2,\"valor_total\":6200,\"impostos\":{\"icms\":{\"situacao_tributaria\":\"00\",\"origem\":0,\"base_calculo\":6200,\"aliquota\":18,\"valor\":1116},\"ipi\":{\"situacao_tributaria\":\"50\",\"base_calculo\":6200,\"aliquota\":5,\"valor\":310},\"pis\":{\"situacao_tributaria\":\"01\",\"base_calculo\":6200,\"aliquota\":1.65,\"valor\":102.3},\"cofins\":{\"situacao_tributaria\":\"01\",\"base_calculo\":6200,\"aliquota\":7.6,\"valor\":471.2},\"ibs_cbs\":{\"situacao_tributaria\":\"000\",\"classificacao_tributaria\":\"000001\",\"indicador_doacao\":false,\"bc\":6200,\"valor_ibs\":124.0,\"ibs_estadual\":{\"aliquota\":1.2,\"valor\":74.4,\"aliquota_diferimento\":0.1,\"valor_diferimento\":6.2,\"valor_devolvido\":3.1,\"aliquota_reducao\":0.2,\"aliquota_efetiva\":1.0},\"ibs_municipal\":{\"aliquota\":0.8,\"valor\":49.6,\"aliquota_diferimento\":0.05,\"valor_diferimento\":3.1,\"valor_devolvido\":1.24,\"aliquota_reducao\":0.1,\"aliquota_efetiva\":0.7},\"cbs\":{\"aliquota\":0.9,\"valor\":55.8,\"aliquota_diferimento\":0.03,\"valor_diferimento\":1.86,\"valor_devolvido\":0.62,\"aliquota_reducao\":0.05,\"aliquota_efetiva\":0.85},\"situacao_tributaria_regular\":\"000\",\"classificacao_tributaria_regular\":\"000001\",\"tributacao_regular\":{\"ibs_estadual\":{\"aliquota_efetiva\":1.1,\"valor\":68.2},\"ibs_municipal\":{\"aliquota_efetiva\":0.75,\"valor\":46.5},\"cbs\":{\"aliquota_efetiva\":0.88,\"valor\":54.56}},\"compra_governamental\":{\"ibs_estadual\":{\"aliquota\":1.0,\"valor\":62.0},\"ibs_municipal\":{\"aliquota\":0.6,\"valor\":37.2},\"cbs\":{\"aliquota\":0.7,\"valor\":43.4}},\"tributacao_monofasica\":{\"quantidade_bc\":1000.0,\"aliquota_ibs\":0.3,\"aliquota_cbs\":0.2,\"valor_ibs\":300.0,\"valor_cbs\":200.0,\"quantidade_bc_retencao\":200.0,\"aliquota_ibs_retencao\":0.1,\"aliquota_cbs_retencao\":0.05,\"valor_ibs_retencao\":20.0,\"valor_cbs_retencao\":10.0,\"quantidade_bc_retido\":100.0,\"aliquota_ibs_retido\":0.08,\"aliquota_cbs_retido\":0.04,\"valor_ibs_retido\":8.0,\"valor_cbs_retido\":4.0,\"aliquota_diferimento_ibs\":0.02,\"aliquota_diferimento_cbs\":0.01,\"valor_diferimento_ibs\":2.0,\"valor_diferimento_cbs\":1.0,\"valor_total_ibs\":330.0,\"valor_total_cbs\":215.0},\"transferencia_credito\":{\"valor_ibs\":6.2,\"valor_cbs\":3.1},\"ajuste_competencia\":{\"competencia_apuracao\":\"2026-01\",\"valor_ibs\":4.96,\"valor_cbs\":2.48},\"credito_presumido\":{\"classificacao\":\"01\",\"bc\":6200.0,\"aliquota_ibs\":0.5,\"valor_ibs\":31.0,\"valor_ibs_condicionado_suspensao\":1.24,\"aliquota_cbs\":0.3,\"valor_cbs\":18.6,\"valor_cbs_condicionado_suspensao\":0.62},\"credito_presumido_zfm\":{\"competencia_apuracao\":\"2026-01\",\"classificacao\":\"02\",\"valor_ibs\":12.4},\"estorno_credito\":{\"valor_ibs\":6.2,\"valor_cbs\":3.1}}}}],\"transporte\":{\"modalidade_frete\":1,\"transportadora\":{\"cnpj\":\"22222222000222\",\"razao_social\":\"TRANSPORTADORA R\u00c1PIDA LTDA\",\"ie\":\"222222222222\",\"endereco\":\"Rod. BR-101\",\"numero\":\"KM 50\",\"cidade\":\"S\u00e3o Paulo\",\"uf\":\"SP\"},\"volumes\":[{\"quantidade\":10,\"especie\":\"CAIXA\",\"marca\":\"FORNECEDOR\",\"numeracao\":\"1-10\",\"peso_liquido\":1000,\"peso_bruto\":1050}],\"veiculo\":{\"placa\":\"ABC1234\",\"uf\":\"SP\"}},\"totais\":{\"icms_bc\":6200,\"icms_valor\":1116,\"icms_valor_desonerado\":0,\"icms_st_bc\":0,\"icms_st_valor\":0,\"fcp_valor\":0,\"fcp_st_valor\":0,\"fcp_st_retido_valor\":0,\"ipi_valor\":310,\"ipi_devolvido_valor\":0,\"pis_valor\":102.3,\"cofins_valor\":471.2,\"ii_valor\":0,\"valor_produtos\":6200,\"valor_seguro\":0,\"valor_outras_despesas\":0,\"valor_desconto\":0,\"valor_frete\":0,\"valor_total_nfe\":7826},\"totais_issqn\":{\"valor_servicos\":0,\"iss_bc\":0,\"iss_valor\":0,\"pis_valor\":0,\"cofins_valor\":0,\"data_competencia\":\"2025-02-27\",\"deducao\":0,\"outras_retencoes\":0,\"desconto_incondicionado\":0,\"desconto_condicionado\":0,\"iss_retido_valor\":0,\"regime_especial_tributacao\":\"1\"},\"fatura\":{\"numero\":\"2025/0200\",\"valor_original\":6200,\"valor_desconto\":0,\"valor_liquido\":6200},\"parcelas\":[{\"numero\":\"001\",\"vencimento\":\"2025-03-27\",\"valor\":3100},{\"numero\":\"002\",\"vencimento\":\"2025-04-27\",\"valor\":3100}],\"responsavel_tecnico\":{\"cnpj\":\"33333333000333\",\"contato\":\"Jo\u00e3o Silva\",\"email\":\"suporte@sistema.com\",\"telefone\":\"11777777777\"},\"protocolo\":\"135250000123456\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-001")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocument")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocument,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelo\":\"nfse\",\"status\":\"aprovado\",\"categoria\":\"recebidas\",\"data_emissao\":\"2025-03-10 16:15:12\",\"data_cancelamento\":null,\"numero\":300,\"serie\":\"1\",\"identificacao_nfse\":{\"codigo_verificacao\":\"ABC123456\",\"chave\":\"00000000000000000000000000000000000000000000000000\",\"data_competencia\":\"2025-03-10\",\"rps\":{\"serie\":\"1\",\"numero\":10,\"data_emissao\":\"2025-03-10 16:15:10\"},\"nfse_substituida\":null},\"prestador\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"PRESTADORA DE SERVI\u00c7OS LTDA\",\"im\":\"000000000000\",\"uf\":\"SP\",\"endereco\":\"Rua dos Servi\u00e7os\",\"numero\":\"100\",\"complemento\":\"Sala 201\",\"bairro\":\"Centro\",\"cep\":\"01000-000\",\"cidade\":\"S\u00e3o Paulo\",\"telefone\":\"11999999999\",\"email\":\"fiscal@prestadora.com\"},\"tomador\":{\"cnpj\":\"11111111000111\",\"razao_social\":\"EMPRESA TOMADORA S/A\",\"uf\":\"SP\",\"endereco\":\"Av. Empresarial\",\"numero\":\"500\",\"bairro\":\"Jardim Empresarial\",\"cep\":\"02000-000\",\"cidade\":\"S\u00e3o Paulo\",\"telefone\":\"11888888888\",\"email\":\"financeiro@tomadora.com\"},\"valor\":5500,\"valor_liquido\":5225,\"valor_recebido\":5225,\"desconto_incondicionado\":0,\"desconto_condicionado\":0,\"codigo_cnae\":\"6201500\",\"codigo_servico\":\"01.05\",\"codigo_tributacao_municipio\":\"620150000\",\"discriminacao\":\"DESENVOLVIMENTO E LICENCIAMENTO DE PROGRAMAS DE COMPUTADOR SOB ENCOMENDA - SISTEMA DE GEST\u00c3O EMPRESARIAL\",\"local_prestacao\":\"S\u00e3o Paulo/SP\",\"impostos\":{\"tributacao_iss\":1,\"tributacao_descricao\":\"Opera\u00e7\u00e3o tribut\u00e1vel\",\"iss_retido\":2,\"bc\":5500,\"iss_aliquota\":5,\"iss_valor\":275,\"pis_aliquota\":0.65,\"pis_valor\":35.75,\"cofins_aliquota\":3,\"cofins_valor\":165,\"inss_aliquota\":0,\"inss_valor\":0,\"ir_aliquota\":0,\"ir_valor\":0,\"csll_aliquota\":0,\"csll_valor\":0,\"cp_aliquota\":0,\"cp_valor\":0,\"ibs_cbs\":{\"bc\":5500,\"cbs\":{\"valor\":49.5,\"aliquota\":0.9,\"aliquota_efetiva\":0.9,\"aliquota_diferimento\":0},\"valor_ibs\":5.5,\"ibs_estadual\":{\"valor\":5.5,\"aliquota\":0.1,\"aliquota_efetiva\":0.1,\"aliquota_diferimento\":0},\"ibs_municipal\":{\"valor\":0,\"aliquota\":0,\"aliquota_efetiva\":0,\"aliquota_diferimento\":0},\"finalidade_nfse\":0,\"situacao_tributaria\":\"000\",\"localidade_incidencia\":{\"codigo\":\"3550308\",\"descricao\":\"S\u00e3o Paulo\"},\"cod_indicador_operacao\":\"100301\",\"indicador_destinatario\":0,\"classificacao_tributaria\":\"000001\",\"valor_calculo_reembolso_repasse\":0}}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-002")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocument")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocument,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelo\":\"nfse\",\"status\":\"aprovado\",\"categoria\":\"emitidas\",\"data_emissao\":\"2025-03-10 16:15:12\",\"data_cancelamento\":null,\"numero\":301,\"serie\":\"1\",\"identificacao_nfse\":{\"codigo_verificacao\":\"DEF789012\",\"chave\":\"11111111111111111111111111111111111111111111111111\",\"data_competencia\":\"2025-03-10\",\"rps\":{\"serie\":\"1\",\"numero\":11,\"data_emissao\":\"2025-03-10 17:00:00\"},\"nfse_substituida\":299},\"prestador\":{\"cnpj\":\"22222222000222\",\"razao_social\":\"CONSULTORIA E DESENVOLVIMENTO LTDA\",\"im\":\"222222222\",\"uf\":\"SP\",\"endereco\":\"Av. Tecnologia\",\"numero\":\"2000\",\"complemento\":\"Torre A - 10\u00ba andar\",\"bairro\":\"Vila Tech\",\"cep\":\"03000-000\",\"cidade\":\"S\u00e3o Paulo\",\"telefone\":\"11777777777\",\"email\":\"nfse@consultoria.com\"},\"tomador\":{\"cpf\":\"12345678901\",\"nome_completo\":\"JO\u00c3O DA SILVA EMPRES\u00c1RIO\",\"uf\":\"SP\",\"endereco\":\"Rua das Empresas\",\"numero\":\"123\",\"bairro\":\"Centro\",\"cep\":\"04000-000\",\"cidade\":\"S\u00e3o Paulo\",\"telefone\":\"11666666666\",\"email\":\"joao@empresa.com\"},\"servicos\":[{\"valor\":3000,\"valor_liquido\":2850,\"valor_recebido\":2850,\"desconto_incondicionado\":0,\"desconto_condicionado\":0,\"codigo_cnae\":\"6201500\",\"codigo_servico\":\"01.05\",\"codigo_tributacao_municipio\":\"620150000\",\"discriminacao\":\"DESENVOLVIMENTO DE SOFTWARE - M\u00d3DULO FINANCEIRO\",\"local_prestacao\":\"S\u00e3o Paulo/SP\",\"impostos\":{\"tributacao_iss\":\"1\",\"tributacao_descricao\":\"Tributada Integralmente (TI)\",\"iss_retido\":2,\"bc\":3000,\"iss_aliquota\":5,\"iss_valor\":150,\"pis_aliquota\":0.65,\"pis_valor\":19.5,\"cofins_aliquota\":3,\"cofins_valor\":90,\"inss_aliquota\":0,\"inss_valor\":0,\"ir_aliquota\":0,\"ir_valor\":0,\"csll_aliquota\":0,\"csll_valor\":0,\"cp_aliquota\":0,\"cp_valor\":0,\"ibs_cbs\":{\"bc\":3000,\"cbs\":{\"valor\":27,\"aliquota\":0.9,\"aliquota_efetiva\":0.9,\"aliquota_diferimento\":0},\"valor_ibs\":3,\"ibs_estadual\":{\"valor\":3,\"aliquota\":0.1,\"aliquota_efetiva\":0.1,\"aliquota_diferimento\":0},\"ibs_municipal\":{\"valor\":0,\"aliquota\":0,\"aliquota_efetiva\":0,\"aliquota_diferimento\":0},\"finalidade_nfse\":0,\"situacao_tributaria\":\"000\",\"localidade_incidencia\":{\"codigo\":\"3550308\",\"descricao\":\"S\u00e3o Paulo\"},\"cod_indicador_operacao\":\"100301\",\"indicador_destinatario\":0,\"classificacao_tributaria\":\"000001\",\"valor_calculo_reembolso_repasse\":0}}},{\"valor\":1500,\"valor_liquido\":1425,\"valor_recebido\":1425,\"desconto_incondicionado\":0,\"desconto_condicionado\":0,\"codigo_cnae\":\"6202300\",\"codigo_servico\":\"01.07\",\"codigo_tributacao_municipio\":\"620230000\",\"discriminacao\":\"SUPORTE T\u00c9CNICO EM TECNOLOGIA DA INFORMA\u00c7\u00c3O\",\"local_prestacao\":\"S\u00e3o Paulo/SP\",\"impostos\":{\"tributacao_iss\":\"1\",\"tributacao_descricao\":\"Tributada Integralmente (TI)\",\"iss_retido\":2,\"bc\":1500,\"iss_aliquota\":5,\"iss_valor\":75,\"pis_aliquota\":0.65,\"pis_valor\":9.75,\"cofins_aliquota\":3,\"cofins_valor\":45,\"inss_aliquota\":0,\"inss_valor\":0,\"ir_aliquota\":0,\"ir_valor\":0,\"csll_aliquota\":0,\"csll_valor\":0,\"cp_aliquota\":0,\"cp_valor\":0,\"ibs_cbs\":{\"bc\":1500,\"cbs\":{\"valor\":13.5,\"aliquota\":0.9,\"aliquota_efetiva\":0.9,\"aliquota_diferimento\":0},\"valor_ibs\":1.5,\"ibs_estadual\":{\"valor\":1.5,\"aliquota\":0.1,\"aliquota_efetiva\":0.1,\"aliquota_diferimento\":0},\"ibs_municipal\":{\"valor\":0,\"aliquota\":0,\"aliquota_efetiva\":0,\"aliquota_diferimento\":0},\"finalidade_nfse\":0,\"situacao_tributaria\":\"000\",\"localidade_incidencia\":{\"codigo\":\"3550308\",\"descricao\":\"S\u00e3o Paulo\"},\"cod_indicador_operacao\":\"100301\",\"indicador_destinatario\":0,\"classificacao_tributaria\":\"000001\",\"valor_calculo_reembolso_repasse\":0}}},{\"valor\":1000,\"valor_liquido\":950,\"valor_recebido\":950,\"desconto_incondicionado\":0,\"desconto_condicionado\":0,\"codigo_cnae\":\"8599604\",\"codigo_servico\":\"08.02\",\"codigo_tributacao_municipio\":\"859960400\",\"discriminacao\":\"TREINAMENTO EM INFORM\u00c1TICA\",\"local_prestacao\":\"S\u00e3o Paulo/SP\",\"impostos\":{\"tributacao_iss\":\"1\",\"tributacao_descricao\":\"Tributada Integralmente (TI)\",\"iss_retido\":2,\"bc\":1000,\"iss_aliquota\":5,\"iss_valor\":50,\"pis_aliquota\":0.65,\"pis_valor\":6.5,\"cofins_aliquota\":3,\"cofins_valor\":30,\"inss_aliquota\":0,\"inss_valor\":0,\"ir_aliquota\":0,\"ir_valor\":0,\"csll_aliquota\":0,\"csll_valor\":0,\"cp_aliquota\":0,\"cp_valor\":0,\"ibs_cbs\":{\"bc\":1000,\"cbs\":{\"valor\":9,\"aliquota\":0.9,\"aliquota_efetiva\":0.9,\"aliquota_diferimento\":0},\"valor_ibs\":1,\"ibs_estadual\":{\"valor\":1,\"aliquota\":0.1,\"aliquota_efetiva\":0.1,\"aliquota_diferimento\":0},\"ibs_municipal\":{\"valor\":0,\"aliquota\":0,\"aliquota_efetiva\":0,\"aliquota_diferimento\":0},\"finalidade_nfse\":0,\"situacao_tributaria\":\"000\",\"localidade_incidencia\":{\"codigo\":\"3550308\",\"descricao\":\"S\u00e3o Paulo\"},\"cod_indicador_operacao\":\"100301\",\"indicador_destinatario\":0,\"classificacao_tributaria\":\"000001\",\"valor_calculo_reembolso_repasse\":0}}}],\"totais\":{\"valor\":5500,\"desconto_incondicionado\":0,\"desconto_condicionado\":0,\"iss_valor\":275,\"pis_valor\":35.75,\"cofins_valor\":165,\"inss_valor\":0,\"ir_valor\":0,\"csll_valor\":0,\"cp_valor\":0}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-003")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocument")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocument,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelo\":\"mdfe\",\"status\":\"aprovado\",\"categoria\":\"proprietario_veiculos\",\"data_emissao\":\"2025-02-01 20:09:54\",\"numero\":600,\"serie\":1,\"chave\":\"00000000000000000000000000000000000000000000\",\"valor\":23000,\"modalidade\":1,\"uf_carregamento\":\"BA\",\"uf_descarregamento\":\"PA\",\"peso_bruto\":6300,\"quantidade_nfe\":3,\"quantidade_cte\":1,\"quantidade_mdfe\":0,\"emitente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"TRANSPORTADORA NACIONAL LTDA\",\"ie\":\"000000000\",\"uf\":\"BA\",\"endereco\":\"Rod. BR-101\",\"numero\":\"KM 150\",\"complemento\":\"Posto Fiscal\",\"bairro\":\"Zona Rural\",\"cep\":\"40000-000\",\"cidade\":\"Salvador\",\"telefone\":\"71999999999\",\"email\":\"mdfe@transportadora.com\"},\"carregamento\":[{\"cidade\":\"Salvador\",\"uf\":\"BA\",\"documentos\":[{\"tipo\":\"NFe\",\"chave\":\"29250212345678901234550010000001231234567890\"},{\"tipo\":\"NFe\",\"chave\":\"29250212345678901234550010000001241234567891\"}]}],\"descarregamento\":[{\"cidade\":\"Bel\u00e9m\",\"uf\":\"PA\",\"documentos\":[{\"tipo\":\"NFe\",\"chave\":\"29250212345678901234550010000001231234567890\"},{\"tipo\":\"NFe\",\"chave\":\"29250212345678901234550010000001241234567891\"},{\"tipo\":\"NFe\",\"chave\":\"29250212345678901234550010000001251234567892\"},{\"tipo\":\"CTe\",\"chave\":\"29250287654321098765570010000008001234567893\"}]}],\"percurso\":[{\"uf\":\"BA\",\"ordem\":1},{\"uf\":\"MG\",\"ordem\":2},{\"uf\":\"ES\",\"ordem\":3},{\"uf\":\"RJ\",\"ordem\":4},{\"uf\":\"MG\",\"ordem\":5},{\"uf\":\"GO\",\"ordem\":6},{\"uf\":\"TO\",\"ordem\":7},{\"uf\":\"PA\",\"ordem\":8}],\"rodoviario\":{\"rntrc\":\"12345678\",\"ciot\":[{\"numero\":\"123456789012\",\"cpf_cnpj\":\"12345678901\"}],\"veiculos\":[{\"codigo_interno\":\"001\",\"placa\":\"ABC1234\",\"renavam\":\"123456789\",\"tara\":8000,\"capacidade_kg\":15000,\"capacidade_m3\":90,\"tipo_rodado\":\"06\",\"tipo_carroceria\":\"00\",\"uf\":\"BA\",\"condutor\":{\"cpf\":\"12345678901\",\"nome\":\"JOS\u00c9 DA SILVA\"}},{\"codigo_interno\":\"002\",\"placa\":\"DEF5678\",\"renavam\":\"987654321\",\"tara\":4000,\"capacidade_kg\":10000,\"capacidade_m3\":60,\"tipo_rodado\":\"04\",\"tipo_carroceria\":\"01\",\"uf\":\"BA\"}],\"vale_pedagio\":{\"cnpj_fornecedor\":\"33333333000333\",\"cnpj_responsavel\":\"00000000000000\",\"numero_comprovante\":\"123456\",\"valor\":150.5},\"contratantes\":[{\"cnpj\":\"44444444000444\",\"razao_social\":\"EMPRESA CONTRATANTE LTDA\"}],\"lacres\":[{\"numero\":\"LAC001\"},{\"numero\":\"LAC002\"}]}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-004")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocument")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocument,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelo\":\"cte\",\"status\":\"aprovado\",\"categoria\":\"citadas\",\"data_emissao\":\"2025-02-22 17:08:23\",\"numero\":800,\"serie\":1,\"chave\":\"00000000000000000000000000000000000000000000\",\"valor\":5600,\"finalidade\":0,\"cfop\":[\"6353\"],\"modalidade\":1,\"uf_inicio_prestacao\":\"SP\",\"uf_termino_prestacao\":\"PR\",\"natureza_operacao\":\"PRESTA\u00c7\u00c3O DE SERVI\u00c7O DE TRANSPORTE A ESTABELECIMENTO INDUSTRIAL\",\"indicador_tomador\":0,\"emitente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"TRANSPORTADORA EXPRESS LTDA\",\"ie\":\"000000000\",\"uf\":\"SP\",\"endereco\":\"Rod. Anhanguera\",\"numero\":\"KM 30\",\"complemento\":\"Galp\u00e3o Log\u00edstico\",\"bairro\":\"Distrito Industrial\",\"cep\":\"13000-000\",\"cidade\":\"Campinas\",\"telefone\":\"19999999999\",\"email\":\"cte@transportadora.com\"},\"remetente\":{\"cnpj\":\"11111111000111\",\"razao_social\":\"IND\u00daSTRIA METAL\u00daRGICA LTDA\",\"ie\":\"111111111111\",\"uf\":\"SP\",\"endereco\":\"Av. Industrial\",\"numero\":\"5000\",\"complemento\":\"Bloco A\",\"bairro\":\"Parque Industrial\",\"cep\":\"13200-000\",\"cidade\":\"Jundia\u00ed\",\"telefone\":\"11888888888\",\"email\":\"logistica@industria.com\"},\"destinatario\":{\"cnpj\":\"22222222000222\",\"razao_social\":\"DISTRIBUIDORA PARANAENSE S/A\",\"ie\":\"222222222222\",\"uf\":\"PR\",\"endereco\":\"Rua das Ind\u00fastrias\",\"numero\":\"1500\",\"bairro\":\"CIC\",\"cep\":\"81000-000\",\"cidade\":\"Curitiba\",\"telefone\":\"41777777777\",\"email\":\"recebimento@distribuidora.com\"},\"expedidor\":null,\"recebedor\":null,\"tomador\":{\"cnpj\":\"11111111000111\",\"razao_social\":\"IND\u00daSTRIA METAL\u00daRGICA LTDA\",\"ie\":\"111111111111\",\"uf\":\"SP\",\"endereco\":\"Av. Industrial\",\"numero\":\"5000\",\"complemento\":\"Bloco A\",\"bairro\":\"Parque Industrial\",\"cep\":\"13200-000\",\"cidade\":\"Jundia\u00ed\",\"telefone\":\"11888888888\",\"email\":\"fiscal@industria.com\"},\"impostos\":{\"icms\":{\"codigo_cfop\":\"5353\",\"situacao_tributaria\":\"00\",\"bc\":5600,\"aliquota\":12,\"valor\":672,\"percentual_reducao\":0,\"valor_credito\":0,\"percentual_credito\":0},\"ibs_cbs\":{\"situacao_tributaria\":\"000\",\"classificacao_tributaria\":\"000001\",\"indicador_doacao\":false,\"bc\":5600,\"valor_ibs\":112.0,\"ibs_estadual\":{\"aliquota\":1.2,\"valor\":67.2,\"aliquota_diferimento\":0.1,\"valor_diferimento\":5.6,\"valor_devolvido\":2.8,\"aliquota_reducao\":0.2,\"aliquota_efetiva\":1.0},\"ibs_municipal\":{\"aliquota\":0.8,\"valor\":44.8,\"aliquota_diferimento\":0.05,\"valor_diferimento\":2.8,\"valor_devolvido\":1.12,\"aliquota_reducao\":0.1,\"aliquota_efetiva\":0.7},\"cbs\":{\"aliquota\":0.9,\"valor\":50.4,\"aliquota_diferimento\":0.03,\"valor_diferimento\":1.68,\"valor_devolvido\":0.56,\"aliquota_reducao\":0.05,\"aliquota_efetiva\":0.85},\"situacao_tributaria_regular\":\"000\",\"classificacao_tributaria_regular\":\"000001\",\"tributacao_regular\":{\"ibs_estadual\":{\"aliquota_efetiva\":1.1,\"valor\":61.6},\"ibs_municipal\":{\"aliquota_efetiva\":0.75,\"valor\":42.0},\"cbs\":{\"aliquota_efetiva\":0.88,\"valor\":49.28}},\"compra_governamental\":{\"ibs_estadual\":{\"aliquota\":1.0,\"valor\":56.0},\"ibs_municipal\":{\"aliquota\":0.6,\"valor\":33.6},\"cbs\":{\"aliquota\":0.7,\"valor\":39.2}},\"credito_presumido\":{\"classificacao\":\"01\",\"aliquota_ibs\":0.5,\"valor_ibs\":28.0,\"valor_ibs_condicionado_suspensao\":1.12,\"aliquota_cbs\":0.3,\"valor_cbs\":16.8,\"valor_cbs_condicionado_suspensao\":0.56},\"estorno_credito\":{\"valor_ibs\":5.6,\"valor_cbs\":2.8}}},\"servico\":{\"descricao\":\"TRANSPORTE RODOVI\u00c1RIO DE PRODUTOS METAL\u00daRGICOS\",\"quantidade_carga\":2500,\"unidade_medida\":\"KG\",\"tipo_servico\":0,\"modal\":\"01\",\"documentos_originarios\":[{\"tipo\":\"NFe\",\"chave\":\"35250211111111000111550010000123451234567890\",\"serie\":\"1\",\"numero\":\"12345\",\"data_emissao\":\"2025-02-20\"},{\"tipo\":\"NFe\",\"chave\":\"35250211111111000111550010000123461234567891\",\"serie\":\"1\",\"numero\":\"12346\",\"data_emissao\":\"2025-02-20\"}],\"componentes_valor\":[{\"nome\":\"FRETE PESO\",\"valor\":4500},{\"nome\":\"GRIS\",\"valor\":500},{\"nome\":\"PEDAGIO\",\"valor\":350},{\"nome\":\"TAS\",\"valor\":250}],\"informacoes_carga\":{\"valor_total\":125000,\"produto_predominante\":\"PRODUTOS METAL\u00daRGICOS\",\"outras_caracteristicas\":\"CARGA FRACIONADA\",\"cubagem\":{\"quantidade\":15,\"unidade\":\"M3\"}}}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-005")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocument")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocument,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelo\":\"cte_os\",\"status\":\"aprovado\",\"categoria\":\"citadas\",\"data_emissao\":\"2025-02-22 17:08:23\",\"numero\":800,\"serie\":1,\"chave\":\"00000000000000000000000000000000000000000000\",\"valor\":5600,\"finalidade\":0,\"cfop\":[\"6353\"],\"modalidade\":1,\"uf_inicio_prestacao\":\"SP\",\"uf_termino_prestacao\":\"PR\",\"natureza_operacao\":\"PRESTA\u00c7\u00c3O DE SERVI\u00c7O DE TRANSPORTE A ESTABELECIMENTO INDUSTRIAL\",\"indicador_tomador\":0,\"emitente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"TRANSPORTADORA EXPRESS LTDA\",\"ie\":\"000000000\",\"uf\":\"SP\",\"endereco\":\"Rod. Anhanguera\",\"numero\":\"KM 30\",\"complemento\":\"Galp\u00e3o Log\u00edstico\",\"bairro\":\"Distrito Industrial\",\"cep\":\"13000-000\",\"cidade\":\"Campinas\",\"telefone\":\"19999999999\",\"email\":\"cte@transportadora.com\"},\"tomador\":{\"cnpj\":\"11111111000111\",\"razao_social\":\"IND\u00daSTRIA METAL\u00daRGICA LTDA\",\"ie\":\"111111111111\",\"uf\":\"SP\",\"endereco\":\"Av. Industrial\",\"numero\":\"5000\",\"complemento\":\"Bloco A\",\"bairro\":\"Parque Industrial\",\"cep\":\"13200-000\",\"cidade\":\"Jundia\u00ed\",\"telefone\":\"11888888888\",\"email\":\"fiscal@industria.com\"},\"impostos\":{\"icms\":{\"codigo_cfop\":\"5353\",\"situacao_tributaria\":\"00\",\"bc\":5600,\"aliquota\":12,\"valor\":672,\"percentual_reducao\":0,\"valor_credito\":0,\"percentual_credito\":0},\"ibs_cbs\":{\"situacao_tributaria\":\"000\",\"classificacao_tributaria\":\"000001\",\"indicador_doacao\":false,\"bc\":5600,\"valor_ibs\":112.0,\"ibs_estadual\":{\"aliquota\":1.2,\"valor\":67.2,\"aliquota_diferimento\":0.1,\"valor_diferimento\":5.6,\"valor_devolvido\":2.8,\"aliquota_reducao\":0.2,\"aliquota_efetiva\":1.0},\"ibs_municipal\":{\"aliquota\":0.8,\"valor\":44.8,\"aliquota_diferimento\":0.05,\"valor_diferimento\":2.8,\"valor_devolvido\":1.12,\"aliquota_reducao\":0.1,\"aliquota_efetiva\":0.7},\"cbs\":{\"aliquota\":0.9,\"valor\":50.4,\"aliquota_diferimento\":0.03,\"valor_diferimento\":1.68,\"valor_devolvido\":0.56,\"aliquota_reducao\":0.05,\"aliquota_efetiva\":0.85},\"situacao_tributaria_regular\":\"000\",\"classificacao_tributaria_regular\":\"000001\",\"tributacao_regular\":{\"ibs_estadual\":{\"aliquota_efetiva\":1.1,\"valor\":61.6},\"ibs_municipal\":{\"aliquota_efetiva\":0.75,\"valor\":42.0},\"cbs\":{\"aliquota_efetiva\":0.88,\"valor\":49.28}},\"compra_governamental\":{\"ibs_estadual\":{\"aliquota\":1.0,\"valor\":56.0},\"ibs_municipal\":{\"aliquota\":0.6,\"valor\":33.6},\"cbs\":{\"aliquota\":0.7,\"valor\":39.2}},\"credito_presumido\":{\"classificacao\":\"01\",\"aliquota_ibs\":0.5,\"valor_ibs\":28.0,\"valor_ibs_condicionado_suspensao\":1.12,\"aliquota_cbs\":0.3,\"valor_cbs\":16.8,\"valor_cbs_condicionado_suspensao\":0.56},\"estorno_credito\":{\"valor_ibs\":5.6,\"valor_cbs\":2.8}}},\"servico\":{\"descricao\":\"TRANSPORTE RODOVI\u00c1RIO DE PRODUTOS METAL\u00daRGICOS\",\"quantidade_carga\":2500,\"unidade_medida\":\"KG\",\"tipo_servico\":0,\"modal\":\"01\",\"documentos_originarios\":[{\"tipo\":\"NFe\",\"chave\":\"35250211111111000111550010000123451234567890\",\"serie\":\"1\",\"numero\":\"12345\",\"data_emissao\":\"2025-02-20\"},{\"tipo\":\"NFe\",\"chave\":\"35250211111111000111550010000123461234567891\",\"serie\":\"1\",\"numero\":\"12346\",\"data_emissao\":\"2025-02-20\"}],\"componentes_valor\":[{\"nome\":\"FRETE PESO\",\"valor\":4500},{\"nome\":\"GRIS\",\"valor\":500},{\"nome\":\"PEDAGIO\",\"valor\":350},{\"nome\":\"TAS\",\"valor\":250}],\"informacoes_carga\":{\"valor_total\":125000,\"produto_predominante\":\"PRODUTOS METAL\u00daRGICOS\",\"outras_caracteristicas\":\"CARGA FRACIONADA\",\"cubagem\":{\"quantidade\":15,\"unidade\":\"M3\"}}}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-006")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocument")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":110110,\"descricao_evento\":\"Carta de corre\u00e7\u00e3o\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":false,\"correcao\":\"XXXXXX XXXXXXXXXXXXXX XXXXXXXXXXXXXXXX XXXXXXXXXXXXXXXXX XXXXXXXXXXXXXXXX\",\"log\":{\"tpEvento\":\"110110\",\"xEvento\":\"Carta de Correcao\",\"nProt\":\"0000000000000000\",\"dhRegEvento\":\"2025-06-02T13:17:00-03:00\",\"cStat\":\"135\",\"xMotivo\":\"Evento registrado e vinculado a NF-e\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-007")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":110111,\"descricao_evento\":\"Cancelamento\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":false,\"justificativa\":\"XXXXXXX XXXXXXXXXX XXXXXXXX\",\"log\":{\"tpEvento\":\"110111\",\"xEvento\":\"Cancelamento\",\"nProt\":\"0000000000000000\",\"dhRegEvento\":\"2025-06-02T13:17:00-03:00\",\"cStat\":\"135\",\"xMotivo\":\"Evento registrado com sucesso\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-008")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":210200,\"descricao_evento\":\"Confirma\u00e7\u00e3o da Opera\u00e7\u00e3o\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":false,\"log\":{\"tpEvento\":\"210200\",\"xEvento\":\"Confirma\u00e7\u00e3o da Opera\u00e7\u00e3o\",\"nProt\":\"0000000000000000\",\"dhRegEvento\":\"2025-06-02T13:17:00-03:00\",\"cStat\":\"135\",\"xMotivo\":\"Evento registrado com sucesso\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-009")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":210210,\"descricao_evento\":\"Ci\u00eancia da Opera\u00e7\u00e3o\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":false,\"log\":{\"tpEvento\":\"210210\",\"xEvento\":\"Ci\u00eancia da Opera\u00e7\u00e3o\",\"nProt\":\"0000000000000000\",\"dhRegEvento\":\"2025-06-02T13:17:00-03:00\",\"cStat\":\"135\",\"xMotivo\":\"Evento registrado com sucesso\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-010")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":210220,\"descricao_evento\":\"Desconhecimento da Opera\u00e7\u00e3o\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":false,\"log\":{\"tpEvento\":\"210220\",\"xEvento\":\"Desconhecimento da Opera\u00e7\u00e3o\",\"nProt\":\"0000000000000000\",\"dhRegEvento\":\"2025-06-02T13:17:00-03:00\",\"cStat\":\"135\",\"xMotivo\":\"Evento registrado com sucesso\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-011")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":210240,\"descricao_evento\":\"Opera\u00e7\u00e3o n\u00e3o realizada\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":false,\"justificativa\":\"XXXXXXXX XXXXXXX XXXXXXXXXXXXXXX\",\"log\":{\"tpEvento\":\"210240\",\"xEvento\":\"Opera\u00e7\u00e3o n\u00e3o realizada\",\"nProt\":\"0000000000000000\",\"dhRegEvento\":\"2025-06-02T13:17:00-03:00\",\"cStat\":\"135\",\"xMotivo\":\"Evento registrado com sucesso\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-012")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":610600,\"descricao_evento\":\"Registro de Autoriza\u00e7\u00e3o de CT-e para a NF-e\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":true}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-013")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":610601,\"descricao_evento\":\"Registro de Cancelamento de CT-e para a NF-e\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":true}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-014")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":610130,\"descricao_evento\":\"Comprovante de Entrega do CT-e\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":false,\"chave_cte\":\"00000000000000000000000000000000000000000000\",\"protocolo_cte\":\"0000000000000000\",\"data_entrega\":\"2025-06-02 13:10:00\",\"documento_recebedor\":\"00000000000\",\"nome_recebedor\":\"XXXX XXXXXXXXX XXXXXX\",\"latitude\":0,\"longitude\":0,\"log\":{\"tpEvento\":\"610130\",\"xEvento\":\"Comprovante de Entrega do CT-e\",\"nProt\":\"0000000000000000\",\"dhRegEvento\":\"2025-06-02T13:17:00-03:00\",\"cStat\":\"135\",\"xMotivo\":\"Evento registrado com sucesso\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-015")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":610614,\"descricao_evento\":\"MDF-e Autorizado com CT-e\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":true}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-016")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":610615,\"descricao_evento\":\"Cancelamento de MDF-e Autorizado com CT-e\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":true}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-017")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":510630,\"descricao_evento\":\"Registro de Passagem Automatico Originado MDFe\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":true}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-018")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":610500,\"descricao_evento\":\"Registro de Passagem Autoriza\u00e7\u00e3o\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":true}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-019")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":610514,\"descricao_evento\":\"Registro de Passagem de NFe propagado pelo MDFe/CTe\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":true}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-020")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":101101,\"descricao_evento\":\"Cancelamento\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":false,\"justificativa\":\"XXXXXXX XXXXXXXXXX XXXXXXXX\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-021")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":105102,\"descricao_evento\":\"Substitui\u00e7\u00e3o de NFS-e\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":false,\"justificativa\":\"XXXXXXX XXXXXXXXXX XXXXXXXX\",\"chave_substituta\":\"00000000000000000000000000000000000000000000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-022")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":110110,\"descricao_evento\":\"Carta de corre\u00e7\u00e3o\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":false,\"alteracoes\":[{\"grupo\":\"XXXX\",\"campo\":\"XXXX\",\"alteracao\":\"XXXXXXX XXXXX\"},{\"grupo\":\"XXXX\",\"campo\":\"XXXX\",\"alteracao\":\"XXXXXXX XXXXX\"}],\"log\":{\"tpEvento\":\"110110\",\"xEvento\":\"Carta de Correcao\",\"nProt\":\"0000000000000000\",\"dhRegEvento\":\"2025-06-02T13:17:00-03:00\",\"cStat\":\"135\",\"xMotivo\":\"Evento registrado e vinculado a CT-e\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-023")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":110111,\"descricao_evento\":\"Cancelamento\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":false,\"justificativa\":\"XXXXXXX XXXXXXXXXX XXXXXXXX\",\"log\":{\"tpEvento\":\"110111\",\"xEvento\":\"Cancelamento\",\"nProt\":\"0000000000000000\",\"dhRegEvento\":\"2025-06-02T13:17:00-03:00\",\"cStat\":\"135\",\"xMotivo\":\"Evento registrado com sucesso\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-024")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":110180,\"descricao_evento\":\"Comprovante de Entrega do CT-e\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":false,\"data_entrega\":\"2025-06-02 13:15:00\",\"documento_recebedor\":\"00000000000\",\"nome_recebedor\":\"XXXX XXXXXXXXX XXXXXX\",\"latitude\":0,\"longitude\":0,\"chaves_nfe\":[\"00000000000000000000000000000000000000000000\"],\"log\":{\"tpEvento\":\"110180\",\"xEvento\":\"Comprovante de Entrega do CT-e\",\"nProt\":\"0000000000000000\",\"dhRegEvento\":\"2025-06-02T13:17:00-03:00\",\"cStat\":\"135\",\"xMotivo\":\"Evento registrado com sucesso\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-025")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":310610,\"descricao_evento\":\"MDF-e Autorizado\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":false,\"mdfe\":{\"chave\":\"00000000000000000000000000000000000000000000\",\"modalidade\":1,\"data_emissao\":\"2025-06-02 09:00:00\",\"protocolo\":\"000000000000000\"},\"log\":{\"tpEvento\":\"310610\",\"xEvento\":\"MDF-e Autorizado\",\"nProt\":\"0000000000000000\",\"dhRegEvento\":\"2025-06-02T13:17:00-03:00\",\"cStat\":\"135\",\"xMotivo\":\"Evento registrado com sucesso\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-026")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":310611,\"descricao_evento\":\"MDF-e Cancelado\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":false,\"mdfe\":{\"chave\":\"00000000000000000000000000000000000000000000\",\"protocolo\":\"000000000000000\"},\"log\":{\"tpEvento\":\"310611\",\"xEvento\":\"MDF-e Cancelado\",\"nProt\":\"0000000000000000\",\"dhRegEvento\":\"2025-06-02T13:17:00-03:00\",\"cStat\":\"135\",\"xMotivo\":\"Evento registrado com sucesso\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-027")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":610110,\"descricao_evento\":\"Presta\u00e7\u00e3o do Servi\u00e7o em Desacordo\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":false,\"justificativa\":\"XXXXXX XXXXXXXX XXXXXXXXXXXXXXX\",\"log\":{\"tpEvento\":\"610110\",\"xEvento\":\"Presta\u00e7\u00e3o do Servi\u00e7o em Desacordo\",\"nProt\":\"0000000000000000\",\"dhRegEvento\":\"2025-06-02T13:17:00-03:00\",\"cStat\":\"135\",\"xMotivo\":\"Evento registrado com sucesso\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-028")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":110111,\"descricao_evento\":\"Cancelamento\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":false,\"justificativa\":\"XXXXXXX XXXXXXXXXX XXXXXXXX\",\"log\":{}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-029")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":110112,\"descricao_evento\":\"Encerramento\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":false,\"data_encerramento\":\"2025-06-02 13:15:00\",\"cidade_encerramento\":\"XXXXXXXX\",\"uf_encerramento\":\"XX\",\"log\":{}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-030")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorEvent,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"documento_uuid\":\"00000000-0000-4000-8000-000000000000\",\"protocolo\":\"0000000000000000\",\"registrado_em\":\"2025-06-02 13:17:00\",\"tipo_evento\":110114,\"descricao_evento\":\"Inclus\u00e3o de condutor\",\"cnpj_autor\":\"00000000000000\",\"cpf_autor\":\"00000000000\",\"resumo\":false,\"cpf_condutor\":\"00000000000\",\"nome_condutor\":\"XXXXXXX XXXXXXXXXX XXXXXXXX\",\"log\":{}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-031")
stopifnot(inherits(x,"api2_monitor_documents.MonitorEvent")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocument,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelo\":\"nfe\",\"status\":\"aprovado\",\"categoria\":\"recebidas\",\"data_emissao\":\"2025-02-27 13:28:00\",\"numero\":100,\"serie\":1,\"chave\":\"00000000000000000000000000000000000000000000\",\"valor\":6700,\"operacao\":0,\"finalidade\":1,\"cfop\":[\"2909\"],\"natureza_operacao\":\"Retorno de bem por conta de contrato de comodato ou locacao.\",\"emitente\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXX XXXXXX XXX\",\"nome_completo\":\"XXXXXX XXXXXX XXX\",\"nome_fantasia\":\"XXXXXXX XXXXXXXXXX\",\"ie\":\"00000000\",\"endereco\":\"XXXX XXXX\",\"numero\":\"XXX\",\"complemento\":\"XXXX XXXXXX\",\"bairro\":\"XXXXXXX XXXX\",\"cep\":\"00000000\",\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"telefone\":\"00000000000\",\"email\":\"abcd@efgh.com\"},\"cliente\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXX XXXXXX XXX\",\"nome_completo\":\"XXXXXX XXXXXX XXX\",\"nome_fantasia\":\"XXXXXXX XXXXXXXXXX\",\"ie\":\"00000000\",\"endereco\":\"XXXX XXXX\",\"numero\":\"XXX\",\"complemento\":\"XXXX XXXXXX\",\"bairro\":\"XXXXXXX XXXX\",\"cep\":\"00000000\",\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"telefone\":\"00000000000\",\"email\":\"abcd@efgh.com\"},\"pedido\":{\"ID\":\"000000000\",\"presenca\":\"0\",\"modalidade_frete\":\"0\",\"frete\":5,\"intermediador\":\"0\",\"cnpj_intermediador\":\"00000000000000\",\"id_intermediador\":\"XXXXXXXXX\",\"pagamento\":[\"0\"],\"forma_pagamento\":[\"99\"],\"desc_pagamento\":[\"Pagamento Digital\"],\"valor_pagamento\":[6700],\"tipo_integracao\":[\"1\"],\"cnpj_credenciadora\":[\"00000000000000\"],\"bandeira\":[\"01\"],\"autorizacao\":[\"12345\"],\"desconto\":0,\"informacoes_fisco\":\"XXXXX XXXXXXXXXXX\",\"informacoes_complementares\":\"XXXXXXX XXXXXXXX XXXXXXXXX XXXX\"},\"produtos\":[{\"nome\":\"HD SSD 512GB NVME\",\"item\":\"1\",\"codigo\":\".560\",\"ncm\":\"85219000\",\"cest\":\"0000000\",\"quantidade\":1,\"quantidade_tributavel\":1,\"unidade\":\"UN\",\"unidade_tributavel\":\"UN\",\"origem\":\"0\",\"subtotal\":1000,\"subtotal_tributavel\":1000,\"total\":1000,\"desconto\":0,\"frete\":0,\"seguro\":0,\"outras_despesas\":0,\"gtin\":\"SEM GTIN\",\"gtin_tributavel\":\"SEM GTIN\",\"impostos\":{\"icms\":{\"codigo_cfop\":\"2909\",\"situacao_tributaria\":\"41\",\"icms_bc\":0,\"icms_modalidade_bc\":0,\"icms_aliquota\":0,\"icms_valor\":0,\"icms_aliquota_reducao\":0,\"icms_valor_desonerado\":0,\"icms_motivo_desoneracao\":0,\"icms_valor_operacao\":0,\"icms_aliquota_diferimento\":0,\"icms_valor_diferimento\":0,\"icms_aliquota_reducao_efetiva\":0,\"icms_bc_efetiva\":0,\"icms_aliquota_efetiva\":0,\"icms_valor_efetivo\":0,\"icms_bc_operacao_propria\":0,\"icms_substituto_valor\":0,\"icms_aliquota_credito\":0,\"icms_valor_credito\":0,\"icms_bc_uf_destino\":0,\"icms_aliquota_uf_destino\":0,\"icms_aliquota_interestadual\":0,\"icms_aliquota_partilha_interestadual\":0,\"icms_valor_uf_destino\":0,\"icms_valor_uf_remetente\":0,\"icms_st_bc\":0,\"icms_st_modalidade_bc\":0,\"icms_st_aliquota\":0,\"icms_st_valor\":0,\"icms_st_aliquota_mva\":0,\"icms_st_aliquota_reducao\":0,\"icms_st_uf\":0,\"icms_st_bc_dest\":0,\"icms_st_valor_dest\":0,\"icms_st_retido_bc\":0,\"icms_st_retido_valor\":0,\"fcp_bc\":0,\"fcp_aliquota\":0,\"fcp_valor\":0,\"fcp_bc_uf_destino\":0,\"fcp_aliquota_uf_destino\":0,\"fcp_valor_uf_destino\":0,\"fcp_st_bc\":0,\"fcp_st_aliquota\":0,\"fcp_st_valor\":0,\"fcp_st_retido_bc\":0,\"fcp_st_retido_aliquota\":0,\"fcp_st_retido_valor\":0},\"ipi\":{\"situacao_tributaria\":\"99\",\"codigo_enquadramento\":\"999\",\"ipi_bc\":0,\"ipi_aliquota\":0,\"ipi_valor\":0,\"codigo_selo\":\"XXXX\",\"qtd_selo\":1},\"ipi_devolvido\":{\"percentual_devolvido\":0,\"ipi_devolvido_valor\":0},\"pis\":{\"situacao_tributaria\":\"98\",\"pis_bc\":0,\"pis_quantidade_bc\":0,\"pis_aliquota\":0,\"pis_aliquota_valor\":0,\"pis_valor\":0},\"cofins\":{\"situacao_tributaria\":\"98\",\"cofins_bc\":0,\"cofins_quantidade_bc\":0,\"cofins_aliquota\":0,\"cofins_aliquota_valor\":0,\"cofins_valor\":0},\"ibs_cbs\":{\"situacao_tributaria\":\"000\",\"classificacao_tributaria\":\"000001\",\"indicador_doacao\":false,\"bc\":1000.0,\"valor_ibs\":20.0,\"ibs_estadual\":{\"aliquota\":1.2,\"valor\":12.0,\"aliquota_diferimento\":0.1,\"valor_diferimento\":1.0,\"valor_devolvido\":0.5,\"aliquota_reducao\":0.2,\"aliquota_efetiva\":1.0},\"ibs_municipal\":{\"aliquota\":0.8,\"valor\":8.0,\"aliquota_diferimento\":0.05,\"valor_diferimento\":0.5,\"valor_devolvido\":0.2,\"aliquota_reducao\":0.1,\"aliquota_efetiva\":0.7},\"cbs\":{\"aliquota\":0.9,\"valor\":9.0,\"aliquota_diferimento\":0.03,\"valor_diferimento\":0.3,\"valor_devolvido\":0.1,\"aliquota_reducao\":0.05,\"aliquota_efetiva\":0.85},\"situacao_tributaria_regular\":\"000\",\"classificacao_tributaria_regular\":\"000001\",\"tributacao_regular\":{\"ibs_estadual\":{\"aliquota_efetiva\":1.1,\"valor\":11.0},\"ibs_municipal\":{\"aliquota_efetiva\":0.75,\"valor\":7.5},\"cbs\":{\"aliquota_efetiva\":0.88,\"valor\":8.8}},\"compra_governamental\":{\"ibs_estadual\":{\"aliquota\":1.0,\"valor\":10.0},\"ibs_municipal\":{\"aliquota\":0.6,\"valor\":6.0},\"cbs\":{\"aliquota\":0.7,\"valor\":7.0}},\"tributacao_monofasica\":{\"quantidade_bc\":1.0,\"aliquota_ibs\":0.3,\"aliquota_cbs\":0.2,\"valor_ibs\":0.3,\"valor_cbs\":0.2,\"quantidade_bc_retencao\":0.2,\"aliquota_ibs_retencao\":0.1,\"aliquota_cbs_retencao\":0.05,\"valor_ibs_retencao\":0.02,\"valor_cbs_retencao\":0.01,\"quantidade_bc_retido\":0.1,\"aliquota_ibs_retido\":0.08,\"aliquota_cbs_retido\":0.04,\"valor_ibs_retido\":0.008,\"valor_cbs_retido\":0.004,\"aliquota_diferimento_ibs\":0.02,\"aliquota_diferimento_cbs\":0.01,\"valor_diferimento_ibs\":0.002,\"valor_diferimento_cbs\":0.001,\"valor_total_ibs\":0.33,\"valor_total_cbs\":0.215},\"transferencia_credito\":{\"valor_ibs\":1.0,\"valor_cbs\":0.5},\"ajuste_competencia\":{\"competencia_apuracao\":\"2026-01\",\"valor_ibs\":0.8,\"valor_cbs\":0.4},\"credito_presumido\":{\"classificacao\":\"01\",\"bc\":1000.0,\"aliquota_ibs\":0.5,\"valor_ibs\":5.0,\"valor_ibs_condicionado_suspensao\":0.2,\"aliquota_cbs\":0.3,\"valor_cbs\":3.0,\"valor_cbs_condicionado_suspensao\":0.1},\"credito_presumido_zfm\":{\"competencia_apuracao\":\"2026-01\",\"classificacao\":\"02\",\"valor_ibs\":2.0},\"estorno_credito\":{\"valor_ibs\":1.0,\"valor_cbs\":0.5}},\"issqn\":{\"iss_bc\":0,\"iss_aliquota\":0,\"iss_valor\":0,\"municipio_fato_gerador\":\"00000000\",\"item_servico\":\"0000\",\"deducao\":0,\"retencoes\":0,\"desconto_incondicionado\":0,\"desconto_condicionado\":0,\"iss_retido_valor\":0,\"exigibilidade\":\"1\",\"codigo_servico\":\"0000\",\"municipio_incidencia\":\"00000000\",\"pais\":\"1058\",\"processo\":\"12345\",\"incentivo_fiscal\":\"2\"},\"imposto_importacao\":{\"ii_bc\":0,\"despesas_aduaneiras\":0,\"ii_valor\":0,\"iof_valor\":0}}}],\"transporte\":{\"volume\":\"0\",\"especie\":\"PECAS\",\"marca\":\"XXXX\",\"numeracao\":\"0000\",\"peso_liquido\":0,\"peso_bruto\":0,\"transportadora\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXX XXXXXX XXX\",\"nome_completo\":\"XXXXXX XXXXXX XXX\",\"nome_fantasia\":\"XXXXXXX XXXXXXXXXX\",\"ie\":\"00000000\",\"endereco\":\"XXXX XXXX\",\"numero\":\"XXX\",\"complemento\":\"XXXX XXXXXX\",\"bairro\":\"XXXXXXX XXXX\",\"cep\":\"00000000\",\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"telefone\":\"00000000000\",\"email\":\"abcd@efgh.com\"},\"entrega\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXX XXXXXX XXX\",\"nome_completo\":\"XXXXXX XXXXXX XXX\",\"nome_fantasia\":\"XXXXXXX XXXXXXXXXX\",\"ie\":\"00000000\",\"endereco\":\"XXXX XXXX\",\"numero\":\"XXX\",\"complemento\":\"XXXX XXXXXX\",\"bairro\":\"XXXXXXX XXXX\",\"cep\":\"00000000\",\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"telefone\":\"00000000000\",\"email\":\"abcd@efgh.com\"},\"retirada\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXX XXXXXX XXX\",\"nome_completo\":\"XXXXXX XXXXXX XXX\",\"nome_fantasia\":\"XXXXXXX XXXXXXXXXX\",\"ie\":\"00000000\",\"endereco\":\"XXXX XXXX\",\"numero\":\"XXX\",\"complemento\":\"XXXX XXXXXX\",\"bairro\":\"XXXXXXX XXXX\",\"cep\":\"00000000\",\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"telefone\":\"00000000000\",\"email\":\"abcd@efgh.com\"}},\"totais\":{\"icms_bc\":0,\"icms_valor\":0,\"icms_valor_desonerado\":0,\"icms_st_bc\":0,\"icms_st_valor\":0,\"fcp_valor\":0,\"fcp_st_valor\":0,\"fcp_st_retido_valor\":0,\"ipi_valor\":0,\"ipi_devolvido_valor\":0,\"pis_valor\":0,\"cofins_valor\":0,\"ii_valor\":0,\"valor_produtos\":6700,\"valor_seguro\":0,\"valor_outras_despesas\":0,\"valor_desconto\":0,\"valor_frete\":0},\"totais_issqn\":{\"valor_servicos\":0,\"iss_bc\":0,\"iss_valor\":0,\"pis_valor\":0,\"cofins_valor\":0,\"data_competencia\":\"2025-02-27\",\"deducao\":0,\"outras_retencoes\":0,\"desconto_incondicionado\":0,\"desconto_condicionado\":0,\"iss_retido_valor\":0,\"regime_especial_tributacao\":\"1\"},\"fatura\":{\"numero\":\"000000000\",\"valor\":6700,\"desconto\":0,\"valor_liquido\":6700},\"parcelas\":[{\"numero\":1,\"valor\":6700,\"vencimento\":\"2025-03-27\"}],\"responsavel_tecnico\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"XXXXXX XXXXXX XXX\",\"telefone\":\"00000000000\",\"email\":\"abcd@efgh.com\"},\"protocolo\":{\"motivo\":\"Autorizado o uso da NF-e\",\"status\":\"100\",\"data_recebimento\":\"2025-02-27T13:28:33-03:00\",\"numero_protocolo\":\"000000000000000\"},\"docs\":{\"xml\":\"<nfeProc versao=\\\"4.00\\\" xmlns=\\\"http://www.portalfiscal.inf.br/nfe\\\">...</nfeProc>\",\"pdf\":\"H4sIAAAAAAAAA+3BMQEAAADCoPVEAAA...\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-032")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocument")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocument,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelo\":\"nfse\",\"status\":\"aprovado\",\"categoria\":\"recebidas\",\"data_emissao\":\"2025-03-10 16:20:19\",\"data_cancelamento\":\"2025-03-10 17:00:00\",\"numero\":100,\"identificacao_nfse\":{\"provedor\":\"PadraoNacional\",\"chave\":\"00000000000000000000000000000000000000000000000000\",\"codigo_verificacao\":\"ABC123456\",\"data_competencia\":\"2025-03-10\",\"rps\":{\"serie\":\"1\",\"numero\":1,\"data_emissao\":\"2025-03-10 16:20:15\"},\"nfse_substituida\":99},\"valor\":3000,\"valor_liquido\":3000,\"valor_recebido\":3000,\"desconto_incondicionado\":5,\"desconto_condicionado\":5,\"codigo_cnae\":\"0000000\",\"codigo_servico\":\"000000\",\"discriminacao\":\"XXXXXXXXX XXXXXXXXXXXXXX XXXXXXXXXX XXXXXXXXXXXXXX\",\"prestador\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXX XXXXXX XXX\",\"nome_completo\":\"XXXXXX XXXXXX XXX\",\"im\":\"000000000000\",\"endereco\":\"XXXX XXXX\",\"numero\":\"XXX\",\"complemento\":\"XXXX XXXXXX\",\"bairro\":\"XXXXXXX XXXX\",\"cep\":\"00000000\",\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"telefone\":\"0000000000\",\"email\":\"abc@defg.com\"},\"tomador\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXX XXXXXX XXX\",\"nome_completo\":\"XXXXXX XXXXXX XXX\",\"endereco\":\"XXXX XXXX\",\"numero\":\"XXX\",\"complemento\":\"XXXX XXXXXX\",\"bairro\":\"XXXXXXX XXXX\",\"cep\":\"00000000\",\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"telefone\":\"0000000000\",\"email\":\"abc@defg.com\"},\"local_prestacao\":{\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"codigo_municipio\":\"3550308\"},\"impostos\":{\"tributacao_iss\":1,\"tributacao_descricao\":\"Opera\u00e7\u00e3o tribut\u00e1vel\",\"iss_retido\":2,\"bc\":0,\"iss_aliquota\":0,\"iss_valor\":0,\"pis_aliquota\":0,\"pis_valor\":0,\"cofins_aliquota\":0,\"cofins_valor\":0,\"inss_aliquota\":0,\"inss_valor\":0,\"ir_aliquota\":0,\"ir_valor\":0,\"csll_aliquota\":0,\"csll_valor\":0,\"cp_aliquota\":0,\"cp_valor\":0,\"ibs_cbs\":{\"bc\":0,\"cbs\":{\"valor\":0,\"aliquota\":0.9,\"aliquota_efetiva\":0.9,\"aliquota_diferimento\":0},\"valor_ibs\":0,\"ibs_estadual\":{\"valor\":0,\"aliquota\":0.1,\"aliquota_efetiva\":0.1,\"aliquota_diferimento\":0},\"ibs_municipal\":{\"valor\":0,\"aliquota\":0,\"aliquota_efetiva\":0,\"aliquota_diferimento\":0},\"finalidade_nfse\":0,\"situacao_tributaria\":\"000\",\"localidade_incidencia\":{\"codigo\":\"3550308\",\"descricao\":\"S\u00e3o Paulo\"},\"cod_indicador_operacao\":\"100301\",\"indicador_destinatario\":0,\"classificacao_tributaria\":\"000001\",\"valor_calculo_reembolso_repasse\":0}},\"docs\":{\"xml\":\"<NFSe versao=\\\"1.00\\\" xmlns=\\\"http://www.sped.fazenda.gov.br/nfse\\\">...</NFSe>\",\"pdf\":\"H4sIAAAAAAAAA+3BMQEAAADCoPVEAAA...\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-033")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocument")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocument,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelo\":\"nfse\",\"status\":\"aprovado\",\"categoria\":\"recebidas\",\"data_emissao\":\"2025-03-10 16:20:19\",\"data_cancelamento\":\"2025-03-10 17:00:00\",\"numero\":100,\"identificacao_nfse\":{\"provedor\":\"IPM2\",\"chave\":\"00000000000000000000000000000000000000000000000000\",\"codigo_verificacao\":\"ABC123456\",\"data_competencia\":\"2025-03-10\",\"rps\":{\"serie\":\"1\",\"numero\":1,\"data_emissao\":\"2025-03-10 16:20:15\"},\"nfse_substituida\":99},\"prestador\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXX XXXXXX XXX\",\"nome_completo\":\"XXXXXX XXXXXX XXX\",\"im\":\"000000000000\",\"endereco\":\"XXXX XXXX\",\"numero\":\"XXX\",\"complemento\":\"XXXX XXXXXX\",\"bairro\":\"XXXXXXX XXXX\",\"cep\":\"00000000\",\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"telefone\":\"0000000000\",\"email\":\"abc@defg.com\"},\"tomador\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXX XXXXXX XXX\",\"nome_completo\":\"XXXXXX XXXXXX XXX\",\"endereco\":\"XXXX XXXX\",\"numero\":\"XXX\",\"complemento\":\"XXXX XXXXXX\",\"bairro\":\"XXXXXXX XXXX\",\"cep\":\"00000000\",\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"telefone\":\"0000000000\",\"email\":\"abc@defg.com\"},\"servicos\":[{\"valor\":3000,\"valor_liquido\":3000,\"valor_recebido\":3000,\"desconto_incondicionado\":0,\"desconto_condicionado\":0,\"codigo_cnae\":\"0000000\",\"codigo_servico\":\"0000\",\"discriminacao\":\"XXXXXXXXX XXXXXXXXXXXXXX XXXXXXXXXX XXXXXXXXXXXXXX\",\"local_prestacao\":{\"uf\":\"SC\",\"cidade\":\"Palho\u00e7a\",\"codigo_municipio\":\"4211900\"},\"impostos\":{\"tributacao_iss\":\"1\",\"tributacao_descricao\":\"Tributada Integralmente (TI)\",\"iss_retido\":2,\"bc\":3000,\"iss_aliquota\":0,\"iss_valor\":0,\"pis_aliquota\":0,\"pis_valor\":0,\"cofins_aliquota\":0,\"cofins_valor\":0,\"inss_aliquota\":0,\"inss_valor\":0,\"ir_aliquota\":0,\"ir_valor\":0,\"csll_aliquota\":0,\"csll_valor\":0,\"cp_aliquota\":0,\"cp_valor\":0,\"ibs_cbs\":{\"bc\":3000,\"cbs\":{\"valor\":27,\"aliquota\":0.9,\"aliquota_efetiva\":0.9,\"aliquota_diferimento\":0},\"valor_ibs\":3,\"ibs_estadual\":{\"valor\":3,\"aliquota\":0.1,\"aliquota_efetiva\":0.1,\"aliquota_diferimento\":0},\"ibs_municipal\":{\"valor\":0,\"aliquota\":0,\"aliquota_efetiva\":0,\"aliquota_diferimento\":0},\"finalidade_nfse\":0,\"situacao_tributaria\":\"000\",\"localidade_incidencia\":{\"codigo\":\"3550308\",\"descricao\":\"S\u00e3o Paulo\"},\"cod_indicador_operacao\":\"100301\",\"indicador_destinatario\":0,\"classificacao_tributaria\":\"000001\",\"valor_calculo_reembolso_repasse\":0}}},{\"valor\":1000,\"valor_liquido\":1000,\"valor_recebido\":1000,\"desconto_incondicionado\":0,\"desconto_condicionado\":0,\"codigo_cnae\":\"0000000\",\"codigo_servico\":\"0000\",\"discriminacao\":\"XXXXXXXXX XXXXXXXXXXXXXX XXXXXXXXXX XXXXXXXXXXXXXX\",\"local_prestacao\":{\"uf\":\"SC\",\"cidade\":\"Palho\u00e7a\",\"codigo_municipio\":\"4211900\"},\"impostos\":{\"tributacao_iss\":\"1\",\"tributacao_descricao\":\"Tributada Integralmente (TI)\",\"iss_retido\":2,\"bc\":1000,\"iss_aliquota\":0,\"iss_valor\":0,\"pis_aliquota\":0,\"pis_valor\":0,\"cofins_aliquota\":0,\"cofins_valor\":0,\"inss_aliquota\":0,\"inss_valor\":0,\"ir_aliquota\":0,\"ir_valor\":0,\"csll_aliquota\":0,\"csll_valor\":0,\"cp_aliquota\":0,\"cp_valor\":0,\"ibs_cbs\":{\"bc\":1000,\"cbs\":{\"valor\":9,\"aliquota\":0.9,\"aliquota_efetiva\":0.9,\"aliquota_diferimento\":0},\"valor_ibs\":1,\"ibs_estadual\":{\"valor\":1,\"aliquota\":0.1,\"aliquota_efetiva\":0.1,\"aliquota_diferimento\":0},\"ibs_municipal\":{\"valor\":0,\"aliquota\":0,\"aliquota_efetiva\":0,\"aliquota_diferimento\":0},\"finalidade_nfse\":0,\"situacao_tributaria\":\"000\",\"localidade_incidencia\":{\"codigo\":\"3550308\",\"descricao\":\"S\u00e3o Paulo\"},\"cod_indicador_operacao\":\"100301\",\"indicador_destinatario\":0,\"classificacao_tributaria\":\"000001\",\"valor_calculo_reembolso_repasse\":0}}}],\"totais\":{\"valor\":4000,\"desconto_incondicionado\":0,\"desconto_condicionado\":0,\"iss_valor\":0,\"pis_valor\":0,\"cofins_valor\":0,\"inss_valor\":0,\"ir_valor\":0,\"csll_valor\":0,\"cp_valor\":0},\"docs\":{\"xml\":\"<NFSe versao=\\\"1.00\\\" xmlns=\\\"http://www.sped.fazenda.gov.br/nfse\\\">...</NFSe>\",\"pdf\":\"H4sIAAAAAAAAA+3BMQEAAADCoPVEAAA...\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-034")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocument")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocument,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelo\":\"cte\",\"status\":\"aprovado\",\"categoria\":\"citadas\",\"data_emissao\":\"2025-02-22 17:08:23\",\"numero\":700,\"serie\":1,\"chave\":\"00000000000000000000000000000000000000000000\",\"valor\":0.48,\"finalidade\":0,\"cfop\":[\"6353\"],\"modalidade\":1,\"uf_inicio_prestacao\":\"SP\",\"uf_termino_prestacao\":\"PR\",\"emitente\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXX XXXXXX XXX\",\"nome_completo\":\"XXXXXX XXX\",\"nome_fantasia\":\"XXXXXX XXXXXXX\",\"ie\":\"00000000\",\"endereco\":\"XXXX XXXX\",\"numero\":\"XXX\",\"complemento\":\"XXXX XXXXXX\",\"bairro\":\"XXXXXXX XXXX\",\"cep\":\"00000000\",\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"telefone\":\"0000000000\",\"email\":\"abc@defg.com\"},\"natureza_operacao\":\"XXXXXXX XXXXXXXXX XXXXXXXXXXX\",\"impostos\":{\"icms\":{\"codigo_cfop\":\"5353\",\"situacao_tributaria\":\"40\",\"bc\":0,\"aliquota\":0,\"valor\":0},\"ibs_cbs\":{\"situacao_tributaria\":\"000\",\"classificacao_tributaria\":\"000001\",\"indicador_doacao\":false,\"bc\":0,\"valor_ibs\":0,\"ibs_estadual\":{\"aliquota\":1.2,\"valor\":0,\"aliquota_diferimento\":0.1,\"valor_diferimento\":0,\"valor_devolvido\":0,\"aliquota_reducao\":0.2,\"aliquota_efetiva\":1.0},\"ibs_municipal\":{\"aliquota\":0.8,\"valor\":0,\"aliquota_diferimento\":0.05,\"valor_diferimento\":0,\"valor_devolvido\":0,\"aliquota_reducao\":0.1,\"aliquota_efetiva\":0.7},\"cbs\":{\"aliquota\":0.9,\"valor\":0,\"aliquota_diferimento\":0.03,\"valor_diferimento\":0,\"valor_devolvido\":0,\"aliquota_reducao\":0.05,\"aliquota_efetiva\":0.85},\"situacao_tributaria_regular\":\"000\",\"classificacao_tributaria_regular\":\"000001\",\"tributacao_regular\":{\"ibs_estadual\":{\"aliquota_efetiva\":1.1,\"valor\":0},\"ibs_municipal\":{\"aliquota_efetiva\":0.75,\"valor\":0},\"cbs\":{\"aliquota_efetiva\":0.88,\"valor\":0}},\"compra_governamental\":{\"ibs_estadual\":{\"aliquota\":1.0,\"valor\":0},\"ibs_municipal\":{\"aliquota\":0.6,\"valor\":0},\"cbs\":{\"aliquota\":0.7,\"valor\":0}},\"credito_presumido\":{\"classificacao\":\"01\",\"aliquota_ibs\":0.5,\"valor_ibs\":0,\"valor_ibs_condicionado_suspensao\":0,\"aliquota_cbs\":0.3,\"valor_cbs\":0,\"valor_cbs_condicionado_suspensao\":0},\"estorno_credito\":{\"valor_ibs\":0,\"valor_cbs\":0}}},\"servico\":{\"tipo\":0,\"valor_total\":0.48,\"valor_recebido\":0.48},\"indicador_tomador\":\"0\",\"remetente\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXX XXXXXX XXX\",\"nome_completo\":\"XXXXXX XXX\",\"nome_fantasia\":\"XXXXXX XXXXXXX\",\"ie\":\"00000000\",\"endereco\":\"XXXX XXXX\",\"numero\":\"XXX\",\"complemento\":\"XXXX XXXXXX\",\"bairro\":\"XXXXXXX XXXX\",\"cep\":\"00000000\",\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"telefone\":\"0000000000\",\"email\":\"abc@defg.com\"},\"destinatario\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXX XXXXXX XXX\",\"nome_completo\":\"XXXXXX XXX\",\"nome_fantasia\":\"XXXXXX XXXXXXX\",\"ie\":\"00000000\",\"endereco\":\"XXXX XXXX\",\"numero\":\"XXX\",\"complemento\":\"XXXX XXXXXX\",\"bairro\":\"XXXXXXX XXXX\",\"cep\":\"00000000\",\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"telefone\":\"0000000000\",\"email\":\"abc@defg.com\"},\"expedidor\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXX XXXXXX XXX\",\"nome_completo\":\"XXXXXX XXX\",\"nome_fantasia\":\"XXXXXX XXXXXXX\",\"ie\":\"00000000\",\"endereco\":\"XXXX XXXX\",\"numero\":\"XXX\",\"complemento\":\"XXXX XXXXXX\",\"bairro\":\"XXXXXXX XXXX\",\"cep\":\"00000000\",\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"telefone\":\"0000000000\",\"email\":\"abc@defg.com\"},\"recebedor\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXX XXXXXX XXX\",\"nome_completo\":\"XXXXXX XXX\",\"nome_fantasia\":\"XXXXXX XXXXXXX\",\"ie\":\"00000000\",\"endereco\":\"XXXX XXXX\",\"numero\":\"XXX\",\"complemento\":\"XXXX XXXXXX\",\"bairro\":\"XXXXXXX XXXX\",\"cep\":\"00000000\",\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"telefone\":\"0000000000\",\"email\":\"abc@defg.com\"},\"tomador\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXX XXXXXX XXX\",\"nome_completo\":\"XXXXXX XXX\",\"nome_fantasia\":\"XXXXXX XXXXXXX\",\"ie\":\"00000000\",\"endereco\":\"XXXX XXXX\",\"numero\":\"XXX\",\"complemento\":\"XXXX XXXXXX\",\"bairro\":\"XXXXXXX XXXX\",\"cep\":\"00000000\",\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"telefone\":\"0000000000\",\"email\":\"abc@defg.com\"},\"documentos_fiscais\":[{\"chave\":\"00000000000000000000000000000000000000000000\"}],\"docs\":{\"xml\":\"<cteProc versao=\\\"4.00\\\" xmlns=\\\"http://www.portalfiscal.inf.br/cte\\\">...</cteProc>\",\"pdf\":\"H4sIAAAAAAAAA+3BMQEAAADCoPVEAAA...\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-035")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocument")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocument,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelo\":\"cte_os\",\"status\":\"aprovado\",\"categoria\":\"citadas\",\"data_emissao\":\"2025-02-22 17:08:23\",\"numero\":700,\"serie\":1,\"chave\":\"00000000000000000000000000000000000000000000\",\"valor\":0.48,\"finalidade\":0,\"cfop\":[\"6353\"],\"modalidade\":1,\"uf_inicio_prestacao\":\"SP\",\"uf_termino_prestacao\":\"PR\",\"emitente\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXX XXXXXX XXX\",\"nome_completo\":\"XXXXXX XXX\",\"nome_fantasia\":\"XXXXXX XXXXXXX\",\"ie\":\"00000000\",\"endereco\":\"XXXX XXXX\",\"numero\":\"XXX\",\"complemento\":\"XXXX XXXXXX\",\"bairro\":\"XXXXXXX XXXX\",\"cep\":\"00000000\",\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"telefone\":\"0000000000\",\"email\":\"abc@defg.com\"},\"natureza_operacao\":\"XXXXXXX XXXXXXXXX XXXXXXXXXXX\",\"impostos\":{\"icms\":{\"codigo_cfop\":\"5353\",\"situacao_tributaria\":\"40\",\"bc\":0,\"aliquota\":0,\"valor\":0},\"ibs_cbs\":{\"situacao_tributaria\":\"000\",\"classificacao_tributaria\":\"000001\",\"indicador_doacao\":false,\"bc\":0,\"valor_ibs\":0,\"ibs_estadual\":{\"aliquota\":1.2,\"valor\":0,\"aliquota_diferimento\":0.1,\"valor_diferimento\":0,\"valor_devolvido\":0,\"aliquota_reducao\":0.2,\"aliquota_efetiva\":1.0},\"ibs_municipal\":{\"aliquota\":0.8,\"valor\":0,\"aliquota_diferimento\":0.05,\"valor_diferimento\":0,\"valor_devolvido\":0,\"aliquota_reducao\":0.1,\"aliquota_efetiva\":0.7},\"cbs\":{\"aliquota\":0.9,\"valor\":0,\"aliquota_diferimento\":0.03,\"valor_diferimento\":0,\"valor_devolvido\":0,\"aliquota_reducao\":0.05,\"aliquota_efetiva\":0.85},\"situacao_tributaria_regular\":\"000\",\"classificacao_tributaria_regular\":\"000001\",\"tributacao_regular\":{\"ibs_estadual\":{\"aliquota_efetiva\":1.1,\"valor\":0},\"ibs_municipal\":{\"aliquota_efetiva\":0.75,\"valor\":0},\"cbs\":{\"aliquota_efetiva\":0.88,\"valor\":0}},\"compra_governamental\":{\"ibs_estadual\":{\"aliquota\":1.0,\"valor\":0},\"ibs_municipal\":{\"aliquota\":0.6,\"valor\":0},\"cbs\":{\"aliquota\":0.7,\"valor\":0}},\"credito_presumido\":{\"classificacao\":\"01\",\"aliquota_ibs\":0.5,\"valor_ibs\":0,\"valor_ibs_condicionado_suspensao\":0,\"aliquota_cbs\":0.3,\"valor_cbs\":0,\"valor_cbs_condicionado_suspensao\":0},\"estorno_credito\":{\"valor_ibs\":0,\"valor_cbs\":0}}},\"servico\":{\"tipo\":0,\"valor_total\":0.48,\"valor_recebido\":0.48},\"indicador_tomador\":\"0\",\"tomador\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXX XXXXXX XXX\",\"nome_completo\":\"XXXXXX XXX\",\"nome_fantasia\":\"XXXXXX XXXXXXX\",\"ie\":\"00000000\",\"endereco\":\"XXXX XXXX\",\"numero\":\"XXX\",\"complemento\":\"XXXX XXXXXX\",\"bairro\":\"XXXXXXX XXXX\",\"cep\":\"00000000\",\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"telefone\":\"0000000000\",\"email\":\"abc@defg.com\"},\"documentos_fiscais\":[{\"chave\":\"00000000000000000000000000000000000000000000\"}],\"docs\":{\"xml\":\"<cteProc versao=\\\"4.00\\\" xmlns=\\\"http://www.portalfiscal.inf.br/cte\\\">...</cteProc>\",\"pdf\":\"H4sIAAAAAAAAA+3BMQEAAADCoPVEAAA...\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-036")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocument")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorDocument,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelo\":\"mdfe\",\"status\":\"aprovado\",\"categoria\":\"proprietario_veiculos\",\"data_emissao\":\"2025-02-03 08:43:00\",\"numero\":500,\"serie\":1,\"chave\":\"00000000000000000000000000000000000000000000\",\"valor\":78019.2,\"modalidade\":1,\"uf_carregamento\":\"RN\",\"uf_descarregamento\":\"SP\",\"peso_bruto\":26208,\"quantidade_nfe\":0,\"quantidade_cte\":1,\"quantidade_mdfe\":0,\"emitente\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXX XXXXXX XXX\",\"nome_completo\":\"XXXXXX XXXXXX XXX\",\"nome_fantasia\":\"XXXXXX XXXXXX XXX\",\"ie\":\"00000000\",\"endereco\":\"XXXX XXXX\",\"numero\":\"XXX\",\"complemento\":\"XXXX XXXXXX\",\"bairro\":\"XXXXXXX XXXX\",\"cep\":\"00000000\",\"cidade\":\"Sao Paulo\",\"uf\":\"SP\",\"telefone\":\"00000000000\",\"email\":\"abc@defg.com\"},\"carregamento\":[{\"nome_municipio\":\"GOVERNADOR DIX-SEPT ROSADO\",\"codigo_municipio\":\"2404309\"}],\"descarregamento\":[{\"nome_municipio\":\"SAO PAULO\",\"codigo_municipio\":\"3550308\",\"documentos_fiscais\":[{\"chave\":\"00000000000000000000000000000000000000000000\"}]}],\"percurso\":[\"CE\",\"PB\",\"PE\",\"AL\",\"SE\",\"BA\",\"MG\"],\"rodoviario\":{\"rntrc\":\"00000000\",\"veiculo_tracao\":{\"codigo_interno\":\"1\",\"placa\":\"ABC0D00\",\"renavam\":\"00000000000\",\"tara\":\"0\",\"capacidade_kg\":\"100\",\"capacidade_m3\":\"0\",\"tipo_rodado\":\"06\",\"tipo_carroceria\":\"00\",\"uf_licenciamento\":\"MT\",\"proprietario\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXXXX XXXXXXXXXXXX\",\"nome_completo\":\"XXXXXX XXXXXX XXX\",\"ie\":\"0000000000\",\"rntrc\":\"00000000\",\"uf\":\"PR\",\"tipo_proprietario\":2}},\"veiculo_reboque\":[{\"codigo_interno\":\"2\",\"placa\":\"ABC0E00\",\"renavam\":\"00000000000\",\"tara\":\"0\",\"capacidade_kg\":\"100\",\"capacidade_m3\":\"0\",\"tipo_carroceria\":\"00\",\"uf_licenciamento\":\"MT\",\"proprietario\":{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\",\"razao_social\":\"XXXXXXXX XXXXXXXXXXXX\",\"nome_completo\":\"XXXXXX XXXXXX XXX\",\"ie\":\"0000000000\",\"rntrc\":\"00000000\",\"uf\":\"PR\",\"tipo_proprietario\":2}}],\"condutor\":[{\"cpf\":\"00000000000\",\"nome\":\"XXXXXXX XXXXXXXXXXXXXX\"}],\"ciot\":[{\"codigo_ciot\":\"000000000000\",\"cnpj_responsavel\":\"00000000000000\",\"cpf_responsavel\":\"00000000000\"}],\"vale_pedagio\":[{\"cnpj_fornecedor\":\"00000000000000\",\"cnpj_responsavel\":\"00000000000000\",\"cpf_responsavel\":\"00000000000\",\"valor\":\"327.00\",\"comprovante\":\"00000000\"}],\"contratante\":[{\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\"}]},\"aereo\":{\"nacionalidade_aeronave\":\"XXXX\",\"matricula_aeronave\":\"XXXXXX\",\"numero_voo\":\"AB1234\",\"aerodromo_embarque\":\"AB1\",\"aerodromo_destino\":\"AB2\",\"data_voo\":\"2025-02-03\"},\"aquaviario\":{\"irin\":\"XXXX12345\",\"tipo_embarcacao\":\"01\",\"codigo_embarcacao\":\"AB12345\",\"nome_embarcacao\":\"XXXX XXXXXXXX\",\"numero_viagem\":\"AA12345\",\"codigo_porto_embarque\":\"XXXXX\",\"codigo_porto_destino\":\"XXXXX\",\"porto_transbordo\":\"XXXXXXXXX\",\"tipo_navegacao\":\"1\",\"terminal_carregamento\":[{\"codigo\":\"TC1\",\"nome\":\"XXXXXXXXXXX\"}],\"terminal_descarregamento\":[{\"codigo\":\"TD1\",\"nome\":\"XXXXXXXXXXX\"}],\"embarcacao_comboio\":[{\"codigo\":\"EC1\",\"identificador_balsa\":\"XXXXXXXXXXX\"}],\"carga_vazia\":[{\"identificador\":\"UCV1\",\"tipo_unidade\":1}],\"transporte_vazio\":[{\"identificador\":\"UTV1\",\"tipo_unidade\":1}]},\"ferroviario\":{\"trem\":{\"prefixo\":\"ABC123\",\"data_liberacao\":\"2025-03-02 20:00:00\",\"origem\":\"A12\",\"destino\":\"B34\"},\"vagoes\":[{\"peso_bc\":\"0\",\"peso_real\":\"0\",\"tipo_vagao\":\"ABC\",\"serie\":\"XYZ\",\"numero\":\"110\",\"sequencia_vagao\":\"1\",\"tonelada_util\":\"0\"}]},\"produto_predominante\":{\"tipo_carga\":\"02\",\"nome\":\"XXXXXX\",\"gtin\":\"00000000000000\",\"ncm\":\"00000000\",\"lotacao\":{\"carregamento\":{\"cep\":\"00000-000\",\"latitude\":\"00.000\",\"longitude\":\"00.000\"},\"descarregamento\":{\"cep\":\"00000-000\",\"latitude\":\"00.000\",\"longitude\":\"00.000\"}}},\"seguro\":[{\"responsavel\":{\"tipo_responsavel\":\"2\",\"cnpj\":\"00000000000000\",\"cpf\":\"00000000000\"},\"seguradora\":{\"cnpj\":\"00000000000000\",\"nome_seguradora\":\"XXXXXXXXXXXX\"},\"numero_apolice\":\"000000000000\",\"numero_averbacao\":[\"000000000000\"]}],\"docs\":{\"xml\":\"<mdfeProc versao='3.00' xmlns=\\\"http://www.portalfiscal.inf.br/mdfe\\\">...</mdfeProc>\",\"pdf\":\"H4sIAAAAAAAAA+3BMQEAAADCoPVEAAA...\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-037")
stopifnot(inherits(x,"api2_monitor_documents.MonitorDocument")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequest,"{\"modelo\":\"nfe\",\"filtros\":{\"empresa_uuid\":[\"00000000-0000-0000-0000-000000000000\"],\"categoria\":[\"recebidas\"],\"status\":[\"aprovado\"]},\"filtros_modelo\":{\"operacao\":[\"0\",1]},\"paginacao\":\"cursor\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-038")
stopifnot(inherits(x,"api2_monitor_documents.MonitorSearchRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequest,"{\"modelo\":\"nfse\",\"filtros_modelo\":{\"ncm\":\"12345678\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-SCHEMA-039")
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequest,"{\"filtros_modelo\":{\"cfop\":\"1234\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-SCHEMA-040")
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequest,"{\"relatorio\":\"xml\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-SCHEMA-041")
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequest,"{\"modelo\":\"nfe\",\"relatorio\":\"xml\",\"documentos\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-SCHEMA-042")
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequest,"{\"modelo\":\"nfe\",\"categoria\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-SCHEMA-043")
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorSearchRequest,"{\"modelo\":\"nfse\",\"serie_rps\":\"A1\",\"numero_rps\":\"2\",\"page\":1,\"per_page\":50}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-044")
stopifnot(inherits(x,"api2_monitor_documents.MonitorSearchRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorManifestationRequest,"{\"evento\":1,\"manifestacao\":3}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-SCHEMA-045")
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorManifestationRequest,"{\"evento\":1,\"manifestacao\":3,\"justificativa\":\"Synthetic justified operation\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-046")
stopifnot(inherits(x,"api2_monitor_documents.MonitorManifestationRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorImportRequest,"{\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"chave\":\"00000000000000000000000000000000000000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-047")
stopifnot(inherits(x,"api2_monitor_documents.MonitorImportRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorImportRequest,"{\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-SCHEMA-048")
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorImportRequest,"{\"empresa_uuid\":\"00000000-0000-4000-8000-000000000000\",\"chave\":\"00000000000000000000000000000000000000000000\",\"xml\":\"PHRlc3QvPg==\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-SCHEMA-049")
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorImportStatus,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"status\":\"processando\",\"processado\":0,\"importados\":[],\"descartados\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-050")
stopifnot(inherits(x,"api2_monitor_documents.MonitorImportStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorCompanyPage,"{\"data\":[],\"meta\":{\"current_page\":1,\"last_page\":1,\"per_page\":50,\"total\":0}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-051")
stopifnot(inherits(x,"api2_monitor_reads.MonitorCompanyPage")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorCompanyPage,"{\"data\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-SCHEMA-052")
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorCompany,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelos_download\":[\"nfse\"],\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-053")
stopifnot(inherits(x,"api2_monitor_reads.MonitorCompany")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorCompany,"{\"status\":1}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-SCHEMA-054")
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorAvailableMunicipality,"{\"nativo\":false,\"im\":false,\"certificado\":false,\"login_senha\":false,\"cadastro_prefeitura\":false,\"domicilio_fiscal_municipio\":false,\"multiplos_servicos\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-055")
stopifnot(inherits(x,"api2_monitor_reads.MonitorAvailableMunicipality")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorAvailableMunicipality,"{\"nativo\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-SCHEMA-056")
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorAvailableMunicipalities,"{\"data\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-057")
stopifnot(inherits(x,"api2_monitor_reads.MonitorAvailableMunicipalities")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorDownloadStatistics,"{\"total_downloads\":0,\"empresas\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-058")
stopifnot(inherits(x,"api2_monitor_reads.MonitorDownloadStatistics")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorCreateCompanyRequest,"{\"cnpj\":\"00000000000000\",\"razao_social\":\"Synthetic company\",\"cep\":\"01001000\",\"certificado_base64\":\"PHRlc3QvPg==\",\"certificado_senha\":\"synthetic-placeholder\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-059")
stopifnot(inherits(x,"api2_monitor_management.MonitorCreateCompanyRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorCreateCompanyRequest,"{\"razao_social\":\"Synthetic company\",\"cep\":\"01001000\",\"certificado_base64\":\"PHRlc3QvPg==\",\"certificado_senha\":\"synthetic-placeholder\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-SCHEMA-060")
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorUpdateCompanyRequest,"{\"certificado_senha\":\"synthetic-placeholder\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-SCHEMA-061")
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorUpdateCompanyRequest,"{\"modelos_download\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-062")
stopifnot(inherits(x,"api2_monitor_management.MonitorUpdateCompanyRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorCreateMunicipalityRequest,"{\"codigo_ibge\":\"3550308\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-063")
stopifnot(inherits(x,"api2_monitor_management.MonitorCreateMunicipalityRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorCreateMunicipalityRequest,"{\"codigo_ibge\":3550308}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-SCHEMA-064")
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorNotification,"{\"tipo_notificacao\":3,\"data\":{\"uuid\":\"00000000-0000-4000-8000-000000000000\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-065")
stopifnot(inherits(x,"api2_monitor_management.MonitorNotification")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorNotification,"{\"tipo_notificacao\":5,\"data\":{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"status\":\"processando\",\"empresa_uuid\":null,\"processado\":0,\"total\":null,\"importados\":[],\"descartados\":[],\"erro\":null}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-066")
stopifnot(inherits(x,"api2_monitor_management.MonitorNotification")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfseProviderStatus,"{\"status\":true,\"ambientes\":[1,2],\"autenticacao\":[\"certificado_a1\"],\"emissao\":[\"nfse\"],\"funcoes\":[\"consultar\"],\"pdf_nfse\":false,\"pdf_sincrono\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-067")
stopifnot(inherits(x,"api2_emitter_reads.NfseProviderStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfseProviderStatus,"{\"status\":false,\"error\":\"synthetic not configured\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-SCHEMA-068")
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfcomServiceStatus,"{\"operacional\":false,\"mensagem\":\"synthetic offline\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-069")
stopifnot(inherits(x,"api2_emitter_reads.NfcomServiceStatus")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfseManifestationRequest,"{\"ambiente\":2,\"chave\":\"00000000000000000000000000000000000000000000000000\",\"manifestador\":1,\"evento\":1}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-070")
stopifnot(inherits(x,"api2_emitter_reads.NfseManifestationRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfseManifestationRequest,"{\"ambiente\":2,\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"manifestador\":1,\"evento\":1}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-SCHEMA-071")
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfseManifestationRequest,"{\"ambiente\":2,\"chave\":\"00000000000000000000000000000000000000000000000000\",\"manifestador\":1,\"evento\":2}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-SCHEMA-072")
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfseManifestationRequest,"{\"ambiente\":2,\"chave\":\"00000000000000000000000000000000000000000000000000\",\"manifestador\":1,\"evento\":2,\"motivo_rejeicao\":9}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-SCHEMA-073")
checked <- checked + 1L
x <- try(wm_from_json(api2_emitter_reads_NfseFiscalResponse,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"modelo\":\"lote_rps\",\"status\":\"processando\",\"info_nfse\":[],\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-SCHEMA-074")
stopifnot(inherits(x,"api2_emitter_reads.NfseFiscalResponse")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroup,"{\"discriminacao\":\"Synthetic service\",\"valor_servicos\":\"123456789012345.67\",\"future\":{\"zero\":0,\"enabled\":false}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-ISSUER-001")
stopifnot(inherits(x,"api2_nfse_issuance.NfseServiceGroup")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroup,"{\"discriminacao\":\"Synthetic service\",\"valor_servicos\":false,\"future\":{\"zero\":0,\"enabled\":false}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-ISSUER-002")
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_NfseServiceGroup,"{\"discriminacao\":\"Synthetic service\",\"valor_servicos\":\"10.123\",\"future\":{\"zero\":0,\"enabled\":false}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-ISSUER-003")
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_CteServiceGroup,"{\"tipo\":0,\"valor_total\":\"100.00\",\"valor_recebido\":\"100.00\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-ISSUER-004")
stopifnot(inherits(x,"api2_cte_issuance.CteServiceGroup")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_CteServiceGroup,"{\"tipo\":9,\"valor_total\":\"100.00\",\"valor_recebido\":\"100.00\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-ISSUER-005")
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_CteOsServiceGroup,"{\"tipo\":6,\"descricao\":\"Synthetic passenger transport\",\"valor_total\":\"100.00\",\"valor_recebido\":\"100.00\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-ISSUER-006")
stopifnot(inherits(x,"api2_cte_issuance.CteOsServiceGroup")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_CteOsServiceGroup,"{\"tipo\":0,\"descricao\":\"Synthetic passenger transport\",\"valor_total\":\"100.00\",\"valor_recebido\":\"100.00\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-ISSUER-007")
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_CteOsServiceGroup,"{\"tipo\":6,\"valor_total\":\"100.00\",\"valor_recebido\":\"100.00\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-ISSUER-008")
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_MdfeFreightPaymentGroup,"{\"cpf\":\"00000000000\",\"valor_contrato\":\"100.00\",\"forma_pagamento\":\"0\",\"operacao_alto_desempenho\":false,\"componentes_pagamento_frete\":[{\"tipo_componente\":\"01\",\"valor_componente\":\"100.00\"}],\"informacoes_bancarias\":{\"tipo_informacao_bancaria\":\"3\",\"pix\":\"synthetic@example.invalid\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-ISSUER-009")
stopifnot(inherits(x,"api2_mdfe_issuance.MdfeFreightPaymentGroup")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_MdfeFreightPaymentGroup,"[]",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-ISSUER-010")
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_MdfeFreightPaymentGroup,"{\"cpf\":\"00000000000\",\"valor_contrato\":\"100.00\",\"forma_pagamento\":\"0\",\"operacao_alto_desempenho\":\"yes\",\"componentes_pagamento_frete\":[{\"tipo_componente\":\"01\",\"valor_componente\":\"100.00\"}],\"informacoes_bancarias\":{\"tipo_informacao_bancaria\":\"3\",\"pix\":\"synthetic@example.invalid\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-ISSUER-011")
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomItemGroup,"{\"descricao\":\"Synthetic communication service\",\"unidade\":\"MES\",\"quantidade\":\"1.0000\",\"valor_unitario\":\"99.90\",\"valor_total\":\"99.90\",\"indicador_total\":1,\"classe_imposto\":\"REF123456\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-ISSUER-012")
stopifnot(inherits(x,"api2_nfcom_issuance.NfcomItemGroup")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomItemGroup,"{\"descricao\":\"Synthetic communication service\",\"unidade\":\"MES\",\"quantidade\":false,\"valor_unitario\":\"99.90\",\"valor_total\":\"99.90\",\"indicador_total\":1,\"classe_imposto\":\"REF123456\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-ISSUER-013")
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomItemGroup,"{\"descricao\":\"Synthetic communication service\",\"unidade\":\"MES\",\"quantidade\":\"1.0000\",\"valor_unitario\":\"99.90\",\"valor_total\":\"99.90\",\"indicador_total\":1,\"classe_imposto\":\"invalid-tax-class\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-ISSUER-014")
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_NfcomItemGroup,"{\"descricao\":\"Synthetic communication service\",\"unidade\":\"MES\",\"quantidade\":\"1.0000\",\"valor_unitario\":\"99.90\",\"valor_total\":\"99.90\",\"indicador_total\":1}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-ISSUER-015")
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_DceItemGroup,"{\"descricao\":\"Synthetic item\",\"ncm\":\"00\",\"quantidade\":\"1.0000\",\"valor_unitario\":\"10.00000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-ISSUER-016")
stopifnot(inherits(x,"api2_dce_issuance.DceItemGroup")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_DceItemGroup,"{\"descricao\":\"Synthetic item\",\"ncm\":\"123456\",\"quantidade\":\"1.0000\",\"valor_unitario\":\"10.00000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-ISSUER-017")
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_DceItemGroup,"{\"descricao\":\"Synthetic item\",\"ncm\":\"00\",\"quantidade\":false,\"valor_unitario\":\"10.00000000\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-ISSUER-018")
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterCancelCtePayload,"{\"uuid\":\"00000000-0000-4000-8000-000000000000\",\"justificativa\":\"Synthetic cancellation justification\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:API2-ISSUER-019")
stopifnot(inherits(x,"api2_cte_issuance.EmitterCancelCtePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterCancelCtePayload,"{\"justificativa\":\"Synthetic cancellation justification\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:API2-ISSUER-020")
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterCancelCtePayload,"{\"chave\":\"123456ab12cd34ef5600000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:identifier-case-cte-lower")
stopifnot(inherits(x,"api2_cte_issuance.EmitterCancelCtePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterCancelCtePayload,"{\"chave\":\"123456AB12CD34EF5600000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:identifier-case-cte-upper")
stopifnot(inherits(x,"api2_cte_issuance.EmitterCancelCtePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterCancelCtePayload,"{\"chave\":\"123456ab#2cd34ef5600000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:identifier-case-cte-bad-symbol")
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterCancelCtePayload,"{\"chave\":\"123456ab12cd34ef560000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:identifier-case-cte-short")
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterCancelMdfePayload,"{\"chave\":\"123456ab12cd34ef5600000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:identifier-case-mdfe-lower")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterCancelMdfePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterCancelMdfePayload,"{\"chave\":\"123456AB12CD34EF5600000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:identifier-case-mdfe-upper")
stopifnot(inherits(x,"api2_mdfe_issuance.EmitterCancelMdfePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterCancelMdfePayload,"{\"chave\":\"123456ab#2cd34ef5600000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:identifier-case-mdfe-bad-symbol")
checked <- checked + 1L
x <- try(wm_from_json(api2_mdfe_issuance_EmitterCancelMdfePayload,"{\"chave\":\"123456ab12cd34ef560000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:identifier-case-mdfe-short")
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterCancelNfcomPayload,"{\"chave\":\"123456ab12cd34ef5600000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:identifier-case-nfcom-lower")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterCancelNfcomPayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterCancelNfcomPayload,"{\"chave\":\"123456AB12CD34EF5600000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:identifier-case-nfcom-upper")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterCancelNfcomPayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterCancelNfcomPayload,"{\"chave\":\"123456ab#2cd34ef5600000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:identifier-case-nfcom-bad-symbol")
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterCancelNfcomPayload,"{\"chave\":\"123456ab12cd34ef560000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:identifier-case-nfcom-short")
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_EmitterCancelDcePayload,"{\"chave\":\"123456ab12cd34ef5600000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:identifier-case-dce-lower")
stopifnot(inherits(x,"api2_dce_issuance.EmitterCancelDcePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_EmitterCancelDcePayload,"{\"chave\":\"123456AB12CD34EF5600000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:identifier-case-dce-upper")
stopifnot(inherits(x,"api2_dce_issuance.EmitterCancelDcePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_EmitterCancelDcePayload,"{\"chave\":\"123456ab#2cd34ef5600000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:identifier-case-dce-bad-symbol")
checked <- checked + 1L
x <- try(wm_from_json(api2_dce_issuance_EmitterCancelDcePayload,"{\"chave\":\"123456ab12cd34ef560000000000000000000000000\",\"justificativa\":\"Synthetic schema example only\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:identifier-case-dce-short")
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterConfirmCteDeliveryPayload,"{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"notas_fiscais\":[\"123456ab12cd34ef5600000000000000000000000000\"],\"comprovante\":\"SYNTHETIC_IMAGE_PLACEHOLDER\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:identifier-case-cte-delivery-related-note-lower")
stopifnot(inherits(x,"api2_cte_issuance.EmitterConfirmCteDeliveryPayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayload,"{\"ambiente\":2,\"natureza_operacao\":\"Synthetic communication\",\"tipo_operacao\":1,\"finalidade\":1,\"tipo_faturamento\":0,\"cliente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"Synthetic company\",\"indicador_ie\":9,\"endereco\":{\"logradouro\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"codigo_municipio\":\"3550308\",\"municipio\":\"Synthetic municipality\",\"uf\":\"SP\",\"cep\":\"00000000\"}},\"assinante\":{\"codigo\":\"SYNTHETIC\",\"tipo\":1,\"tipo_servico\":4,\"contrato\":{\"numero\":\"SYNTHETIC\",\"data_inicio\":\"2026-01-01\",\"data_fim\":\"2026-12-31\"}},\"itens\":[{\"descricao\":\"Synthetic communication service\",\"unidade\":\"MES\",\"quantidade\":\"1.0000\",\"valor_unitario\":\"99.90\",\"valor_total\":\"99.90\",\"indicador_total\":1,\"classe_imposto\":\"REF123456\"}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:branch-scope-nfcom-normal-omits-optional-substitution-and-cobilling")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayload,"{\"ambiente\":2,\"natureza_operacao\":\"Synthetic communication\",\"tipo_operacao\":1,\"finalidade\":1,\"tipo_faturamento\":0,\"cliente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"Synthetic company\",\"indicador_ie\":9,\"endereco\":{\"logradouro\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"codigo_municipio\":\"3550308\",\"municipio\":\"Synthetic municipality\",\"uf\":\"SP\",\"cep\":\"00000000\"}},\"assinante\":{\"codigo\":\"SYNTHETIC\",\"tipo\":1,\"tipo_servico\":4,\"contrato\":{\"numero\":\"SYNTHETIC\",\"data_inicio\":\"2026-01-01\",\"data_fim\":\"2026-12-31\"}},\"itens\":[{\"descricao\":\"Synthetic communication service\",\"unidade\":\"MES\",\"quantidade\":\"1.0000\",\"valor_unitario\":\"99.90\",\"valor_total\":\"99.90\",\"indicador_total\":1,\"classe_imposto\":\"REF123456\"}],\"substituicao\":{}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:branch-scope-nfcom-substitution-present-empty-invalid")
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayload,"{\"ambiente\":2,\"natureza_operacao\":\"Synthetic communication\",\"tipo_operacao\":1,\"finalidade\":1,\"tipo_faturamento\":0,\"cliente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"Synthetic company\",\"indicador_ie\":9,\"endereco\":{\"logradouro\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"codigo_municipio\":\"3550308\",\"municipio\":\"Synthetic municipality\",\"uf\":\"SP\",\"cep\":\"00000000\"}},\"assinante\":{\"codigo\":\"SYNTHETIC\",\"tipo\":1,\"tipo_servico\":4,\"contrato\":{\"numero\":\"SYNTHETIC\",\"data_inicio\":\"2026-01-01\",\"data_fim\":\"2026-12-31\"}},\"itens\":[{\"descricao\":\"Synthetic communication service\",\"unidade\":\"MES\",\"quantidade\":\"1.0000\",\"valor_unitario\":\"99.90\",\"valor_total\":\"99.90\",\"indicador_total\":1,\"classe_imposto\":\"REF123456\"}],\"cofaturamento\":{}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:branch-scope-nfcom-cobilling-present-empty-invalid")
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayload,"{\"ambiente\":2,\"natureza_operacao\":\"Synthetic communication\",\"tipo_operacao\":1,\"finalidade\":3,\"tipo_faturamento\":0,\"cliente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"Synthetic company\",\"indicador_ie\":9,\"endereco\":{\"logradouro\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"codigo_municipio\":\"3550308\",\"municipio\":\"Synthetic municipality\",\"uf\":\"SP\",\"cep\":\"00000000\"}},\"assinante\":{\"codigo\":\"SYNTHETIC\",\"tipo\":1,\"tipo_servico\":4,\"contrato\":{\"numero\":\"SYNTHETIC\",\"data_inicio\":\"2026-01-01\",\"data_fim\":\"2026-12-31\"}},\"itens\":[{\"descricao\":\"Synthetic communication service\",\"unidade\":\"MES\",\"quantidade\":\"1.0000\",\"valor_unitario\":\"99.90\",\"valor_total\":\"99.90\",\"indicador_total\":1,\"classe_imposto\":\"REF123456\"}],\"substituicao\":{\"chave_nfcom_substituida\":\"123456ab12cd34ef5600000000000000000000000000\",\"motivo\":\"01\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:branch-scope-nfcom-substitution-key-does-not-require-cobilling")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayload,"{\"ambiente\":2,\"natureza_operacao\":\"Synthetic communication\",\"tipo_operacao\":1,\"finalidade\":3,\"tipo_faturamento\":0,\"cliente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"Synthetic company\",\"indicador_ie\":9,\"endereco\":{\"logradouro\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"codigo_municipio\":\"3550308\",\"municipio\":\"Synthetic municipality\",\"uf\":\"SP\",\"cep\":\"00000000\"}},\"assinante\":{\"codigo\":\"SYNTHETIC\",\"tipo\":1,\"tipo_servico\":4,\"contrato\":{\"numero\":\"SYNTHETIC\",\"data_inicio\":\"2026-01-01\",\"data_fim\":\"2026-12-31\"}},\"itens\":[{\"descricao\":\"Synthetic communication service\",\"unidade\":\"MES\",\"quantidade\":\"1.0000\",\"valor_unitario\":\"99.90\",\"valor_total\":\"99.90\",\"indicador_total\":1,\"classe_imposto\":\"REF123456\"}],\"substituicao\":{\"chave_nfcom_substituida\":\"123456ab12cd34ef5600000000000000000000000000\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:branch-scope-nfcom-substitution-requires-reason-when-present")
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayload,"{\"ambiente\":2,\"natureza_operacao\":\"Synthetic communication\",\"tipo_operacao\":1,\"finalidade\":3,\"tipo_faturamento\":0,\"cliente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"Synthetic company\",\"indicador_ie\":9,\"endereco\":{\"logradouro\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"codigo_municipio\":\"3550308\",\"municipio\":\"Synthetic municipality\",\"uf\":\"SP\",\"cep\":\"00000000\"}},\"assinante\":{\"codigo\":\"SYNTHETIC\",\"tipo\":1,\"tipo_servico\":4,\"contrato\":{\"numero\":\"SYNTHETIC\",\"data_inicio\":\"2026-01-01\",\"data_fim\":\"2026-12-31\"}},\"itens\":[{\"descricao\":\"Synthetic communication service\",\"unidade\":\"MES\",\"quantidade\":\"1.0000\",\"valor_unitario\":\"99.90\",\"valor_total\":\"99.90\",\"indicador_total\":1,\"classe_imposto\":\"REF123456\"}],\"substituicao\":{\"motivo\":\"01\",\"nf_referenciada\":{\"cnpj\":\"00000000000000\",\"modelo\":\"21\",\"serie\":\"001\",\"numero\":1,\"competencia\":\"202601\"}}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:branch-scope-nfcom-substitution-legacy-reference-is-object")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayload,"{\"ambiente\":2,\"natureza_operacao\":\"Synthetic communication\",\"tipo_operacao\":1,\"finalidade\":1,\"tipo_faturamento\":2,\"cliente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"Synthetic company\",\"indicador_ie\":9,\"endereco\":{\"logradouro\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"codigo_municipio\":\"3550308\",\"municipio\":\"Synthetic municipality\",\"uf\":\"SP\",\"cep\":\"00000000\"}},\"assinante\":{\"codigo\":\"SYNTHETIC\",\"tipo\":1,\"tipo_servico\":4},\"itens\":[{\"descricao\":\"Synthetic communication service\",\"unidade\":\"MES\",\"quantidade\":\"1.0000\",\"valor_unitario\":\"99.90\",\"valor_total\":\"99.90\",\"indicador_total\":1,\"classe_imposto\":\"REF123456\"}],\"cofaturamento\":{\"chave_nfcom_local\":\"123456ab12cd34ef5600000000000000000000000000\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:branch-scope-nfcom-cobilling-key-does-not-require-substitution")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayload,"{\"ambiente\":2,\"natureza_operacao\":\"Synthetic communication\",\"tipo_operacao\":1,\"finalidade\":1,\"tipo_faturamento\":0,\"cliente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"Synthetic company\",\"indicador_ie\":9,\"endereco\":{\"logradouro\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"codigo_municipio\":\"3550308\",\"municipio\":\"Synthetic municipality\",\"uf\":\"SP\",\"cep\":\"00000000\"}},\"assinante\":{\"codigo\":\"SYNTHETIC\",\"tipo\":1,\"tipo_servico\":4},\"itens\":[{\"descricao\":\"Synthetic communication service\",\"unidade\":\"MES\",\"quantidade\":\"1.0000\",\"valor_unitario\":\"99.90\",\"valor_total\":\"99.90\",\"indicador_total\":1,\"classe_imposto\":\"REF123456\"}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:branch-scope-nfcom-normal-requires-contract")
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayload,"{\"ambiente\":2,\"natureza_operacao\":\"Synthetic communication\",\"tipo_operacao\":1,\"finalidade\":1,\"tipo_faturamento\":0,\"cliente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"Synthetic company\",\"indicador_ie\":9,\"endereco\":{\"logradouro\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"codigo_municipio\":\"3550308\",\"municipio\":\"Synthetic municipality\",\"uf\":\"SP\",\"cep\":\"00000000\"}},\"assinante\":{\"codigo\":\"SYNTHETIC\",\"tipo\":1,\"tipo_servico\":4,\"contrato\":{\"numero\":\"SYNTHETIC\",\"data_inicio\":\"2026-01-01\",\"data_fim\":\"2026-12-31\"}},\"itens\":[{\"descricao\":\"Synthetic communication service\",\"unidade\":\"MES\",\"quantidade\":\"1.0000\",\"valor_unitario\":\"99.90\",\"valor_total\":\"99.90\",\"indicador_total\":1,\"classe_imposto\":\"REF123456\"}],\"pgto_vinc\":{\"pagamentos\":[{\"n_pag\":1,\"id_transacao\":\"SYNTHETIC\",\"tp_meio_pgto\":\"01\",\"cnpj_receb\":\"ab12cd34ef5600\",\"cnpj_base_psp\":\"ab12cd34\"}]}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:branch-scope-nfcom-linked-payments-lowercase-identifiers")
stopifnot(inherits(x,"api2_nfcom_issuance.EmitterIssueNfcomPayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfcom_issuance_EmitterIssueNfcomPayload,"{\"ambiente\":2,\"natureza_operacao\":\"Synthetic communication\",\"tipo_operacao\":1,\"finalidade\":1,\"tipo_faturamento\":0,\"cliente\":{\"cnpj\":\"00000000000000\",\"razao_social\":\"Synthetic company\",\"indicador_ie\":9,\"endereco\":{\"logradouro\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"codigo_municipio\":\"3550308\",\"municipio\":\"Synthetic municipality\",\"uf\":\"SP\",\"cep\":\"00000000\"}},\"assinante\":{\"codigo\":\"SYNTHETIC\",\"tipo\":1,\"tipo_servico\":4,\"contrato\":{\"numero\":\"SYNTHETIC\",\"data_inicio\":\"2026-01-01\",\"data_fim\":\"2026-12-31\"}},\"itens\":[{\"descricao\":\"Synthetic communication service\",\"unidade\":\"MES\",\"quantidade\":\"1.0000\",\"valor_unitario\":\"99.90\",\"valor_total\":\"99.90\",\"indicador_total\":1,\"classe_imposto\":\"REF123456\"}],\"pgto_vinc\":{\"pagamentos\":[{\"n_pag\":1,\"id_transacao\":\"SYNTHETIC\",\"tp_meio_pgto\":\"01\",\"cnpj_base_psp\":\"ab12cd34\"}]}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:branch-scope-nfcom-linked-payment-required-fields-not-hidden-by-closure")
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayload,"{\"ambiente\":2,\"rps\":[{\"servico\":{\"discriminacao\":\"Synthetic service\",\"valor_servicos\":\"100.00\",\"iss_retido\":2}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:branch-scope-nfse-common-service-structure")
stopifnot(inherits(x,"api2_nfse_issuance.EmitterIssueNfsePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayload,"{\"ambiente\":2,\"rps\":[{\"servico\":{\"valor_servicos\":\"100.00\",\"iss_retido\":2}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:branch-scope-nfse-common-service-discriminacao-required")
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayload,"{\"ambiente\":2,\"rps\":[{\"servico\":{\"discriminacao\":\"Synthetic service\",\"iss_retido\":2}}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:branch-scope-nfse-common-service-valor_servicos-required")
checked <- checked + 1L
x <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayload,"{\"ambiente\":2,\"rps\":[{}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:branch-scope-nfse-common-rps-service-required")
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayload,"{\"ambiente\":2,\"modelo\":\"cte_os\",\"natureza_operacao\":\"Synthetic passenger transport\",\"modalidade\":1,\"finalidade\":\"0\",\"contribuicao_tomador\":9,\"indicador_tomador\":4,\"local_inicio_prestacao\":{\"cidade\":\"Synthetic origin\",\"uf\":\"SP\"},\"local_termino_prestacao\":{\"cidade\":\"Synthetic destination\",\"uf\":\"RJ\"},\"tomador\":{\"cnpj\":\"00000000000000\",\"nome_razao\":\"Synthetic company\",\"endereco\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\"},\"servico\":{\"tipo\":6,\"descricao\":\"Synthetic passenger transport\",\"valor_total\":\"100.00\",\"valor_recebido\":\"100.00\"},\"carga\":{\"produto_predominante\":\"Synthetic service\",\"valor_total\":\"100.00\",\"quantidades\":[{\"quantidade\":\"1.0000\"}]},\"impostos\":{\"cfop\":\"6353\",\"classificacao_tributaria\":\"SN\"},\"documentos_fiscais\":[{\"numero\":\"001\",\"data_emissao\":\"2026-01-01\",\"valor_documento\":\"100.00\"}],\"rodoviario\":{\"taf_cte_os\":\"000000000000\",\"tipo_fretamento\":\"2\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:branch-scope-cte-os-road-does-not-require-normal-rntrc")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayload,"{\"ambiente\":2,\"modelo\":\"cte_os\",\"natureza_operacao\":\"Synthetic passenger transport\",\"modalidade\":1,\"finalidade\":\"0\",\"contribuicao_tomador\":9,\"indicador_tomador\":4,\"local_inicio_prestacao\":{\"cidade\":\"Synthetic origin\",\"uf\":\"SP\"},\"local_termino_prestacao\":{\"cidade\":\"Synthetic destination\",\"uf\":\"RJ\"},\"tomador\":{\"cnpj\":\"00000000000000\",\"nome_razao\":\"Synthetic company\",\"endereco\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\"},\"servico\":{\"tipo\":6,\"descricao\":\"Synthetic passenger transport\",\"valor_total\":\"100.00\",\"valor_recebido\":\"100.00\"},\"carga\":{\"produto_predominante\":\"Synthetic service\",\"valor_total\":\"100.00\",\"quantidades\":[{\"quantidade\":\"1.0000\"}]},\"impostos\":{\"cfop\":\"6353\",\"classificacao_tributaria\":\"SN\"},\"documentos_fiscais\":[{\"numero\":\"001\",\"data_emissao\":\"2026-01-01\",\"valor_documento\":\"100.00\"}],\"rodoviario\":{\"taf_cte_os\":\"000000000000\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:branch-scope-cte-os-passenger-requires-charter-type")
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayload,"{\"ambiente\":2,\"modelo\":\"cte\",\"natureza_operacao\":\"Synthetic passenger transport\",\"modalidade\":1,\"finalidade\":\"0\",\"contribuicao_tomador\":9,\"indicador_tomador\":4,\"local_inicio_prestacao\":{\"cidade\":\"Synthetic origin\",\"uf\":\"SP\"},\"local_termino_prestacao\":{\"cidade\":\"Synthetic destination\",\"uf\":\"RJ\"},\"tomador\":{\"cnpj\":\"00000000000000\",\"nome_razao\":\"Synthetic company\",\"endereco\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\"},\"servico\":{\"tipo\":0,\"valor_total\":\"100.00\",\"valor_recebido\":\"100.00\"},\"carga\":{\"produto_predominante\":\"Synthetic service\",\"valor_total\":\"100.00\",\"quantidades\":[{\"unidade_medida\":\"0\",\"tipo_medida\":\"UNID\",\"quantidade\":\"1.0000\"}]},\"impostos\":{\"cfop\":\"6353\",\"classificacao_tributaria\":\"SN\"},\"documentos_fiscais\":[{\"tipo\":\"1\",\"chave\":\"00000000000000000000000000000000000000000000\"}],\"rodoviario\":{\"rntrc\":\"00000000\"},\"remetente\":{\"cnpj\":\"00000000000000\",\"nome_razao\":\"Synthetic company\",\"endereco\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\"},\"destinatario\":{\"cnpj\":\"00000000000000\",\"nome_razao\":\"Synthetic company\",\"endereco\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:branch-scope-cte-normal-road-requires-normal-branch-not-os-fields")
stopifnot(inherits(x,"api2_cte_issuance.EmitterIssueCtePayload")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayload,"{\"ambiente\":2,\"modelo\":\"cte\",\"natureza_operacao\":\"Synthetic passenger transport\",\"modalidade\":1,\"finalidade\":\"0\",\"contribuicao_tomador\":9,\"indicador_tomador\":4,\"local_inicio_prestacao\":{\"cidade\":\"Synthetic origin\",\"uf\":\"SP\"},\"local_termino_prestacao\":{\"cidade\":\"Synthetic destination\",\"uf\":\"RJ\"},\"tomador\":{\"cnpj\":\"00000000000000\",\"nome_razao\":\"Synthetic company\",\"endereco\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\"},\"servico\":{\"tipo\":0,\"valor_total\":\"100.00\",\"valor_recebido\":\"100.00\"},\"carga\":{\"produto_predominante\":\"Synthetic service\",\"valor_total\":\"100.00\",\"quantidades\":[{\"unidade_medida\":\"0\",\"tipo_medida\":\"UNID\",\"quantidade\":\"1.0000\"}]},\"impostos\":{\"cfop\":\"6353\",\"classificacao_tributaria\":\"SN\"},\"documentos_fiscais\":[{\"tipo\":\"1\",\"chave\":\"00000000000000000000000000000000000000000000\"}],\"rodoviario\":{\"rntrc\":\"00000000\"},\"destinatario\":{\"cnpj\":\"00000000000000\",\"nome_razao\":\"Synthetic company\",\"endereco\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:branch-scope-cte-normal-remetente-required")
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayload,"{\"ambiente\":2,\"modelo\":\"cte\",\"natureza_operacao\":\"Synthetic passenger transport\",\"modalidade\":1,\"finalidade\":\"0\",\"contribuicao_tomador\":9,\"indicador_tomador\":4,\"local_inicio_prestacao\":{\"cidade\":\"Synthetic origin\",\"uf\":\"SP\"},\"local_termino_prestacao\":{\"cidade\":\"Synthetic destination\",\"uf\":\"RJ\"},\"tomador\":{\"cnpj\":\"00000000000000\",\"nome_razao\":\"Synthetic company\",\"endereco\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\"},\"servico\":{\"tipo\":0,\"valor_total\":\"100.00\",\"valor_recebido\":\"100.00\"},\"carga\":{\"produto_predominante\":\"Synthetic service\",\"valor_total\":\"100.00\",\"quantidades\":[{\"unidade_medida\":\"0\",\"tipo_medida\":\"UNID\",\"quantidade\":\"1.0000\"}]},\"impostos\":{\"cfop\":\"6353\",\"classificacao_tributaria\":\"SN\"},\"documentos_fiscais\":[{\"tipo\":\"1\",\"chave\":\"00000000000000000000000000000000000000000000\"}],\"rodoviario\":{\"rntrc\":\"00000000\"},\"remetente\":{\"cnpj\":\"00000000000000\",\"nome_razao\":\"Synthetic company\",\"endereco\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:branch-scope-cte-normal-destinatario-required")
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayload,"{\"ambiente\":2,\"modelo\":\"cte\",\"natureza_operacao\":\"Synthetic passenger transport\",\"modalidade\":1,\"finalidade\":\"0\",\"contribuicao_tomador\":9,\"indicador_tomador\":4,\"local_inicio_prestacao\":{\"cidade\":\"Synthetic origin\",\"uf\":\"SP\"},\"local_termino_prestacao\":{\"cidade\":\"Synthetic destination\",\"uf\":\"RJ\"},\"tomador\":{\"cnpj\":\"00000000000000\",\"nome_razao\":\"Synthetic company\",\"endereco\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\"},\"carga\":{\"produto_predominante\":\"Synthetic service\",\"valor_total\":\"100.00\",\"quantidades\":[{\"unidade_medida\":\"0\",\"tipo_medida\":\"UNID\",\"quantidade\":\"1.0000\"}]},\"impostos\":{\"cfop\":\"6353\",\"classificacao_tributaria\":\"SN\"},\"documentos_fiscais\":[{\"tipo\":\"1\",\"chave\":\"00000000000000000000000000000000000000000000\"}],\"rodoviario\":{\"rntrc\":\"00000000\"},\"remetente\":{\"cnpj\":\"00000000000000\",\"nome_razao\":\"Synthetic company\",\"endereco\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\"},\"destinatario\":{\"cnpj\":\"00000000000000\",\"nome_razao\":\"Synthetic company\",\"endereco\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:branch-scope-cte-normal-servico-required")
checked <- checked + 1L
x <- try(wm_from_json(api2_cte_issuance_EmitterIssueCtePayload,"{\"ambiente\":2,\"modelo\":\"cte\",\"natureza_operacao\":\"Synthetic passenger transport\",\"modalidade\":1,\"finalidade\":\"0\",\"contribuicao_tomador\":9,\"indicador_tomador\":4,\"local_inicio_prestacao\":{\"cidade\":\"Synthetic origin\",\"uf\":\"SP\"},\"local_termino_prestacao\":{\"cidade\":\"Synthetic destination\",\"uf\":\"RJ\"},\"tomador\":{\"cnpj\":\"00000000000000\",\"nome_razao\":\"Synthetic company\",\"endereco\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\"},\"servico\":{\"tipo\":0,\"valor_total\":\"100.00\",\"valor_recebido\":\"100.00\"},\"carga\":{\"produto_predominante\":\"Synthetic service\",\"valor_total\":\"100.00\",\"quantidades\":[{\"unidade_medida\":\"0\",\"tipo_medida\":\"UNID\",\"quantidade\":\"1.0000\"}]},\"impostos\":{\"cfop\":\"6353\",\"classificacao_tributaria\":\"SN\"},\"documentos_fiscais\":[{\"tipo\":\"1\",\"chave\":\"00000000000000000000000000000000000000000000\"}],\"rodoviario\":{},\"remetente\":{\"cnpj\":\"00000000000000\",\"nome_razao\":\"Synthetic company\",\"endereco\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\"},\"destinatario\":{\"cnpj\":\"00000000000000\",\"nome_razao\":\"Synthetic company\",\"endereco\":\"Synthetic street\",\"numero\":\"001\",\"bairro\":\"Synthetic\",\"cidade\":\"Synthetic city\",\"uf\":\"SP\"}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:branch-scope-cte-normal-road-rntrc-required")
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorAddress,"{\"codigo_municipio\":3550308,\"cep\":\"00000-000\",\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:monitor-address-wire-monitor-reads-integer")
stopifnot(inherits(x,"api2_monitor_reads.MonitorAddress")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorAddress,"{\"codigo_municipio\":\"3550308\",\"cep\":\"00000-000\",\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:monitor-address-wire-monitor-reads-string")
stopifnot(inherits(x,"api2_monitor_reads.MonitorAddress")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorAddress,"{\"codigo_municipio\":3550308.5,\"cep\":\"00000-000\",\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:monitor-address-wire-monitor-reads-fractional")
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorAddress,"{\"codigo_municipio\":true,\"cep\":\"00000-000\",\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:monitor-address-wire-monitor-reads-boolean")
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorAddress,"{\"codigo_municipio\":3550308,\"cep\":\"00000-000\",\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:monitor-address-wire-monitor-documents-integer")
stopifnot(inherits(x,"api2_monitor_documents.MonitorAddress")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorAddress,"{\"codigo_municipio\":\"3550308\",\"cep\":\"00000-000\",\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:monitor-address-wire-monitor-documents-string")
stopifnot(inherits(x,"api2_monitor_documents.MonitorAddress")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorAddress,"{\"codigo_municipio\":3550308.5,\"cep\":\"00000-000\",\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:monitor-address-wire-monitor-documents-fractional")
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_documents_MonitorAddress,"{\"codigo_municipio\":true,\"cep\":\"00000-000\",\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:monitor-address-wire-monitor-documents-boolean")
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorAddress,"{\"codigo_municipio\":3550308,\"cep\":\"00000-000\",\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:monitor-address-wire-monitor-management-integer")
stopifnot(inherits(x,"api2_monitor_management.MonitorAddress")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorAddress,"{\"codigo_municipio\":\"3550308\",\"cep\":\"00000-000\",\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:monitor-address-wire-monitor-management-string")
stopifnot(inherits(x,"api2_monitor_management.MonitorAddress")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorAddress,"{\"codigo_municipio\":3550308.5,\"cep\":\"00000-000\",\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:monitor-address-wire-monitor-management-fractional")
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_management_MonitorAddress,"{\"codigo_municipio\":true,\"cep\":\"00000-000\",\"future\":false}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("api2:monitor-address-wire-monitor-management-boolean")
checked <- checked + 1L
x <- try(wm_from_json(api2_monitor_reads_MonitorCompanyPage,"{\"data\":[{\"uuid\":\"00000000-0000-4000-8000-000000000001\",\"endereco\":{\"codigo_municipio\":3550308}},{\"uuid\":\"00000000-0000-4000-8000-000000000002\",\"endereco\":{\"codigo_municipio\":\"3550308\"}}],\"meta\":{\"current_page\":1,\"last_page\":1,\"per_page\":10,\"total\":2}}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("api2:monitor-address-wire-company-page-mixed-representations")
stopifnot(inherits(x,"api2_monitor_reads.MonitorCompanyPage")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_b2b_ResellerCreateCompaniesRequest,"{\"quantidade\":0}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("b2b:reseller-quantity-0")
checked <- checked + 1L
x <- try(wm_from_json(api1_b2b_ResellerCreateCompaniesRequest,"{\"quantidade\":1}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("b2b:reseller-quantity-1")
stopifnot(inherits(x,"api1_b2b.ResellerCreateCompaniesRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_b2b_ResellerCreateCompaniesRequest,"{\"quantidade\":100}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("b2b:reseller-quantity-100")
stopifnot(inherits(x,"api1_b2b.ResellerCreateCompaniesRequest")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_b2b_ResellerCreateCompaniesRequest,"{\"quantidade\":101}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("b2b:reseller-quantity-101")
checked <- checked + 1L
x <- try(wm_from_json(api1_b2b_ResellerCreateCompaniesRequest,"{\"quantidade\":\"3\"}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("b2b:reseller-quantity-3-text")
checked <- checked + 1L
x <- try(wm_from_json(api1_b2b_ResellerCreateCompaniesRequest,"{\"quantidade\":1.5}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("b2b:reseller-quantity-1_5")
checked <- checked + 1L
x <- try(wm_from_json(api1_b2b_ResellerCreateCompaniesRequest,"{}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("b2b:reseller-quantity-required")
checked <- checked + 1L
x <- try(wm_from_json(api1_b2b_ResellerProcessedRequests,"{\"total_notas_processadas\":0,\"empresas\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("b2b:reseller-counts-empty-companies")
stopifnot(inherits(x,"api1_b2b.ResellerProcessedRequests")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_b2b_ResellerProcessedRequests,"{\"total_notas_processadas\":12,\"empresas\":[{\"cnpj\":\"00000000000000\",\"notas_processadas\":12}]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == TRUE) stop("b2b:reseller-counts-not-http-call-count")
stopifnot(inherits(x,"api1_b2b.ResellerProcessedRequests")); stopifnot(is.character(wm_to_json(x)));wm_close(x)
checked <- checked + 1L
x <- try(wm_from_json(api1_b2b_ResellerProcessedRequests,"{\"total_notas_processadas\":-1,\"empresas\":[]}",cfg),silent=TRUE)
if(inherits(x,"try-error") == FALSE) stop("b2b:reseller-counts-negative-invalid")
checked <- checked + 1L
wm_close(cfg)
cat("Nominal/semantic cases:",checked,"PASS\n")
