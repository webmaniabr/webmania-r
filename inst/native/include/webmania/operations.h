/* Generated 103 named typed operations, six credential scopes. */
#ifndef WEBMANIA_OPERATIONS_H
#define WEBMANIA_OPERATIONS_H
#include "models.h"
#ifdef __cplusplus
extern "C" {
#endif
wm_status wm_nfe_get_certificate_validity(const wm_nfe_client *client,const wm_cancel *cancel,wm_api1_fiscal_nfe_certificate_validity **out,wm_error **error);
wm_status wm_nfe_get_sefaz_status(const wm_nfe_client *client,const wm_cancel *cancel,wm_api1_fiscal_nfe_sefaz_status **out,wm_error **error);
wm_status wm_nfe_get_document(const wm_nfe_client *client,const wm_api1_fiscal_nfe_get_document_query * query,const wm_cancel *cancel,wm_api1_fiscal_nfe_get_document_response **out,wm_error **error);
wm_status wm_nfe_query_document(const wm_nfe_client *client,const wm_api1_fiscal_nfe_lookup_request * body,const wm_cancel *cancel,wm_api1_fiscal_nfe_query_document_response **out,wm_error **error);
wm_status wm_nfe_create_correction(const wm_nfe_client *client,const wm_api1_fiscal_nfe_correction_request * body,const wm_cancel *cancel,wm_api1_fiscal_nfe_event_result **out,wm_error **error);
wm_status wm_nfe_create_manifestation(const wm_nfe_client *client,const wm_api1_fiscal_nfe_manifestation_request * body,const wm_cancel *cancel,wm_api1_fiscal_nfe_event_result **out,wm_error **error);
wm_status wm_nfe_cancel_document(const wm_nfe_client *client,const wm_api1_fiscal_nfe_cancel_request * body,const wm_cancel *cancel,wm_api1_fiscal_nfe_cancel_result **out,wm_error **error);
wm_status wm_nfe_void_numbering(const wm_nfe_client *client,const wm_api1_fiscal_nfe_void_request * body,const wm_cancel *cancel,wm_api1_fiscal_nfe_void_result **out,wm_error **error);
wm_status wm_nfe_create_payment_event(const wm_nfe_client *client,const wm_api1_fiscal_nfe_payment_event_request * body,const wm_cancel *cancel,wm_api1_fiscal_nfe_event_result **out,wm_error **error);
wm_status wm_nfe_cancel_payment_event(const wm_nfe_client *client,const wm_api1_fiscal_nfe_payment_event_cancel_request * body,const wm_cancel *cancel,wm_api1_fiscal_nfe_event_result **out,wm_error **error);
wm_status wm_nfe_cancel_ibs_cbs_event(const wm_nfe_client *client,const wm_api1_fiscal_nfe_ibs_cbs_event_cancel_request * body,const wm_cancel *cancel,wm_api1_fiscal_nfe_event_result **out,wm_error **error);
wm_status wm_nfe_list_tax_classes(const wm_nfe_client *client,const wm_cancel *cancel,wm_api1_fiscal_nfe_list_tax_classes_response **out,wm_error **error);
wm_status wm_nfe_delete_tax_classes(const wm_nfe_client *client,const wm_api1_fiscal_tax_class_delete_request * body,const wm_cancel *cancel,wm_array_api1_fiscal_api1_fiscal_tax_class_delete_item **out,wm_error **error);
wm_status wm_nfe_save_tax_classes(const wm_nfe_client *client,const wm_api1_fiscal_fiscal_tax_class_request * body,const wm_cancel *cancel,wm_api1_fiscal_tax_class_created_result **out,wm_error **error);
wm_status wm_nfe_issue_document(const wm_nfe_client *client,const wm_api1_fiscal_nfe_issue_request * body,const wm_cancel *cancel,wm_api1_fiscal_nfe_issue_result **out,wm_error **error);
wm_status wm_nfe_issue_return(const wm_nfe_client *client,const wm_api1_fiscal_nfe_return_request * body,const wm_cancel *cancel,wm_api1_fiscal_nfe_document **out,wm_error **error);
wm_status wm_nfe_issue_adjustment(const wm_nfe_client *client,const wm_api1_fiscal_nfe_adjustment_request * body,const wm_cancel *cancel,wm_api1_fiscal_nfe_document **out,wm_error **error);
wm_status wm_nfe_issue_complement(const wm_nfe_client *client,const wm_api1_fiscal_nfe_complement_request * body,const wm_cancel *cancel,wm_api1_fiscal_nfe_document **out,wm_error **error);
wm_status wm_fiscal_update_company(const wm_nfe_client *client,const wm_api1_fiscal_fiscal_company_update_request * body,const wm_cancel *cancel,wm_api1_fiscal_fiscal_company_update_result **out,wm_error **error);
wm_status wm_fiscal_create_or_poll_report(const wm_nfe_client *client,const wm_api1_fiscal_fiscal_report_request * body,const wm_cancel *cancel,wm_api1_fiscal_fiscal_report_result **out,wm_error **error);
wm_status wm_nfe_create_ibs_cbs_event(const wm_nfe_client *client,const wm_api1_fiscal_nfe_ibs_cbs_event_request * body,const wm_cancel *cancel,wm_api1_fiscal_nfe_event_result **out,wm_error **error);
wm_status wm_b2b_v1_create_companies(const wm_reseller_client *client,const wm_api1_b2b_reseller_create_companies_request * body,const wm_cancel *cancel,wm_array_api1_b2b_api1_b2b_reseller_created_company **out,wm_error **error);
wm_status wm_b2b_v1_list_companies(const wm_reseller_client *client,const wm_cancel *cancel,wm_array_api1_b2b_api1_b2b_reseller_company **out,wm_error **error);
wm_status wm_b2b_v1_get_processed_requests(const wm_reseller_client *client,const wm_api1_b2b_b2b_v1_get_processed_requests_query * query,const wm_cancel *cancel,wm_api1_b2b_reseller_processed_requests **out,wm_error **error);
wm_status wm_emitter_issue_cte(const wm_emitter_client *client,const wm_api2_cte_issuance_emitter_issue_cte_payload * body,const wm_cancel *cancel,wm_api2_cte_issuance_cte_fiscal_response **out,wm_error **error);
wm_status wm_emitter_issue_simplified_cte(const wm_emitter_client *client,const wm_api2_cte_issuance_emitter_issue_simplified_cte_payload * body,const wm_cancel *cancel,wm_api2_cte_issuance_cte_fiscal_response **out,wm_error **error);
wm_status wm_emitter_cancel_cte(const wm_emitter_client *client,const wm_api2_cte_issuance_emitter_cancel_cte_payload * body,const wm_cancel *cancel,wm_api2_cte_issuance_fiscal_event_response **out,wm_error **error);
wm_status wm_emitter_correct_cte(const wm_emitter_client *client,const wm_api2_cte_issuance_emitter_correct_cte_payload * body,const wm_cancel *cancel,wm_api2_cte_issuance_fiscal_event_response **out,wm_error **error);
wm_status wm_emitter_confirm_cte_delivery(const wm_emitter_client *client,const wm_api2_cte_issuance_emitter_confirm_cte_delivery_payload * body,const wm_cancel *cancel,wm_api2_cte_issuance_fiscal_event_response **out,wm_error **error);
wm_status wm_emitter_cancel_cte_delivery(const wm_emitter_client *client,const wm_api2_cte_issuance_emitter_cancel_cte_delivery_payload * body,const wm_cancel *cancel,wm_api2_cte_issuance_fiscal_event_response **out,wm_error **error);
wm_status wm_emitter_link_cte_payment(const wm_emitter_client *client,const wm_api2_cte_issuance_emitter_link_cte_payment_payload * body,const wm_cancel *cancel,wm_api2_cte_issuance_fiscal_event_response **out,wm_error **error);
wm_status wm_emitter_cancel_cte_payment_link(const wm_emitter_client *client,const wm_api2_cte_issuance_emitter_cancel_cte_payment_link_payload * body,const wm_cancel *cancel,wm_api2_cte_issuance_fiscal_event_response **out,wm_error **error);
wm_status wm_emitter_get_cte(const wm_emitter_client *client,const char *identifier,const wm_cancel *cancel,wm_api2_cte_issuance_cte_fiscal_response **out,wm_error **error);
wm_status wm_emitter_get_cte_payment_events(const wm_emitter_client *client,const char *identifier,const wm_cancel *cancel,wm_api2_cte_issuance_cte_payment_events **out,wm_error **error);
wm_status wm_emitter_issue_dce(const wm_emitter_client *client,const wm_api2_dce_issuance_emitter_issue_dce_payload * body,const wm_cancel *cancel,wm_api2_dce_issuance_dce_fiscal_response **out,wm_error **error);
wm_status wm_emitter_cancel_dce(const wm_emitter_client *client,const wm_api2_dce_issuance_emitter_cancel_dce_payload * body,const wm_cancel *cancel,wm_api2_dce_issuance_fiscal_event_response **out,wm_error **error);
wm_status wm_emitter_get_dce(const wm_emitter_client *client,const char *identifier,const wm_cancel *cancel,wm_api2_dce_issuance_dce_fiscal_response **out,wm_error **error);
wm_status wm_emitter_get_nfse_provider_status(const wm_emitter_client *client,const wm_api2_emitter_reads_emitter_get_nfse_provider_status_query * query,const wm_cancel *cancel,wm_api2_emitter_reads_nfse_provider_status **out,wm_error **error);
wm_status wm_emitter_get_nfcom_service_status(const wm_emitter_client *client,const wm_cancel *cancel,wm_api2_emitter_reads_nfcom_service_status **out,wm_error **error);
wm_status wm_emitter_get_nfse(const wm_emitter_client *client,const char *identifier,const wm_cancel *cancel,wm_api2_emitter_reads_nfse_fiscal_response **out,wm_error **error);
wm_status wm_emitter_get_nfcom(const wm_emitter_client *client,const char *identifier,const wm_cancel *cancel,wm_api2_emitter_reads_nfcom_fiscal_response **out,wm_error **error);
wm_status wm_emitter_get_nfcom_payment_events(const wm_emitter_client *client,const char *identifier,const wm_cancel *cancel,wm_api2_emitter_reads_nfcom_payment_events **out,wm_error **error);
wm_status wm_emitter_manifest_nfse(const wm_emitter_client *client,const wm_api2_emitter_reads_nfse_manifestation_request * body,const wm_cancel *cancel,wm_api2_emitter_reads_nfse_fiscal_response **out,wm_error **error);
wm_status wm_emitter_issue_mdfe(const wm_emitter_client *client,const wm_api2_mdfe_issuance_emitter_issue_mdfe_payload * body,const wm_cancel *cancel,wm_api2_mdfe_issuance_mdfe_fiscal_response **out,wm_error **error);
wm_status wm_emitter_close_mdfe(const wm_emitter_client *client,const wm_api2_mdfe_issuance_emitter_close_mdfe_payload * body,const wm_cancel *cancel,wm_api2_mdfe_issuance_fiscal_event_response **out,wm_error **error);
wm_status wm_emitter_cancel_mdfe(const wm_emitter_client *client,const wm_api2_mdfe_issuance_emitter_cancel_mdfe_payload * body,const wm_cancel *cancel,wm_api2_mdfe_issuance_fiscal_event_response **out,wm_error **error);
wm_status wm_emitter_add_mdfe_conductor(const wm_emitter_client *client,const wm_api2_mdfe_issuance_emitter_add_mdfe_conductor_payload * body,const wm_cancel *cancel,wm_api2_mdfe_issuance_fiscal_event_response **out,wm_error **error);
wm_status wm_emitter_get_mdfe(const wm_emitter_client *client,const char *key,const wm_cancel *cancel,wm_api2_mdfe_issuance_mdfe_fiscal_response **out,wm_error **error);
wm_status wm_emitter_issue_nfcom(const wm_emitter_client *client,const wm_api2_nfcom_issuance_emitter_issue_nfcom_payload * body,const wm_cancel *cancel,wm_api2_nfcom_issuance_nfcom_fiscal_response **out,wm_error **error);
wm_status wm_emitter_cancel_nfcom(const wm_emitter_client *client,const wm_api2_nfcom_issuance_emitter_cancel_nfcom_payload * body,const wm_cancel *cancel,wm_api2_nfcom_issuance_fiscal_event_response **out,wm_error **error);
wm_status wm_emitter_issue_nfse(const wm_emitter_client *client,const wm_api2_nfse_issuance_emitter_issue_nfse_payload * body,const wm_cancel *cancel,wm_api2_nfse_issuance_nfse_fiscal_response **out,wm_error **error);
wm_status wm_emitter_cancel_nfse(const wm_emitter_client *client,const wm_api2_nfse_issuance_emitter_cancel_nfse_payload * body,const wm_cancel *cancel,wm_api2_nfse_issuance_nfse_fiscal_response **out,wm_error **error);
wm_status wm_emitter_replace_nfse(const wm_emitter_client *client,const wm_api2_nfse_issuance_emitter_replace_nfse_payload * body,const wm_cancel *cancel,wm_api2_nfse_issuance_nfse_fiscal_response **out,wm_error **error);
wm_status wm_monitor_search_documents(const wm_monitor_client *client,const wm_api2_monitor_documents_monitor_search_request * body,const wm_api2_monitor_documents_monitor_search_documents_query * query,const wm_cancel *cancel,wm_api2_monitor_documents_monitor_search_documents_response **out,wm_error **error);
wm_status wm_monitor_get_document(const wm_monitor_client *client,const char *fd,const wm_api2_monitor_documents_monitor_get_document_query * query,const wm_cancel *cancel,wm_api2_monitor_documents_monitor_document **out,wm_error **error);
wm_status wm_monitor_list_document_events(const wm_monitor_client *client,const char *fd,const wm_cancel *cancel,wm_api2_monitor_documents_monitor_list_document_events_response **out,wm_error **error);
wm_status wm_monitor_manifest_document(const wm_monitor_client *client,const char *fd,const wm_api2_monitor_documents_monitor_manifestation_request * body,const wm_cancel *cancel,wm_api2_monitor_documents_monitor_event **out,wm_error **error);
wm_status wm_monitor_list_reports(const wm_monitor_client *client,const wm_api2_monitor_documents_monitor_list_reports_query * query,const wm_cancel *cancel,wm_api2_monitor_documents_monitor_report_page **out,wm_error **error);
wm_status wm_monitor_download_report(const wm_monitor_client *client,const char *report,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_monitor_import_document(const wm_monitor_client *client,const wm_api2_monitor_documents_monitor_import_request * body,const wm_cancel *cancel,wm_api2_monitor_documents_monitor_import_document_response **out,wm_error **error);
wm_status wm_monitor_get_import_status(const wm_monitor_client *client,const char *uuid,const wm_cancel *cancel,wm_api2_monitor_documents_monitor_import_status **out,wm_error **error);
wm_status wm_monitor_create_company(const wm_monitor_client *client,const wm_api2_monitor_management_monitor_create_company_request * body,const wm_cancel *cancel,wm_api2_monitor_management_monitor_company **out,wm_error **error);
wm_status wm_monitor_update_company(const wm_monitor_client *client,const char *company,const wm_api2_monitor_management_monitor_update_company_request * body,const wm_cancel *cancel,wm_api2_monitor_management_monitor_company **out,wm_error **error);
wm_status wm_monitor_create_company_municipality(const wm_monitor_client *client,const char *company,const wm_api2_monitor_management_monitor_create_municipality_request * body,const wm_cancel *cancel,wm_api2_monitor_management_monitor_municipality_registration **out,wm_error **error);
wm_status wm_monitor_update_company_municipality(const wm_monitor_client *client,const char *company,const char *download,const wm_api2_monitor_management_monitor_update_municipality_request * body,const wm_cancel *cancel,wm_api2_monitor_management_monitor_municipality_registration **out,wm_error **error);
wm_status wm_monitor_delete_company_municipality(const wm_monitor_client *client,const char *company,const char *download,const wm_cancel *cancel,wm_api2_monitor_management_monitor_delete_company_municipality_response **out,wm_error **error);
wm_status wm_monitor_list_companies(const wm_monitor_client *client,const wm_api2_monitor_reads_monitor_list_companies_query * query,const wm_cancel *cancel,wm_api2_monitor_reads_monitor_company_page **out,wm_error **error);
wm_status wm_monitor_get_company(const wm_monitor_client *client,const char *company,const wm_cancel *cancel,wm_api2_monitor_reads_monitor_company **out,wm_error **error);
wm_status wm_monitor_list_company_municipalities(const wm_monitor_client *client,const char *company,const wm_api2_monitor_reads_monitor_list_company_municipalities_query * query,const wm_cancel *cancel,wm_api2_monitor_reads_monitor_municipality_page **out,wm_error **error);
wm_status wm_monitor_get_company_municipality(const wm_monitor_client *client,const char *company,const char *download,const wm_cancel *cancel,wm_api2_monitor_reads_monitor_municipality_registration **out,wm_error **error);
wm_status wm_monitor_list_available_municipalities(const wm_monitor_client *client,const wm_api2_monitor_reads_monitor_list_available_municipalities_query * query,const wm_cancel *cancel,wm_api2_monitor_reads_monitor_list_available_municipalities_response **out,wm_error **error);
wm_status wm_monitor_get_download_statistics(const wm_monitor_client *client,const wm_api2_monitor_reads_monitor_get_download_statistics_query * query,const wm_cancel *cancel,wm_api2_monitor_reads_monitor_download_statistics **out,wm_error **error);
wm_status wm_nfe_download_danfe(const wm_nfe_files_client *client,const char *identifier,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_nfe_download_simple_danfe(const wm_nfe_files_client *client,const char *identifier,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_nfe_download_label_danfe(const wm_nfe_files_client *client,const char *identifier,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_nfe_download_correction_pdf(const wm_nfe_files_client *client,const char *identifier,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_nfe_download_correction_pdf_sequence(const wm_nfe_files_client *client,const char *identifier,int64_t event,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_nfe_download_xml(const wm_nfe_files_client *client,const char *identifier,const wm_api1_files_nfe_download_xml_query * query,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_nfe_download_cancellation_xml(const wm_nfe_files_client *client,const char *identifier,const wm_api1_files_nfe_download_cancellation_xml_query * query,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_nfe_download_correction_xml(const wm_nfe_files_client *client,const char *identifier,const wm_api1_files_nfe_download_correction_xml_query * query,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_nfe_download_correction_xml_sequence(const wm_nfe_files_client *client,const char *identifier,int64_t event,const wm_api1_files_nfe_download_correction_xml_sequence_query * query,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_nfe_download_manifestation_xml(const wm_nfe_files_client *client,const char *uuid,const wm_api1_files_nfe_download_manifestation_xml_query * query,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_nfe_download_payment_event_xml(const wm_nfe_files_client *client,const char *identifier,const wm_api1_files_nfe_download_payment_event_xml_query * query,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_nfe_download_payment_event_xml_sequence(const wm_nfe_files_client *client,const char *identifier,int64_t event,const wm_api1_files_nfe_download_payment_event_xml_sequence_query * query,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_nfe_download_ibs_cbs_event_xml(const wm_nfe_files_client *client,const char *uuid,const wm_api1_files_nfe_download_ibs_cbs_event_xml_query * query,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_fiscal_download_report(const wm_nfe_files_client *client,const char *uuid,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_file_get_nfse_xml(const wm_emitter_files_client *client,const char *identifier,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_file_get_nfse_pdf(const wm_emitter_files_client *client,const char *identifier,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_or_redirect **out,wm_error **error);
wm_status wm_file_get_nfse_rps_pdf(const wm_emitter_files_client *client,const char *identifier,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_file_get_cte_xml(const wm_emitter_files_client *client,const char *identifier,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_file_get_cte_cancel_xml(const wm_emitter_files_client *client,const char *identifier,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_file_get_cte_pdf(const wm_emitter_files_client *client,const char *identifier,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_file_get_cte_correction_xml(const wm_emitter_files_client *client,const char *identifier,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_file_get_cte_correction_pdf(const wm_emitter_files_client *client,const char *identifier,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_file_get_mdfe_xml(const wm_emitter_files_client *client,const char *identifier,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_file_get_mdfe_pdf(const wm_emitter_files_client *client,const char *identifier,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_file_get_nfcom_xml(const wm_emitter_files_client *client,const char *identifier,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_file_get_nfcom_cancel_xml(const wm_emitter_files_client *client,const char *identifier,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_file_get_nfcom_pdf(const wm_emitter_files_client *client,const char *identifier,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_file_get_dce_xml(const wm_emitter_files_client *client,const char *identifier,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_file_get_dce_cancel_xml(const wm_emitter_files_client *client,const char *identifier,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_file_get_dce_pdf(const wm_emitter_files_client *client,const char *identifier,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
wm_status wm_fiscal_download_report_v2(const wm_emitter_files_client *client,const char *uuid,const wm_file_auth *auth,const wm_cancel *cancel,wm_file_response **out,wm_error **error);
#ifdef __cplusplus
}
#endif
#endif
