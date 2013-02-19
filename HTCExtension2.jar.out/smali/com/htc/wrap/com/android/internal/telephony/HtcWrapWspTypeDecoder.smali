.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapWspTypeDecoder;
.super Ljava/lang/Object;
.source "HtcWrapWspTypeDecoder.java"


# instance fields
.field private reference:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .parameter "pdu"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    iput-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapWspTypeDecoder;->reference:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 12
    return-void
.end method


# virtual methods
.method public decodeContentType(I)Z
    .locals 1
    .parameter "startIndex"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapWspTypeDecoder;->reference:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v0

    return v0
.end method

.method public decodeExtensionMedia(I)Z
    .locals 1
    .parameter "startIndex"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapWspTypeDecoder;->reference:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeExtensionMedia(I)Z

    move-result v0

    return v0
.end method

.method public decodeIntegerValue(I)Z
    .locals 1
    .parameter "startIndex"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapWspTypeDecoder;->reference:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v0

    return v0
.end method

.method public decodeShortInteger(I)Z
    .locals 1
    .parameter "startIndex"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapWspTypeDecoder;->reference:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeShortInteger(I)Z

    move-result v0

    return v0
.end method

.method public decodeTextString(I)Z
    .locals 1
    .parameter "startIndex"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapWspTypeDecoder;->reference:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public decodeValueLength(I)Z
    .locals 1
    .parameter "startIndex"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapWspTypeDecoder;->reference:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeValueLength(I)Z

    move-result v0

    return v0
.end method

.method public getDecodedDataLength()I
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapWspTypeDecoder;->reference:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v0

    return v0
.end method

.method public getValue32()J
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapWspTypeDecoder;->reference:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v0

    return-wide v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapWspTypeDecoder;->reference:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
