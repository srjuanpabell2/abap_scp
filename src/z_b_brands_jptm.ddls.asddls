@AbapCatalog.sqlViewName: 'ZV_BRANDS_JPTM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Brands'
define view z_b_brands_jptm
  as select from zrent_brands_jp
{
  key marca as Marca,
  @UI.hidden: true
      url   as Imagen
}
