@AbapCatalog.sqlViewName: 'ZV_REM_DAYS_JPTM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Remaining days'
define view z_b_rem_days_jptm
  as select from zrent_cars_jp
{
  key matricula as Matricula,
      marca     as marca,
      case
      when alq_hasta <> ''
      then dats_days_between( cast($session.system_date as abap.dats), alq_hasta)
      end       as Dias
}
