@AbapCatalog.sqlViewName: 'ZV_DET_CUST_JPTM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Details customers'
@Metadata.allowExtensions: true
define view z_b_det_customers_jptm
  as select from zrent_cust_jp
{
  key doc_id    as ID,
  key matricula as Matricula,
      nombre    as Nombre,
      apellidos as Apellidos,
      email     as Email,
      cntr_type as TipoContrato
}
