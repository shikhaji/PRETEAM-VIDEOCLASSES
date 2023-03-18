class quizQuestionModel {
  int? status;
  String? message;
  List<QuestionContest>? cONTEST;

  quizQuestionModel({this.status, this.message, this.cONTEST});

  quizQuestionModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['CONTEST'] != null) {
      cONTEST = <QuestionContest>[];
      json['CONTEST'].forEach((v) {
        cONTEST!.add(new QuestionContest.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.cONTEST != null) {
      data['CONTEST'] = this.cONTEST!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class QuestionContest {
  String? qQALID;
  String? qQALTT;
  String? qQALQUESTIONID;
  String? qQALCONTESTID;
  String? qQALSTATUS;
  String? qQALSUBJECTID;
  String? qQALQQTIME;
  String? qQID;
  String? qQTT;
  String? qQSUBJECTID;
  String? qQHINDI;
  String? qQENGLISH;
  String? qQANS1;
  String? qQANS2;
  String? qQANS3;
  String? qQANS4;
  String? qQCORRECTANS;
  String? qQSTATUS;
  String? qQANSHINDI1;
  String? qQANSHINDI2;
  String? qQANSHINDI3;
  String? qQANSHINDI4;
  String? qQTIME;
  String? lOGINID;
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
  String? cONTESTTOTALTIME;
  String? cONTESTPASSINGMARKS;

  QuestionContest(
      {this.qQALID,
        this.qQALTT,
        this.qQALQUESTIONID,
        this.qQALCONTESTID,
        this.qQALSTATUS,
        this.qQALSUBJECTID,
        this.qQALQQTIME,
        this.qQID,
        this.qQTT,
        this.qQSUBJECTID,
        this.qQHINDI,
        this.qQENGLISH,
        this.qQANS1,
        this.qQANS2,
        this.qQANS3,
        this.qQANS4,
        this.qQCORRECTANS,
        this.qQSTATUS,
        this.qQANSHINDI1,
        this.qQANSHINDI2,
        this.qQANSHINDI3,
        this.qQANSHINDI4,
        this.qQTIME,
        this.lOGINID,
        this.cONTESTID,
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
        this.cONTESTTOTALTIME,
        this.cONTESTPASSINGMARKS});

  QuestionContest.fromJson(Map<String, dynamic> json) {
    qQALID = json['QQAL_ID'];
    qQALTT = json['QQAL_TT'];
    qQALQUESTIONID = json['QQAL_QUESTION_ID'];
    qQALCONTESTID = json['QQAL_CONTEST_ID'];
    qQALSTATUS = json['QQAL_STATUS'];
    qQALSUBJECTID = json['QQAL_SUBJECT_ID'];
    qQALQQTIME = json['QQAL_QQ_TIME'];
    qQID = json['QQ_ID'];
    qQTT = json['QQ_TT'];
    qQSUBJECTID = json['QQ_SUBJECT_ID'];
    qQHINDI = json['QQ_HINDI'];
    qQENGLISH = json['QQ_ENGLISH'];
    qQANS1 = json['QQ_ANS_1'];
    qQANS2 = json['QQ_ANS_2'];
    qQANS3 = json['QQ_ANS_3'];
    qQANS4 = json['QQ_ANS_4'];
    qQCORRECTANS = json['QQ_CORRECT_ANS'];
    qQSTATUS = json['QQ_STATUS'];
    qQANSHINDI1 = json['QQ_ANS_HINDI_1'];
    qQANSHINDI2 = json['QQ_ANS_HINDI_2'];
    qQANSHINDI3 = json['QQ_ANS_HINDI_3'];
    qQANSHINDI4 = json['QQ_ANS_HINDI_4'];
    qQTIME = json['QQ_TIME'];
    lOGINID = json['LOGIN_ID'];
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
    cONTESTTOTALTIME = json['CONTEST_TOTAL_TIME'];
    cONTESTPASSINGMARKS = json['CONTEST_PASSING_MARKS'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['QQAL_ID'] = this.qQALID;
    data['QQAL_TT'] = this.qQALTT;
    data['QQAL_QUESTION_ID'] = this.qQALQUESTIONID;
    data['QQAL_CONTEST_ID'] = this.qQALCONTESTID;
    data['QQAL_STATUS'] = this.qQALSTATUS;
    data['QQAL_SUBJECT_ID'] = this.qQALSUBJECTID;
    data['QQAL_QQ_TIME'] = this.qQALQQTIME;
    data['QQ_ID'] = this.qQID;
    data['QQ_TT'] = this.qQTT;
    data['QQ_SUBJECT_ID'] = this.qQSUBJECTID;
    data['QQ_HINDI'] = this.qQHINDI;
    data['QQ_ENGLISH'] = this.qQENGLISH;
    data['QQ_ANS_1'] = this.qQANS1;
    data['QQ_ANS_2'] = this.qQANS2;
    data['QQ_ANS_3'] = this.qQANS3;
    data['QQ_ANS_4'] = this.qQANS4;
    data['QQ_CORRECT_ANS'] = this.qQCORRECTANS;
    data['QQ_STATUS'] = this.qQSTATUS;
    data['QQ_ANS_HINDI_1'] = this.qQANSHINDI1;
    data['QQ_ANS_HINDI_2'] = this.qQANSHINDI2;
    data['QQ_ANS_HINDI_3'] = this.qQANSHINDI3;
    data['QQ_ANS_HINDI_4'] = this.qQANSHINDI4;
    data['QQ_TIME'] = this.qQTIME;
    data['LOGIN_ID'] = this.lOGINID;
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
    data['CONTEST_TOTAL_TIME'] = this.cONTESTTOTALTIME;
    data['CONTEST_PASSING_MARKS'] = this.cONTESTPASSINGMARKS;
    return data;
  }
}
