class QuizDetails {
  String? cONTESTID;
  String? cONTESTTT;
  String? cONTESTSTARTDATE;
  String? cONTESTTIME;
  String? cONTESTENTRYFEE;
  String? wINNINGPOOL;
  String? tOTALPARTICIPANTS;
  String? wIN;
  String? cONTESTSTATUS;
  String? cONTESTTEMPID;
  String? cONTESTSUBJECTID;
  String? cONTESTRULE;
  String? cONTESTRANKSTATUS;
  String? cONTESTSPOTSLEFT;
  String? cONTESTFIRSTPRICE;
  String? tOTALQUESTIONS;
  String? cLOSEBEFORE;
  String? cONTESTLASTRANK;
  String? cONTESTDATETIME;
  String? cONTESTPERQUESTIONTIMING;
  String? cLBUFFERTIME;
  String? cONTESTSHOWHIDE;
  String? cONTESTPUBLISHAFTER;
  String? cONTESTRESULTSTATUS;
  String? lOGINID;
  String? cONTESTTOTALTIME;
  String? cONTESTPASSINGMARKS;
  String? id;
  String? vendorId;
  String? brandName;
  String? status;
  String? date;
  String? brandImage;

  QuizDetails(
      {this.cONTESTID,
        this.cONTESTTT,
        this.cONTESTSTARTDATE,
        this.cONTESTTIME,
        this.cONTESTENTRYFEE,
        this.wINNINGPOOL,
        this.tOTALPARTICIPANTS,
        this.wIN,
        this.cONTESTSTATUS,
        this.cONTESTTEMPID,
        this.cONTESTSUBJECTID,
        this.cONTESTRULE,
        this.cONTESTRANKSTATUS,
        this.cONTESTSPOTSLEFT,
        this.cONTESTFIRSTPRICE,
        this.tOTALQUESTIONS,
        this.cLOSEBEFORE,
        this.cONTESTLASTRANK,
        this.cONTESTDATETIME,
        this.cONTESTPERQUESTIONTIMING,
        this.cLBUFFERTIME,
        this.cONTESTSHOWHIDE,
        this.cONTESTPUBLISHAFTER,
        this.cONTESTRESULTSTATUS,
        this.lOGINID,
        this.cONTESTTOTALTIME,
        this.cONTESTPASSINGMARKS,
        this.id,
        this.vendorId,
        this.brandName,
        this.status,
        this.date,
        this.brandImage});

  QuizDetails.fromJson(Map<String, dynamic> json) {
    cONTESTID = json['CONTEST_ID'];
    cONTESTTT = json['CONTEST_TT'];
    cONTESTSTARTDATE = json['CONTEST_START_DATE'];
    cONTESTTIME = json['CONTEST_TIME'];
    cONTESTENTRYFEE = json['CONTEST_ENTRY_FEE'];
    wINNINGPOOL = json['WINNING_POOL'];
    tOTALPARTICIPANTS = json['TOTAL_PARTICIPANTS'];
    wIN = json['WIN'];
    cONTESTSTATUS = json['CONTEST_STATUS'];
    cONTESTTEMPID = json['CONTEST_TEMP_ID'];
    cONTESTSUBJECTID = json['CONTEST_SUBJECT_ID'];
    cONTESTRULE = json['CONTEST_RULE'];
    cONTESTRANKSTATUS = json['CONTEST_RANK_STATUS'];
    cONTESTSPOTSLEFT = json['CONTEST_SPOTS_LEFT'];
    cONTESTFIRSTPRICE = json['CONTEST_FIRST_PRICE'];
    tOTALQUESTIONS = json['TOTAL_QUESTIONS'];
    cLOSEBEFORE = json['CLOSE_BEFORE'];
    cONTESTLASTRANK = json['CONTEST_LAST_RANK'];
    cONTESTDATETIME = json['CONTEST_DATE_TIME'];
    cONTESTPERQUESTIONTIMING = json['CONTEST_PER_QUESTION_TIMING'];
    cLBUFFERTIME = json['CL_BUFFER_TIME'];
    cONTESTSHOWHIDE = json['CONTEST_SHOW_HIDE'];
    cONTESTPUBLISHAFTER = json['CONTEST_PUBLISH_AFTER'];
    cONTESTRESULTSTATUS = json['CONTEST_RESULT_STATUS'];
    lOGINID = json['LOGIN_ID'];
    cONTESTTOTALTIME = json['CONTEST_TOTAL_TIME'];
    cONTESTPASSINGMARKS = json['CONTEST_PASSING_MARKS'];
    id = json['id'];
    vendorId = json['vendor_id'];
    brandName = json['brand_name'];
    status = json['status'];
    date = json['date'];
    brandImage = json['brand_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CONTEST_ID'] = this.cONTESTID;
    data['CONTEST_TT'] = this.cONTESTTT;
    data['CONTEST_START_DATE'] = this.cONTESTSTARTDATE;
    data['CONTEST_TIME'] = this.cONTESTTIME;
    data['CONTEST_ENTRY_FEE'] = this.cONTESTENTRYFEE;
    data['WINNING_POOL'] = this.wINNINGPOOL;
    data['TOTAL_PARTICIPANTS'] = this.tOTALPARTICIPANTS;
    data['WIN'] = this.wIN;
    data['CONTEST_STATUS'] = this.cONTESTSTATUS;
    data['CONTEST_TEMP_ID'] = this.cONTESTTEMPID;
    data['CONTEST_SUBJECT_ID'] = this.cONTESTSUBJECTID;
    data['CONTEST_RULE'] = this.cONTESTRULE;
    data['CONTEST_RANK_STATUS'] = this.cONTESTRANKSTATUS;
    data['CONTEST_SPOTS_LEFT'] = this.cONTESTSPOTSLEFT;
    data['CONTEST_FIRST_PRICE'] = this.cONTESTFIRSTPRICE;
    data['TOTAL_QUESTIONS'] = this.tOTALQUESTIONS;
    data['CLOSE_BEFORE'] = this.cLOSEBEFORE;
    data['CONTEST_LAST_RANK'] = this.cONTESTLASTRANK;
    data['CONTEST_DATE_TIME'] = this.cONTESTDATETIME;
    data['CONTEST_PER_QUESTION_TIMING'] = this.cONTESTPERQUESTIONTIMING;
    data['CL_BUFFER_TIME'] = this.cLBUFFERTIME;
    data['CONTEST_SHOW_HIDE'] = this.cONTESTSHOWHIDE;
    data['CONTEST_PUBLISH_AFTER'] = this.cONTESTPUBLISHAFTER;
    data['CONTEST_RESULT_STATUS'] = this.cONTESTRESULTSTATUS;
    data['LOGIN_ID'] = this.lOGINID;
    data['CONTEST_TOTAL_TIME'] = this.cONTESTTOTALTIME;
    data['CONTEST_PASSING_MARKS'] = this.cONTESTPASSINGMARKS;
    data['id'] = this.id;
    data['vendor_id'] = this.vendorId;
    data['brand_name'] = this.brandName;
    data['status'] = this.status;
    data['date'] = this.date;
    data['brand_image'] = this.brandImage;
    return data;
  }
}
