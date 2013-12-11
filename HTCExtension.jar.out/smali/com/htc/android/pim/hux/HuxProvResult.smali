.class public Lcom/htc/android/pim/hux/HuxProvResult;
.super Ljava/lang/Object;
.source "HuxProvResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/pim/hux/HuxProvResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public errorCode:I

.field public errorMessage:Ljava/lang/String;

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/htc/android/pim/hux/HuxProvResult$1;

    invoke-direct {v0}, Lcom/htc/android/pim/hux/HuxProvResult$1;-><init>()V

    sput-object v0, Lcom/htc/android/pim/hux/HuxProvResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .parameter "status"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/htc/android/pim/hux/HuxProvResult;->status:I

    .line 28
    iput p2, p0, Lcom/htc/android/pim/hux/HuxProvResult;->errorCode:I

    .line 29
    iput-object p3, p0, Lcom/htc/android/pim/hux/HuxProvResult;->errorMessage:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    .line 48
    .local v0, b:B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/android/pim/hux/HuxProvResult;->status:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/android/pim/hux/HuxProvResult;->errorCode:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/android/pim/hux/HuxProvResult;->errorMessage:Ljava/lang/String;

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/pim/hux/HuxProvResult;->errorMessage:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/android/pim/hux/HuxProvResult;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/android/pim/hux/HuxProvResult;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/android/pim/hux/HuxProvResult;->status:I

    return v0
.end method

.method public isSuccessful(Lcom/htc/android/pim/hux/HuxProvResult;)Z
    .locals 2
    .parameter "provResult"

    .prologue
    .line 111
    iget v0, p1, Lcom/htc/android/pim/hux/HuxProvResult;->status:I

    .line 112
    .local v0, status:I
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_3

    .line 113
    :cond_0
    if-gez v0, :cond_2

    .line 114
    iput v0, p1, Lcom/htc/android/pim/hux/HuxProvResult;->errorCode:I

    .line 115
    const-string v1, "Cannot connect to server. Your server is not responding."

    iput-object v1, p1, Lcom/htc/android/pim/hux/HuxProvResult;->errorMessage:Ljava/lang/String;

    .line 119
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 121
    :goto_1
    return v1

    .line 116
    :cond_2
    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    .line 117
    const-string v1, " Unauthorized"

    iput-object v1, p1, Lcom/htc/android/pim/hux/HuxProvResult;->errorMessage:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 84
    iget v0, p0, Lcom/htc/android/pim/hux/HuxProvResult;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lcom/htc/android/pim/hux/HuxProvResult;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Lcom/htc/android/pim/hux/HuxProvResult;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/pim/hux/HuxProvResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 91
    iget-object v0, p0, Lcom/htc/android/pim/hux/HuxProvResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
