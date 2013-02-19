.class public Lcom/htc/app/admin/CertInfo;
.super Ljava/lang/Object;
.source "CertInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/app/admin/CertInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERR_GET_FAIL:I = -0x2

.field public static final ERR_NO_ERROR:I = 0x0

.field public static final ERR_SET_FAIL:I = -0x1

.field public static final KEY_EDM_CERTIFICATE:Ljava/lang/String; = "com.htc.app.admin.CertInfo.EDM_CERTIFICATE"

.field private static final TAG:Ljava/lang/String; = "CertInfo"

.field public static final TYPE_CERT:I = 0x1

.field public static final TYPE_PKCS12:I = 0x2

.field public static final TYPE_UNKNOWN:I


# instance fields
.field private mCertName:Ljava/lang/String;

.field private mCertType:I

.field private mFileData:[B

.field private mRequestCode:I

.field private mResultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/htc/app/admin/CertInfo$1;

    invoke-direct {v0}, Lcom/htc/app/admin/CertInfo$1;-><init>()V

    sput-object v0, Lcom/htc/app/admin/CertInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/app/admin/CertInfo;->mCertType:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/admin/CertInfo;->mCertName:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/app/admin/CertInfo;->mCertType:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/app/admin/CertInfo;->mRequestCode:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/app/admin/CertInfo;->mResultCode:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    .local v0, length:I
    if-lez v0, :cond_0

    .line 160
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/htc/app/admin/CertInfo;->mFileData:[B

    .line 161
    iget-object v1, p0, Lcom/htc/app/admin/CertInfo;->mFileData:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/app/admin/CertInfo;->mFileData:[B

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/app/admin/CertInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/htc/app/admin/CertInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III[B)V
    .locals 1
    .parameter "certName"
    .parameter "certType"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "fileData"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/app/admin/CertInfo;->mCertType:I

    .line 28
    invoke-virtual {p0, p1}, Lcom/htc/app/admin/CertInfo;->setName(Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0, p2}, Lcom/htc/app/admin/CertInfo;->setType(I)I

    .line 30
    invoke-virtual {p0, p3}, Lcom/htc/app/admin/CertInfo;->setRequestCode(I)I

    .line 31
    invoke-virtual {p0, p5}, Lcom/htc/app/admin/CertInfo;->setFileData([B)I

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getFileData()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, fileData:[B
    iget-object v1, p0, Lcom/htc/app/admin/CertInfo;->mFileData:[B

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/htc/app/admin/CertInfo;->mFileData:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 124
    iget-object v1, p0, Lcom/htc/app/admin/CertInfo;->mFileData:[B

    iget-object v2, p0, Lcom/htc/app/admin/CertInfo;->mFileData:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/app/admin/CertInfo;->mCertName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/htc/app/admin/CertInfo;->mRequestCode:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/app/admin/CertInfo;->mResultCode:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/app/admin/CertInfo;->mCertType:I

    packed-switch v0, :pswitch_data_0

    .line 86
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 84
    :pswitch_0
    iget v0, p0, Lcom/htc/app/admin/CertInfo;->mCertType:I

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setFileData([B)I
    .locals 3
    .parameter "fileData"

    .prologue
    const/4 v0, 0x0

    .line 108
    if-nez p1, :cond_0

    .line 110
    const-string v0, "CertInfo"

    const-string v1, "Unable set Null file data."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, -0x1

    .line 115
    :goto_0
    return v0

    .line 113
    :cond_0
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/htc/app/admin/CertInfo;->mFileData:[B

    .line 114
    iget-object v1, p0, Lcom/htc/app/admin/CertInfo;->mFileData:[B

    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 47
    const-string v0, "CertInfo"

    const-string v1, "Unable set name as null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, -0x1

    .line 51
    :goto_0
    return v0

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/htc/app/admin/CertInfo;->mCertName:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRequestCode(I)I
    .locals 1
    .parameter "requestCode"

    .prologue
    .line 97
    iput p1, p0, Lcom/htc/app/admin/CertInfo;->mRequestCode:I

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public setType(I)I
    .locals 3
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 61
    packed-switch p1, :pswitch_data_0

    .line 68
    iget v1, p0, Lcom/htc/app/admin/CertInfo;->mCertType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/app/admin/CertInfo;->mCertType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 70
    iput v0, p0, Lcom/htc/app/admin/CertInfo;->mCertType:I

    .line 72
    :cond_0
    const/4 v0, -0x1

    .line 74
    :goto_0
    return v0

    .line 65
    :pswitch_0
    iput p1, p0, Lcom/htc/app/admin/CertInfo;->mCertType:I

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CertInfo{who="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/admin/CertInfo;->mCertName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/app/admin/CertInfo;->mCertType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/app/admin/CertInfo;->mRequestCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/app/admin/CertInfo;->mResultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/admin/CertInfo;->mFileData:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/app/admin/CertInfo;->mCertName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget v0, p0, Lcom/htc/app/admin/CertInfo;->mCertType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget v0, p0, Lcom/htc/app/admin/CertInfo;->mRequestCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v0, p0, Lcom/htc/app/admin/CertInfo;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Lcom/htc/app/admin/CertInfo;->mFileData:[B

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/htc/app/admin/CertInfo;->mFileData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v0, p0, Lcom/htc/app/admin/CertInfo;->mFileData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
