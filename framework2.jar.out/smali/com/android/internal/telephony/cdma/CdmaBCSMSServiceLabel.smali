.class public Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;
.super Ljava/lang/Object;
.source "CdmaBCSMSServiceLabel.java"


# instance fields
.field protected index:I

.field protected label:Ljava/lang/String;

.field protected label_encode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;->index:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel_encode()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;->label_encode:I

    return v0
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;->index:I

    .line 59
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;->label:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setLabel_encode(I)V
    .locals 0
    .parameter "label_encode"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;->label_encode:I

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.internal.telephony.cdma.CdmaBCSMSServiceLabel: { index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", label_encode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;->label_encode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
