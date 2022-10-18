import 'dart:convert';

AccountModel accountModelFromJson(String str) => AccountModel.fromJson(json.decode(str));

String accountModelToJson(List<AccountModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AccountModel {
  String? odataContext;
  List<Value>? value;

  AccountModel({this.odataContext, this.value});

  AccountModel.fromJson(Map<String, dynamic> json) {
    odataContext = json['@odata.context'];
    if (json['value'] != null) {
      value = <Value>[];
      json['value'].forEach((v) {
        value!.add(new Value.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['@odata.context'] = this.odataContext;
    if (this.value != null) {
      data['value'] = this.value!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Value {
  String? odataEtag;
  int? customertypecode;
  double? address1Latitude;
  bool? merged;
  String? accountnumber;
  int? statecode;
  String? emailaddress1;
  int? exchangerate;
  int? openrevenueState;
  String? name;
  int? opendeals;
  String? modifiedon;
  int? address2Addresstypecode;
  String? sOwninguserValue;
  int? importsequencenumber;
  String? address1Composite;
  double? address1Longitude;
  bool? donotpostalmail;
  int? accountratingcode;
  bool? marketingonly;
  bool? donotphone;
  int? preferredcontactmethodcode;
  String? sOwneridValue;
  int? customersizecode;
  String? openrevenueDate;
  int? openrevenueBase;
  int? businesstypecode;
  bool? donotemail;
  int? address2Shippingmethodcode;
  String? address1Addressid;
  bool? msdynGdproptout;
  int? address2Freighttermscode;
  int? statuscode;
  String? createdon;
  int? msdynTravelchargetype;
  int? opendealsState;
  String? address1Stateorprovince;
  int? openrevenue;
  bool? donotsendmm;
  bool? donotfax;
  bool? donotbulkpostalmail;
  String? address1Country;
  int? versionnumber;
  String? address1Line1;
  bool? creditonhold;
  String? telephone1;
  String? sTransactioncurrencyidValue;
  String? accountid;
  bool? donotbulkemail;
  String? sModifiedbyValue;
  bool? followemail;
  int? shippingmethodcode;
  int? address1Freighttermscode;
  String? sCreatedbyValue;
  String? address1City;
  int? territorycode;
  String? sMsdynServiceterritoryValue;
  int? ownershipcode;
  String? fax;
  bool? msdynTaxexempt;
  bool? participatesinworkflow;
  int? accountclassificationcode;
  String? sOwningbusinessunitValue;
  String? address2Addressid;
  String? address1Postalcode;
  String? sDefaultpricelevelidValue;
  String? opendealsDate;
  Null? telephone3;
  Null? address1Shippingmethodcode;
  Null? sharesoutstanding;
  Null? nPreferredequipmentidValue;
  Null? address1Upszone;
  String? websiteurl;
  Null? address2City;
  Null? nSlainvokedidValue;
  Null? address1Postofficebox;
  Null? preferredappointmentdaycode;
  Null? utcconversiontimezonecode;
  Null? overriddencreatedon;
  Null? aging90;
  Null? nMsdynBillingaccountValue;
  Null? stageid;
  Null? address1Utcoffset;
  Null? nMasteridValue;
  Null? lastonholdtime;
  Null? address2Fax;
  String? msdynWorkorderinstructions;
  Null? msdynTaxexemptnumber;
  Null? nMsdynSalestaxcodeValue;
  Null? address2Line1;
  Null? address1Telephone3;
  Null? address1Telephone2;
  Null? address1Telephone1;
  Null? address2Postofficebox;
  Null? nPrimarycontactidValue;
  Null? emailaddress2;
  Null? ftpsiteurl;
  Null? address2Latitude;
  Null? processid;
  Null? emailaddress3;
  Null? address2Composite;
  Null? nMsdynPreferredresourceValue;
  Null? traversedpath;
  Null? address2Line2;
  Null? aging30Base;
  int? numberofemployees;
  Null? teamsfollowed;
  Null? address1Addresstypecode;
  Null? address2Stateorprovince;
  Null? address2Postalcode;
  Null? entityimageUrl;
  Null? aging60;
  Null? timezoneruleversionnumber;
  Null? address2Telephone3;
  Null? address2Telephone2;
  Null? address2Telephone1;
  Null? address2Upszone;
  Null? nOwningteamValue;
  Null? primarysatoriid;
  Null? address2Line3;
  Null? timespentbymeonemailandmeetings;
  Null? address2Longitude;
  Null? nModifiedonbehalfbyValue;
  int? revenueBase;
  Null? creditlimit;
  Null? address1Line2;
  Null? paymenttermscode;
  Null? msdynTravelchargeBase;
  Null? address1County;
  Null? nTerritoryidValue;
  Null? marketcap;
  Null? nPreferredsystemuseridValue;
  Null? preferredappointmenttimecode;
  Null? address1Fax;
  Null? nCreatedonbehalfbyValue;
  Null? address2Name;
  Null? creditlimitBase;
  Null? marketcapBase;
  Null? address2Utcoffset;
  Null? nModifiedbyexternalpartyValue;
  Null? nOriginatingleadidValue;
  Null? sic;
  Null? nPreferredserviceidValue;
  Null? nSlaidValue;
  Null? address2County;
  Null? aging30;
  Null? address1Line3;
  Null? industrycode;
  Null? onholdtime;
  Null? nCreatedbyexternalpartyValue;
  Null? entityimageTimestamp;
  Null? entityimageid;
  Null? nParentaccountidValue;
  Null? yominame;
  Null? lastusedincampaign;
  Null? nMsdynSegmentidValue;
  Null? accountcategorycode;
  Null? primarytwitterid;
  Null? telephone2;
  Null? stockexchange;
  int? revenue;
  Null? description;
  Null? nMsdynSalesaccelerationinsightidValue;
  Null? aging90Base;
  Null? tickersymbol;
  Null? address1Name;
  Null? msdynTravelcharge;
  Null? address1Primarycontactname;
  Null? address2Primarycontactname;
  Null? entityimage;
  Null? nMsdynWorkhourtemplateValue;
  Null? aging60Base;
  Null? address2Country;

  Value(
      {this.odataEtag,
        this.customertypecode,
        this.address1Latitude,
        this.merged,
        this.accountnumber,
        this.statecode,
        this.emailaddress1,
        this.exchangerate,
        this.openrevenueState,
        this.name,
        this.opendeals,
        this.modifiedon,
        this.address2Addresstypecode,
        this.sOwninguserValue,
        this.importsequencenumber,
        this.address1Composite,
        this.address1Longitude,
        this.donotpostalmail,
        this.accountratingcode,
        this.marketingonly,
        this.donotphone,
        this.preferredcontactmethodcode,
        this.sOwneridValue,
        this.customersizecode,
        this.openrevenueDate,
        this.openrevenueBase,
        this.businesstypecode,
        this.donotemail,
        this.address2Shippingmethodcode,
        this.address1Addressid,
        this.msdynGdproptout,
        this.address2Freighttermscode,
        this.statuscode,
        this.createdon,
        this.msdynTravelchargetype,
        this.opendealsState,
        this.address1Stateorprovince,
        this.openrevenue,
        this.donotsendmm,
        this.donotfax,
        this.donotbulkpostalmail,
        this.address1Country,
        this.versionnumber,
        this.address1Line1,
        this.creditonhold,
        this.telephone1,
        this.sTransactioncurrencyidValue,
        this.accountid,
        this.donotbulkemail,
        this.sModifiedbyValue,
        this.followemail,
        this.shippingmethodcode,
        this.address1Freighttermscode,
        this.sCreatedbyValue,
        this.address1City,
        this.territorycode,
        this.sMsdynServiceterritoryValue,
        this.ownershipcode,
        this.fax,
        this.msdynTaxexempt,
        this.participatesinworkflow,
        this.accountclassificationcode,
        this.sOwningbusinessunitValue,
        this.address2Addressid,
        this.address1Postalcode,
        this.sDefaultpricelevelidValue,
        this.opendealsDate,
        this.telephone3,
        this.address1Shippingmethodcode,
        this.sharesoutstanding,
        this.nPreferredequipmentidValue,
        this.address1Upszone,
        this.websiteurl,
        this.address2City,
        this.nSlainvokedidValue,
        this.address1Postofficebox,
        this.preferredappointmentdaycode,
        this.utcconversiontimezonecode,
        this.overriddencreatedon,
        this.aging90,
        this.nMsdynBillingaccountValue,
        this.stageid,
        this.address1Utcoffset,
        this.nMasteridValue,
        this.lastonholdtime,
        this.address2Fax,
        this.msdynWorkorderinstructions,
        this.msdynTaxexemptnumber,
        this.nMsdynSalestaxcodeValue,
        this.address2Line1,
        this.address1Telephone3,
        this.address1Telephone2,
        this.address1Telephone1,
        this.address2Postofficebox,
        this.nPrimarycontactidValue,
        this.emailaddress2,
        this.ftpsiteurl,
        this.address2Latitude,
        this.processid,
        this.emailaddress3,
        this.address2Composite,
        this.nMsdynPreferredresourceValue,
        this.traversedpath,
        this.address2Line2,
        this.aging30Base,
        this.numberofemployees,
        this.teamsfollowed,
        this.address1Addresstypecode,
        this.address2Stateorprovince,
        this.address2Postalcode,
        this.entityimageUrl,
        this.aging60,
        this.timezoneruleversionnumber,
        this.address2Telephone3,
        this.address2Telephone2,
        this.address2Telephone1,
        this.address2Upszone,
        this.nOwningteamValue,
        this.primarysatoriid,
        this.address2Line3,
        this.timespentbymeonemailandmeetings,
        this.address2Longitude,
        this.nModifiedonbehalfbyValue,
        this.revenueBase,
        this.creditlimit,
        this.address1Line2,
        this.paymenttermscode,
        this.msdynTravelchargeBase,
        this.address1County,
        this.nTerritoryidValue,
        this.marketcap,
        this.nPreferredsystemuseridValue,
        this.preferredappointmenttimecode,
        this.address1Fax,
        this.nCreatedonbehalfbyValue,
        this.address2Name,
        this.creditlimitBase,
        this.marketcapBase,
        this.address2Utcoffset,
        this.nModifiedbyexternalpartyValue,
        this.nOriginatingleadidValue,
        this.sic,
        this.nPreferredserviceidValue,
        this.nSlaidValue,
        this.address2County,
        this.aging30,
        this.address1Line3,
        this.industrycode,
        this.onholdtime,
        this.nCreatedbyexternalpartyValue,
        this.entityimageTimestamp,
        this.entityimageid,
        this.nParentaccountidValue,
        this.yominame,
        this.lastusedincampaign,
        this.nMsdynSegmentidValue,
        this.accountcategorycode,
        this.primarytwitterid,
        this.telephone2,
        this.stockexchange,
        this.revenue,
        this.description,
        this.nMsdynSalesaccelerationinsightidValue,
        this.aging90Base,
        this.tickersymbol,
        this.address1Name,
        this.msdynTravelcharge,
        this.address1Primarycontactname,
        this.address2Primarycontactname,
        this.entityimage,
        this.nMsdynWorkhourtemplateValue,
        this.aging60Base,
        this.address2Country});

  Value.fromJson(Map<String, dynamic> json) {
    odataEtag = json['@odata.etag'];
    customertypecode = json['customertypecode'];
    address1Latitude = json['address1_latitude'];
    merged = json['merged'];
    accountnumber = json['accountnumber'];
    statecode = json['statecode'];
    emailaddress1 = json['emailaddress1'];
    exchangerate = json['exchangerate'];
    openrevenueState = json['openrevenue_state'];
    name = json['name'];
    opendeals = json['opendeals'];
    modifiedon = json['modifiedon'];
    address2Addresstypecode = json['address2_addresstypecode'];
    sOwninguserValue = json['_owninguser_value'];
    importsequencenumber = json['importsequencenumber'];
    address1Composite = json['address1_composite'];
    address1Longitude = json['address1_longitude'];
    donotpostalmail = json['donotpostalmail'];
    accountratingcode = json['accountratingcode'];
    marketingonly = json['marketingonly'];
    donotphone = json['donotphone'];
    preferredcontactmethodcode = json['preferredcontactmethodcode'];
    sOwneridValue = json['_ownerid_value'];
    customersizecode = json['customersizecode'];
    openrevenueDate = json['openrevenue_date'];
    openrevenueBase = json['openrevenue_base'];
    businesstypecode = json['businesstypecode'];
    donotemail = json['donotemail'];
    address2Shippingmethodcode = json['address2_shippingmethodcode'];
    address1Addressid = json['address1_addressid'];
    msdynGdproptout = json['msdyn_gdproptout'];
    address2Freighttermscode = json['address2_freighttermscode'];
    statuscode = json['statuscode'];
    createdon = json['createdon'];
    msdynTravelchargetype = json['msdyn_travelchargetype'];
    opendealsState = json['opendeals_state'];
    address1Stateorprovince = json['address1_stateorprovince'];
    openrevenue = json['openrevenue'];
    donotsendmm = json['donotsendmm'];
    donotfax = json['donotfax'];
    donotbulkpostalmail = json['donotbulkpostalmail'];
    address1Country = json['address1_country'];
    versionnumber = json['versionnumber'];
    address1Line1 = json['address1_line1'];
    creditonhold = json['creditonhold'];
    telephone1 = json['telephone1'];
    sTransactioncurrencyidValue = json['_transactioncurrencyid_value'];
    accountid = json['accountid'];
    donotbulkemail = json['donotbulkemail'];
    sModifiedbyValue = json['_modifiedby_value'];
    followemail = json['followemail'];
    shippingmethodcode = json['shippingmethodcode'];
    address1Freighttermscode = json['address1_freighttermscode'];
    sCreatedbyValue = json['_createdby_value'];
    address1City = json['address1_city'];
    territorycode = json['territorycode'];
    sMsdynServiceterritoryValue = json['_msdyn_serviceterritory_value'];
    ownershipcode = json['ownershipcode'];
    fax = json['fax'];
    msdynTaxexempt = json['msdyn_taxexempt'];
    participatesinworkflow = json['participatesinworkflow'];
    accountclassificationcode = json['accountclassificationcode'];
    sOwningbusinessunitValue = json['_owningbusinessunit_value'];
    address2Addressid = json['address2_addressid'];
    address1Postalcode = json['address1_postalcode'];
    sDefaultpricelevelidValue = json['_defaultpricelevelid_value'];
    opendealsDate = json['opendeals_date'];
    telephone3 = json['telephone3'];
    address1Shippingmethodcode = json['address1_shippingmethodcode'];
    sharesoutstanding = json['sharesoutstanding'];
    nPreferredequipmentidValue = json['_preferredequipmentid_value'];
    address1Upszone = json['address1_upszone'];
    websiteurl = json['websiteurl'];
    address2City = json['address2_city'];
    nSlainvokedidValue = json['_slainvokedid_value'];
    address1Postofficebox = json['address1_postofficebox'];
    preferredappointmentdaycode = json['preferredappointmentdaycode'];
    utcconversiontimezonecode = json['utcconversiontimezonecode'];
    overriddencreatedon = json['overriddencreatedon'];
    aging90 = json['aging90'];
    nMsdynBillingaccountValue = json['_msdyn_billingaccount_value'];
    stageid = json['stageid'];
    address1Utcoffset = json['address1_utcoffset'];
    nMasteridValue = json['_masterid_value'];
    lastonholdtime = json['lastonholdtime'];
    address2Fax = json['address2_fax'];
    msdynWorkorderinstructions = json['msdyn_workorderinstructions'];
    msdynTaxexemptnumber = json['msdyn_taxexemptnumber'];
    nMsdynSalestaxcodeValue = json['_msdyn_salestaxcode_value'];
    address2Line1 = json['address2_line1'];
    address1Telephone3 = json['address1_telephone3'];
    address1Telephone2 = json['address1_telephone2'];
    address1Telephone1 = json['address1_telephone1'];
    address2Postofficebox = json['address2_postofficebox'];
    nPrimarycontactidValue = json['_primarycontactid_value'];
    emailaddress2 = json['emailaddress2'];
    ftpsiteurl = json['ftpsiteurl'];
    address2Latitude = json['address2_latitude'];
    processid = json['processid'];
    emailaddress3 = json['emailaddress3'];
    address2Composite = json['address2_composite'];
    nMsdynPreferredresourceValue = json['_msdyn_preferredresource_value'];
    traversedpath = json['traversedpath'];
    address2Line2 = json['address2_line2'];
    aging30Base = json['aging30_base'];
    numberofemployees = json['numberofemployees'];
    teamsfollowed = json['teamsfollowed'];
    address1Addresstypecode = json['address1_addresstypecode'];
    address2Stateorprovince = json['address2_stateorprovince'];
    address2Postalcode = json['address2_postalcode'];
    entityimageUrl = json['entityimage_url'];
    aging60 = json['aging60'];
    timezoneruleversionnumber = json['timezoneruleversionnumber'];
    address2Telephone3 = json['address2_telephone3'];
    address2Telephone2 = json['address2_telephone2'];
    address2Telephone1 = json['address2_telephone1'];
    address2Upszone = json['address2_upszone'];
    nOwningteamValue = json['_owningteam_value'];
    primarysatoriid = json['primarysatoriid'];
    address2Line3 = json['address2_line3'];
    timespentbymeonemailandmeetings = json['timespentbymeonemailandmeetings'];
    address2Longitude = json['address2_longitude'];
    nModifiedonbehalfbyValue = json['_modifiedonbehalfby_value'];
    revenueBase = json['revenue_base'];
    creditlimit = json['creditlimit'];
    address1Line2 = json['address1_line2'];
    paymenttermscode = json['paymenttermscode'];
    msdynTravelchargeBase = json['msdyn_travelcharge_base'];
    address1County = json['address1_county'];
    nTerritoryidValue = json['_territoryid_value'];
    marketcap = json['marketcap'];
    nPreferredsystemuseridValue = json['_preferredsystemuserid_value'];
    preferredappointmenttimecode = json['preferredappointmenttimecode'];
    address1Fax = json['address1_fax'];
    nCreatedonbehalfbyValue = json['_createdonbehalfby_value'];
    address2Name = json['address2_name'];
    creditlimitBase = json['creditlimit_base'];
    marketcapBase = json['marketcap_base'];
    address2Utcoffset = json['address2_utcoffset'];
    nModifiedbyexternalpartyValue = json['_modifiedbyexternalparty_value'];
    nOriginatingleadidValue = json['_originatingleadid_value'];
    sic = json['sic'];
    nPreferredserviceidValue = json['_preferredserviceid_value'];
    nSlaidValue = json['_slaid_value'];
    address2County = json['address2_county'];
    aging30 = json['aging30'];
    address1Line3 = json['address1_line3'];
    industrycode = json['industrycode'];
    onholdtime = json['onholdtime'];
    nCreatedbyexternalpartyValue = json['_createdbyexternalparty_value'];
    entityimageTimestamp = json['entityimage_timestamp'];
    entityimageid = json['entityimageid'];
    nParentaccountidValue = json['_parentaccountid_value'];
    yominame = json['yominame'];
    lastusedincampaign = json['lastusedincampaign'];
    nMsdynSegmentidValue = json['_msdyn_segmentid_value'];
    accountcategorycode = json['accountcategorycode'];
    primarytwitterid = json['primarytwitterid'];
    telephone2 = json['telephone2'];
    stockexchange = json['stockexchange'];
    revenue = json['revenue'];
    description = json['description'];
    nMsdynSalesaccelerationinsightidValue =
    json['_msdyn_salesaccelerationinsightid_value'];
    aging90Base = json['aging90_base'];
    tickersymbol = json['tickersymbol'];
    address1Name = json['address1_name'];
    msdynTravelcharge = json['msdyn_travelcharge'];
    address1Primarycontactname = json['address1_primarycontactname'];
    address2Primarycontactname = json['address2_primarycontactname'];
    entityimage = json['entityimage'];
    nMsdynWorkhourtemplateValue = json['_msdyn_workhourtemplate_value'];
    aging60Base = json['aging60_base'];
    address2Country = json['address2_country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['@odata.etag'] = this.odataEtag;
    data['customertypecode'] = this.customertypecode;
    data['address1_latitude'] = this.address1Latitude;
    data['merged'] = this.merged;
    data['accountnumber'] = this.accountnumber;
    data['statecode'] = this.statecode;
    data['emailaddress1'] = this.emailaddress1;
    data['exchangerate'] = this.exchangerate;
    data['openrevenue_state'] = this.openrevenueState;
    data['name'] = this.name;
    data['opendeals'] = this.opendeals;
    data['modifiedon'] = this.modifiedon;
    data['address2_addresstypecode'] = this.address2Addresstypecode;
    data['_owninguser_value'] = this.sOwninguserValue;
    data['importsequencenumber'] = this.importsequencenumber;
    data['address1_composite'] = this.address1Composite;
    data['address1_longitude'] = this.address1Longitude;
    data['donotpostalmail'] = this.donotpostalmail;
    data['accountratingcode'] = this.accountratingcode;
    data['marketingonly'] = this.marketingonly;
    data['donotphone'] = this.donotphone;
    data['preferredcontactmethodcode'] = this.preferredcontactmethodcode;
    data['_ownerid_value'] = this.sOwneridValue;
    data['customersizecode'] = this.customersizecode;
    data['openrevenue_date'] = this.openrevenueDate;
    data['openrevenue_base'] = this.openrevenueBase;
    data['businesstypecode'] = this.businesstypecode;
    data['donotemail'] = this.donotemail;
    data['address2_shippingmethodcode'] = this.address2Shippingmethodcode;
    data['address1_addressid'] = this.address1Addressid;
    data['msdyn_gdproptout'] = this.msdynGdproptout;
    data['address2_freighttermscode'] = this.address2Freighttermscode;
    data['statuscode'] = this.statuscode;
    data['createdon'] = this.createdon;
    data['msdyn_travelchargetype'] = this.msdynTravelchargetype;
    data['opendeals_state'] = this.opendealsState;
    data['address1_stateorprovince'] = this.address1Stateorprovince;
    data['openrevenue'] = this.openrevenue;
    data['donotsendmm'] = this.donotsendmm;
    data['donotfax'] = this.donotfax;
    data['donotbulkpostalmail'] = this.donotbulkpostalmail;
    data['address1_country'] = this.address1Country;
    data['versionnumber'] = this.versionnumber;
    data['address1_line1'] = this.address1Line1;
    data['creditonhold'] = this.creditonhold;
    data['telephone1'] = this.telephone1;
    data['_transactioncurrencyid_value'] = this.sTransactioncurrencyidValue;
    data['accountid'] = this.accountid;
    data['donotbulkemail'] = this.donotbulkemail;
    data['_modifiedby_value'] = this.sModifiedbyValue;
    data['followemail'] = this.followemail;
    data['shippingmethodcode'] = this.shippingmethodcode;
    data['address1_freighttermscode'] = this.address1Freighttermscode;
    data['_createdby_value'] = this.sCreatedbyValue;
    data['address1_city'] = this.address1City;
    data['territorycode'] = this.territorycode;
    data['_msdyn_serviceterritory_value'] = this.sMsdynServiceterritoryValue;
    data['ownershipcode'] = this.ownershipcode;
    data['fax'] = this.fax;
    data['msdyn_taxexempt'] = this.msdynTaxexempt;
    data['participatesinworkflow'] = this.participatesinworkflow;
    data['accountclassificationcode'] = this.accountclassificationcode;
    data['_owningbusinessunit_value'] = this.sOwningbusinessunitValue;
    data['address2_addressid'] = this.address2Addressid;
    data['address1_postalcode'] = this.address1Postalcode;
    data['_defaultpricelevelid_value'] = this.sDefaultpricelevelidValue;
    data['opendeals_date'] = this.opendealsDate;
    data['telephone3'] = this.telephone3;
    data['address1_shippingmethodcode'] = this.address1Shippingmethodcode;
    data['sharesoutstanding'] = this.sharesoutstanding;
    data['_preferredequipmentid_value'] = this.nPreferredequipmentidValue;
    data['address1_upszone'] = this.address1Upszone;
    data['websiteurl'] = this.websiteurl;
    data['address2_city'] = this.address2City;
    data['_slainvokedid_value'] = this.nSlainvokedidValue;
    data['address1_postofficebox'] = this.address1Postofficebox;
    data['preferredappointmentdaycode'] = this.preferredappointmentdaycode;
    data['utcconversiontimezonecode'] = this.utcconversiontimezonecode;
    data['overriddencreatedon'] = this.overriddencreatedon;
    data['aging90'] = this.aging90;
    data['_msdyn_billingaccount_value'] = this.nMsdynBillingaccountValue;
    data['stageid'] = this.stageid;
    data['address1_utcoffset'] = this.address1Utcoffset;
    data['_masterid_value'] = this.nMasteridValue;
    data['lastonholdtime'] = this.lastonholdtime;
    data['address2_fax'] = this.address2Fax;
    data['msdyn_workorderinstructions'] = this.msdynWorkorderinstructions;
    data['msdyn_taxexemptnumber'] = this.msdynTaxexemptnumber;
    data['_msdyn_salestaxcode_value'] = this.nMsdynSalestaxcodeValue;
    data['address2_line1'] = this.address2Line1;
    data['address1_telephone3'] = this.address1Telephone3;
    data['address1_telephone2'] = this.address1Telephone2;
    data['address1_telephone1'] = this.address1Telephone1;
    data['address2_postofficebox'] = this.address2Postofficebox;
    data['_primarycontactid_value'] = this.nPrimarycontactidValue;
    data['emailaddress2'] = this.emailaddress2;
    data['ftpsiteurl'] = this.ftpsiteurl;
    data['address2_latitude'] = this.address2Latitude;
    data['processid'] = this.processid;
    data['emailaddress3'] = this.emailaddress3;
    data['address2_composite'] = this.address2Composite;
    data['_msdyn_preferredresource_value'] = this.nMsdynPreferredresourceValue;
    data['traversedpath'] = this.traversedpath;
    data['address2_line2'] = this.address2Line2;
    data['aging30_base'] = this.aging30Base;
    data['numberofemployees'] = this.numberofemployees;
    data['teamsfollowed'] = this.teamsfollowed;
    data['address1_addresstypecode'] = this.address1Addresstypecode;
    data['address2_stateorprovince'] = this.address2Stateorprovince;
    data['address2_postalcode'] = this.address2Postalcode;
    data['entityimage_url'] = this.entityimageUrl;
    data['aging60'] = this.aging60;
    data['timezoneruleversionnumber'] = this.timezoneruleversionnumber;
    data['address2_telephone3'] = this.address2Telephone3;
    data['address2_telephone2'] = this.address2Telephone2;
    data['address2_telephone1'] = this.address2Telephone1;
    data['address2_upszone'] = this.address2Upszone;
    data['_owningteam_value'] = this.nOwningteamValue;
    data['primarysatoriid'] = this.primarysatoriid;
    data['address2_line3'] = this.address2Line3;
    data['timespentbymeonemailandmeetings'] =
        this.timespentbymeonemailandmeetings;
    data['address2_longitude'] = this.address2Longitude;
    data['_modifiedonbehalfby_value'] = this.nModifiedonbehalfbyValue;
    data['revenue_base'] = this.revenueBase;
    data['creditlimit'] = this.creditlimit;
    data['address1_line2'] = this.address1Line2;
    data['paymenttermscode'] = this.paymenttermscode;
    data['msdyn_travelcharge_base'] = this.msdynTravelchargeBase;
    data['address1_county'] = this.address1County;
    data['_territoryid_value'] = this.nTerritoryidValue;
    data['marketcap'] = this.marketcap;
    data['_preferredsystemuserid_value'] = this.nPreferredsystemuseridValue;
    data['preferredappointmenttimecode'] = this.preferredappointmenttimecode;
    data['address1_fax'] = this.address1Fax;
    data['_createdonbehalfby_value'] = this.nCreatedonbehalfbyValue;
    data['address2_name'] = this.address2Name;
    data['creditlimit_base'] = this.creditlimitBase;
    data['marketcap_base'] = this.marketcapBase;
    data['address2_utcoffset'] = this.address2Utcoffset;
    data['_modifiedbyexternalparty_value'] = this.nModifiedbyexternalpartyValue;
    data['_originatingleadid_value'] = this.nOriginatingleadidValue;
    data['sic'] = this.sic;
    data['_preferredserviceid_value'] = this.nPreferredserviceidValue;
    data['_slaid_value'] = this.nSlaidValue;
    data['address2_county'] = this.address2County;
    data['aging30'] = this.aging30;
    data['address1_line3'] = this.address1Line3;
    data['industrycode'] = this.industrycode;
    data['onholdtime'] = this.onholdtime;
    data['_createdbyexternalparty_value'] = this.nCreatedbyexternalpartyValue;
    data['entityimage_timestamp'] = this.entityimageTimestamp;
    data['entityimageid'] = this.entityimageid;
    data['_parentaccountid_value'] = this.nParentaccountidValue;
    data['yominame'] = this.yominame;
    data['lastusedincampaign'] = this.lastusedincampaign;
    data['_msdyn_segmentid_value'] = this.nMsdynSegmentidValue;
    data['accountcategorycode'] = this.accountcategorycode;
    data['primarytwitterid'] = this.primarytwitterid;
    data['telephone2'] = this.telephone2;
    data['stockexchange'] = this.stockexchange;
    data['revenue'] = this.revenue;
    data['description'] = this.description;
    data['_msdyn_salesaccelerationinsightid_value'] =
        this.nMsdynSalesaccelerationinsightidValue;
    data['aging90_base'] = this.aging90Base;
    data['tickersymbol'] = this.tickersymbol;
    data['address1_name'] = this.address1Name;
    data['msdyn_travelcharge'] = this.msdynTravelcharge;
    data['address1_primarycontactname'] = this.address1Primarycontactname;
    data['address2_primarycontactname'] = this.address2Primarycontactname;
    data['entityimage'] = this.entityimage;
    data['_msdyn_workhourtemplate_value'] = this.nMsdynWorkhourtemplateValue;
    data['aging60_base'] = this.aging60Base;
    data['address2_country'] = this.address2Country;
    return data;
  }
}