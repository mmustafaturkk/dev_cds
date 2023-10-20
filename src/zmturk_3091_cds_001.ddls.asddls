@AbapCatalog.sqlViewName: 'ZMTURK_3091_V001'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Örnek'
define view ZMTURK_3091_CDS_001
  as select from    mara
    left outer join makt on makt.matnr = mara.matnr
                        and makt.spras = $session.system_language
{
  mara.matnr,
  makt.maktx
}
