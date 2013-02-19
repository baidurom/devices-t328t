.class public Lcom/htc/wrap/com/google/android/mms/pdu/HtcWrapSendReq;
.super Lcom/google/android/mms/pdu/SendReq;
.source "HtcWrapSendReq.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>([BLcom/google/android/mms/pdu/EncodedStringValue;I[B)V
    .locals 0
    .parameter "contentType"
    .parameter "from"
    .parameter "mmsVersion"
    .parameter "transactionId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/mms/pdu/SendReq;-><init>([BLcom/google/android/mms/pdu/EncodedStringValue;I[B)V

    .line 20
    return-void
.end method

.method public static getContentTypeApplicationId(Lcom/google/android/mms/pdu/SendReq;)[B
    .locals 1
    .parameter "obj"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/SendReq;->getContentTypeApplicationId()[B

    move-result-object v0

    return-object v0
.end method

.method public static getContentTypeReplyToApplicationId(Lcom/google/android/mms/pdu/SendReq;)[B
    .locals 1
    .parameter "obj"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/SendReq;->getContentTypeReplyToApplicationId()[B

    move-result-object v0

    return-object v0
.end method

.method public static getDeliveryTime(Lcom/google/android/mms/pdu/SendReq;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/SendReq;->getDeliveryTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFrom(Lcom/google/android/mms/pdu/SendReq;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 1
    .parameter "obj"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/SendReq;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public static setContentTypeApplicationId(Lcom/google/android/mms/pdu/SendReq;[B)V
    .locals 0
    .parameter "obj"
    .parameter "value"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/SendReq;->setContentTypeApplicationId([B)V

    .line 111
    return-void
.end method

.method public static setContentTypeReplyToApplicationId(Lcom/google/android/mms/pdu/SendReq;[B)V
    .locals 0
    .parameter "obj"
    .parameter "value"

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/SendReq;->setContentTypeReplyToApplicationId([B)V

    .line 138
    return-void
.end method

.method public static setDeliveryTime(Lcom/google/android/mms/pdu/SendReq;J)V
    .locals 0
    .parameter "obj"
    .parameter "value"

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryTime(J)V

    .line 84
    return-void
.end method

.method public static setFrom(Lcom/google/android/mms/pdu/SendReq;Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 0
    .parameter "obj"
    .parameter "value"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 58
    return-void
.end method
