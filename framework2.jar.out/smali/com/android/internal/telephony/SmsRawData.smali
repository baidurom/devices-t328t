.class public Lcom/android/internal/telephony/SmsRawData;
.super Ljava/lang/Object;
.source "SmsRawData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field data:[B

.field mIsCdmaFormat:I

.field mSimSmsIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/android/internal/telephony/SmsRawData$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsRawData$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SmsRawData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "data"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/SmsRawData;->data:[B

    .line 59
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/SmsRawData;->mIsCdmaFormat:I

    .line 62
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([BZ)V
    .locals 1
    .parameter "data"
    .parameter "isCdmaFormat"

    .prologue
    const/4 v0, 0x1

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/internal/telephony/SmsRawData;->data:[B

    .line 67
    if-ne p2, v0, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/SmsRawData;->mIsCdmaFormat:I

    .line 68
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([BZI)V
    .locals 1
    .parameter "data"
    .parameter "isCdmaFormat"
    .parameter "indexOnSim"

    .prologue
    const/4 v0, 0x1

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/SmsRawData;->data:[B

    .line 87
    if-ne p2, v0, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/SmsRawData;->mIsCdmaFormat:I

    .line 88
    iput p3, p0, Lcom/android/internal/telephony/SmsRawData;->mSimSmsIndex:I

    .line 89
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/SmsRawData;->data:[B

    return-object v0
.end method

.method public getSimSmsIndex()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/internal/telephony/SmsRawData;->mSimSmsIndex:I

    return v0
.end method

.method public isCdmaFormat()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 71
    iget v1, p0, Lcom/android/internal/telephony/SmsRawData;->mIsCdmaFormat:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSimSmsIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/internal/telephony/SmsRawData;->mSimSmsIndex:I

    .line 81
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/SmsRawData;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/SmsRawData;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 103
    iget v0, p0, Lcom/android/internal/telephony/SmsRawData;->mIsCdmaFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Lcom/android/internal/telephony/SmsRawData;->mSimSmsIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return-void
.end method
