.class public Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;
.super Ljava/lang/Object;
.source "HtcAkaAuthenticationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private auts:[B

.field private ck:[B

.field ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

.field private ik:[B

.field private res:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 150
    .local v1, tmp:I
    if-lez v1, :cond_0

    .line 151
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ck:[B

    .line 152
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ck:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 157
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    if-lez v1, :cond_1

    .line 159
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ik:[B

    .line 160
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ik:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 165
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 166
    if-lez v1, :cond_2

    .line 167
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->res:[B

    .line 168
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->res:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 173
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    if-lez v1, :cond_3

    .line 175
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->auts:[B

    .line 176
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->auts:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 181
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, exception:Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 183
    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_SIM_TYPE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    new-instance v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    sget-object v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_SIM_TYPE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    .line 202
    :goto_4
    return-void

    .line 154
    .end local v0           #exception:Ljava/lang/String;
    :cond_0
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ck:[B

    goto :goto_0

    .line 162
    :cond_1
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ik:[B

    goto :goto_1

    .line 170
    :cond_2
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->res:[B

    goto :goto_2

    .line 178
    :cond_3
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->auts:[B

    goto :goto_3

    .line 185
    .restart local v0       #exception:Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_RAND:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 186
    new-instance v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    sget-object v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_RAND:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    goto :goto_4

    .line 187
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 188
    new-instance v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    sget-object v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    goto :goto_4

    .line 189
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->USER_AUTHENTICATION_REJECTED:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 190
    new-instance v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    sget-object v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->USER_AUTHENTICATION_REJECTED:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    goto :goto_4

    .line 191
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->NO_SUCH_AUTHENTICATION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 192
    new-instance v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    sget-object v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->NO_SUCH_AUTHENTICATION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    goto :goto_4

    .line 193
    :cond_8
    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SYNC_FAILURE_EXCEPTION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 194
    new-instance v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    sget-object v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SYNC_FAILURE_EXCEPTION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    goto :goto_4

    .line 196
    :cond_9
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    goto :goto_4

    .line 200
    :cond_a
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    .line 49
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "auts"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->auts:[B

    .line 59
    new-instance v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    sget-object v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SYNC_FAILURE_EXCEPTION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    .line 60
    return-void
.end method

.method public constructor <init>([B[B[B)V
    .locals 0
    .parameter "ck"
    .parameter "ik"
    .parameter "res"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ck:[B

    .line 53
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ik:[B

    .line 54
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->res:[B

    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getAuts()[B
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->auts:[B

    return-object v0
.end method

.method public getCk()[B
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ck:[B

    return-object v0
.end method

.method public getError()Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;->e:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getException()Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    return-object v0
.end method

.method public getIk()[B
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ik:[B

    return-object v0
.end method

.method public getRes()[B
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->res:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 80
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;->e:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, exception:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cK = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ck:[B

    invoke-static {v2, v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "iK = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ik:[B

    invoke-static {v2, v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RES = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->res:[B

    invoke-static {v2, v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AUTS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->auts:[B

    invoke-static {v2, v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 80
    .end local v0           #exception:Ljava/lang/String;
    :cond_0
    const-string v0, "None"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ck:[B

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ck:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ck:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ik:[B

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ik:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ik:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 129
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->res:[B

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->res:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->res:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 137
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->auts:[B

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->auts:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->auts:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 145
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;->e:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return-void

    .line 118
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 134
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 142
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 145
    :cond_4
    const/4 v0, 0x0

    goto :goto_4
.end method
