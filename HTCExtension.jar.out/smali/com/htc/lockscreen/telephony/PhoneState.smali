.class public Lcom/htc/lockscreen/telephony/PhoneState;
.super Ljava/lang/Object;
.source "PhoneState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RING:I = 0x1

.field public static final CALL_STYLE_NORMAL:I = 0x0

.field public static final CALL_STYLE_VIDEO:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/telephony/PhoneState;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_SENDMSG:I = 0x2

.field public static final FLAG_SILENT:I = 0x1


# instance fields
.field public mCallIcon:Landroid/graphics/Bitmap;

.field public mCallState:I

.field public mCallStyle:I

.field public mCallType:Ljava/lang/String;

.field public mDisplayNumber:Ljava/lang/String;

.field public mDueDate:Ljava/lang/String;

.field public mEventDesp:Ljava/lang/String;

.field public mEventIcon:Landroid/graphics/Bitmap;

.field private mExtra:Landroid/os/Bundle;

.field public mFlag:I

.field public mHint:Ljava/lang/String;

.field public mId:I

.field public mLocation:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mOpName:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mPhoto:Landroid/graphics/Bitmap;

.field public mSNIcon:Landroid/graphics/Bitmap;

.field public mSNStatus:Ljava/lang/String;

.field public mService:Landroid/content/ComponentName;

.field public mTaskName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 311
    new-instance v0, Lcom/htc/lockscreen/telephony/PhoneState$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/telephony/PhoneState$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/telephony/PhoneState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "callState"
    .parameter "opName"
    .parameter "callType"
    .parameter "phone"
    .parameter "name"
    .parameter "displayNumber"
    .parameter "location"
    .parameter "hint"
    .parameter "snStatus"
    .parameter "snIcon"
    .parameter "eventDesp"
    .parameter "eventIcon"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    .line 45
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    .line 46
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    .line 49
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    .line 52
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    .line 54
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mTaskName:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDueDate:Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mExtra:Landroid/os/Bundle;

    .line 73
    iput p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 74
    iput-object p2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    .line 77
    iput-object p5, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    .line 78
    iput-object p6, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    .line 79
    iput-object p7, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    .line 80
    iput-object p8, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    .line 81
    iput-object p9, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    .line 82
    iput-object p10, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    .line 83
    iput-object p11, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    .line 84
    iput-object p12, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    .line 45
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    .line 46
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    .line 49
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    .line 52
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    .line 54
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mTaskName:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDueDate:Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mExtra:Landroid/os/Bundle;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "parcel"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    .line 45
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    .line 46
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    .line 49
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    .line 52
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    .line 54
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mTaskName:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDueDate:Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mExtra:Landroid/os/Bundle;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    .line 110
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    .line 113
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    .line 114
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    .line 117
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_3

    .line 118
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    .line 121
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_4

    .line 122
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    .line 124
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mTaskName:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDueDate:Ljava/lang/String;

    .line 127
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mExtra:Landroid/os/Bundle;

    .line 128
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public getBirthdayInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    return-object v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    return v0
.end method

.method public getDisplayNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getPhoto()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSocailState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mTaskName:Ljava/lang/String;

    return-object v0
.end method

.method public setBirthdayInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "birthday"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setCallState(I)V
    .locals 0
    .parameter "callState"

    .prologue
    .line 282
    iput p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 283
    return-void
.end method

.method public setDisplayNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setDueDate(Ljava/lang/String;)V
    .locals 0
    .parameter "duedate"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDueDate:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 274
    iput p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    .line 275
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 258
    iput p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    .line 259
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setPhoneComponent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 266
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    .line 267
    return-void
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "photo"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    .line 207
    return-void
.end method

.method public setSocailState(Ljava/lang/String;)V
    .locals 0
    .parameter "social"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setSocialIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    .line 199
    return-void
.end method

.method public setTaskName(Ljava/lang/String;)V
    .locals 0
    .parameter "taskname"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mTaskName:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 164
    :goto_1
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 165
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 172
    :goto_2
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    .line 173
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 180
    :goto_3
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 181
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 187
    :goto_4
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mTaskName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDueDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 191
    return-void

    .line 153
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 169
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 177
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 185
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4
.end method
