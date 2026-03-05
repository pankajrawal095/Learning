@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@EndUserText.label: 'Draft query view for ZRAP_ATRAV_D'
define root view entity YI_Pankaj_tRAVEL_d
  as select from zrap_atrav_d
{
  key traveluuid as TravelUuid,
  travelid as TravelId,
  agencyid as AgencyId,
  customerid as CustomerId,
  begindate as BeginDate,
  enddate as EndDate,
  bookingfee as BookingFee,
  totalprice as TotalPrice,
  currencycode as CurrencyCode,
  description as Description,
  overallstatus as OverallStatus,
  createdby as CreatedBy,
  createdat as CreatedAt,
  lastchangedby as LastChangedBy,
  lastchangedat as LastChangedAt,
  locallastchangedat as LocalLastChangedAt,
  draftentitycreationdatetime as draftentitycreationdatetime,
  draftentitylastchangedatetime as draftentitylastchangedatetime,
  draftadministrativedatauuid as draftadministrativedatauuid,
  draftentityoperationcode as draftentityoperationcode,
  hasactiveentity as hasactiveentity,
  draftfieldchanges as draftfieldchanges
}
