.class public final Lcom/htc/service/dialer/ContactData;
.super Ljava/lang/Object;
.source "ContactData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/service/dialer/ContactData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mContactId:J

.field public mDisplayName:Ljava/lang/String;

.field public mEmail:[Ljava/lang/String;

.field public mPhoneNumber:[Ljava/lang/String;

.field public mPhoneType:[I

.field public mRingtonePath:Ljava/lang/String;

.field public mSendToVoiceMail:I

.field public mVip:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/htc/service/dialer/ContactData$1;

    invoke-direct {v0}, Lcom/htc/service/dialer/ContactData$1;-><init>()V

    sput-object v0, Lcom/htc/service/dialer/ContactData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/service/dialer/ContactData;->mContactId:J

    .line 208
    iput v2, p0, Lcom/htc/service/dialer/ContactData;->mSendToVoiceMail:I

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/service/dialer/ContactData;->mRingtonePath:Ljava/lang/String;

    .line 210
    iput v2, p0, Lcom/htc/service/dialer/ContactData;->mVip:I

    .line 211
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "contactId"
    .parameter "name"
    .parameter "ringtonePath"
    .parameter "sendToVoiceMail"
    .parameter "vip"

    .prologue
    .line 214
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-wide p1, p0, Lcom/htc/service/dialer/ContactData;->mContactId:J

    .line 216
    iput-object p3, p0, Lcom/htc/service/dialer/ContactData;->mDisplayName:Ljava/lang/String;

    .line 217
    iput p5, p0, Lcom/htc/service/dialer/ContactData;->mSendToVoiceMail:I

    .line 218
    iput-object p4, p0, Lcom/htc/service/dialer/ContactData;->mRingtonePath:Ljava/lang/String;

    .line 219
    iput p6, p0, Lcom/htc/service/dialer/ContactData;->mVip:I

    .line 220
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 222
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-virtual {p0, p1}, Lcom/htc/service/dialer/ContactData;->readFromParcel(Landroid/os/Parcel;)V

    .line 224
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/service/dialer/ContactData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/service/dialer/ContactData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/htc/service/dialer/ContactData;->mContactId:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mEmail:[Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mPhoneNumber:[Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneType()[I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    return-object v0
.end method

.method public getRingtonePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mRingtonePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSendToVoiceMail()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/service/dialer/ContactData;->mSendToVoiceMail:I

    return v0
.end method

.method public isBlocked()Z
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/htc/service/dialer/ContactData;->mSendToVoiceMail:I

    if-lez v0, :cond_0

    .line 228
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVip()Z
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/htc/service/dialer/ContactData;->mVip:I

    if-lez v0, :cond_0

    .line 240
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/service/dialer/ContactData;->mContactId:J

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/service/dialer/ContactData;->mSendToVoiceMail:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/dialer/ContactData;->mRingtonePath:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/service/dialer/ContactData;->mVip:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/dialer/ContactData;->mDisplayName:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/dialer/ContactData;->mPhoneNumber:[Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 199
    .local v0, size:I
    if-lez v0, :cond_0

    .line 200
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    .line 201
    iget-object v1, p0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/dialer/ContactData;->mEmail:[Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setContactId(J)V
    .locals 0
    .parameter "val"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/htc/service/dialer/ContactData;->mContactId:J

    .line 64
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/service/dialer/ContactData;->mDisplayName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setEmail([Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/service/dialer/ContactData;->mEmail:[Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setPhoneNumber([Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/service/dialer/ContactData;->mPhoneNumber:[Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setPhoneType([I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    .line 124
    return-void
.end method

.method public setRingtonePath(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/service/dialer/ContactData;->mRingtonePath:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setSendToVoiceMail(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 79
    iput p1, p0, Lcom/htc/service/dialer/ContactData;->mSendToVoiceMail:I

    .line 80
    return-void
.end method

.method public setVip(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 143
    iput p1, p0, Lcom/htc/service/dialer/ContactData;->mVip:I

    .line 144
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/htc/service/dialer/ContactData;->mContactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 174
    iget v0, p0, Lcom/htc/service/dialer/ContactData;->mSendToVoiceMail:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mRingtonePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget v0, p0, Lcom/htc/service/dialer/ContactData;->mVip:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mPhoneNumber:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 180
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mEmail:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 186
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0
.end method
