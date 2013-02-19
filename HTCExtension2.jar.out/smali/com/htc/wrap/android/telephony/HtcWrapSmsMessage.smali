.class public Lcom/htc/wrap/android/telephony/HtcWrapSmsMessage;
.super Ljava/lang/Object;
.source "HtcWrapSmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/telephony/HtcWrapSmsMessage$DeliveryPdu;
    }
.end annotation


# static fields
.field public static final MAX_USER_DATA_BYTES_WITH_CONC_AND_HEADER:I = 0x80

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_GREEK_NLI_HEADER:I = 0x99

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_NLI_HEADER:I = 0x92

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_SPANISH_NLI_HEADER:I = 0x95

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_TURKISH_NLI_HEADER:I = 0x95

.field public static final MAX_USER_DATA_SEPTETS_WITH_GREEK_NLI_HEADER:I = 0xa0

.field public static final MAX_USER_DATA_SEPTETS_WITH_NLI_HEADER:I = 0x98

.field public static final MAX_USER_DATA_SEPTETS_WITH_SPANISH_NLI_HEADER:I = 0x9b

.field public static final MAX_USER_DATA_SEPTETS_WITH_TURKISH_NLI_HEADER:I = 0x9b


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 204
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)[I
    .locals 1
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "nli"

    .prologue
    .line 94
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    return-object v0
.end method

.method public static calculateLength(Ljava/lang/String;ZI)[I
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"
    .parameter "nli"

    .prologue
    .line 164
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;ZI)[I

    move-result-object v0

    return-object v0
.end method

.method public static calculateLengthForCSIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .parameter "msgBody"
    .parameter "address"
    .parameter "callback"

    .prologue
    .line 104
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->calculateLengthForCSIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static createFromEfRecord(I[BZ)Landroid/telephony/SmsMessage;
    .locals 1
    .parameter "index"
    .parameter "data"
    .parameter "isCdmaFormat"

    .prologue
    .line 68
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BZ)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPdu([BI)Landroid/telephony/SmsMessage;
    .locals 1
    .parameter "pdu"
    .parameter "messageType"

    .prologue
    .line 59
    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BI)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static findAsciiSeptetLimitIndex(Ljava/lang/String;II)I
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 144
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->findAsciiSeptetLimitIndex(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static fragmentDataText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {p0}, Landroid/telephony/SmsMessage;->fragmentDataText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {p0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .parameter "nli"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static fragmentTextForCSIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .parameter "sAddress"
    .parameter "sCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->fragmentTextForCSIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static fragmentTextNliExt(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .parameter "nli"
    .parameter "phonetype"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->fragmentTextNliExt(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Lcom/htc/wrap/android/telephony/HtcWrapSmsMessage$DeliveryPdu;
    .locals 2
    .parameter "sOriginatorAddress"
    .parameter "lTimeMilli"
    .parameter "sMessage"
    .parameter "bIs7Bit"
    .parameter "bundle"

    .prologue
    .line 252
    new-instance v0, Lcom/htc/wrap/android/telephony/HtcWrapSmsMessage$DeliveryPdu;

    invoke-static/range {p0 .. p5}, Landroid/telephony/SmsMessage;->getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/wrap/android/telephony/HtcWrapSmsMessage$DeliveryPdu;-><init>(Landroid/telephony/SmsMessage$DeliveryPdu;)V

    return-object v0
.end method

.method public static getInstance()Landroid/telephony/SmsMessage;
    .locals 1

    .prologue
    .line 306
    new-instance v0, Landroid/telephony/SmsMessage;

    invoke-direct {v0}, Landroid/telephony/SmsMessage;-><init>()V

    return-object v0
.end method

.method public static final getNliFromLocale(Ljava/util/Locale;)I
    .locals 1
    .parameter "locale"

    .prologue
    .line 200
    invoke-static {p0}, Landroid/telephony/SmsMessage;->getNliFromLocale(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public static getPhoneType()I
    .locals 1

    .prologue
    .line 300
    invoke-static {}, Landroid/telephony/SmsMessage;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "originPort"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"
    .parameter "phoneType"

    .prologue
    .line 194
    invoke-static/range {p0 .. p6}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "phoneType"

    .prologue
    .line 276
    invoke-static {p0, p1, p2, p3, p4}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "nli"

    .prologue
    .line 186
    invoke-static/range {p0 .. p5}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"
    .parameter "phoneType"

    .prologue
    .line 285
    invoke-static/range {p0 .. p5}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static htcCreateFromPdu([BI)Landroid/telephony/SmsMessage;
    .locals 1
    .parameter "pdu"
    .parameter "phoneType"

    .prologue
    .line 263
    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->htcCreateFromPdu([BI)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static is7BitAfterFragmentText()Z
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Landroid/telephony/SmsMessage;->is7BitAfterFragmentText()Z

    move-result v0

    return v0
.end method

.method public static setPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 293
    invoke-static {p0}, Landroid/telephony/SmsMessage;->setPhoneType(I)V

    .line 294
    return-void
.end method
