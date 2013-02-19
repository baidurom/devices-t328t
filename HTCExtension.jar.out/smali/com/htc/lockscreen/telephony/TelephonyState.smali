.class public Lcom/htc/lockscreen/telephony/TelephonyState;
.super Ljava/lang/Object;
.source "TelephonyState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/telephony/TelephonyState;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICC_ABSENT:I = 0x1

.field public static final ICC_EXPIRED:I = 0x8

.field public static final ICC_FAIL:I = 0x6

.field public static final ICC_IMEI_LOCKED:I = 0x7

.field public static final ICC_NETWORK_LOCKED:I = 0x5

.field public static final ICC_PIN_REQUIRED:I = 0x3

.field public static final ICC_PUK_PERM_BLOCKED:I = 0x9

.field public static final ICC_PUK_REQUIRED:I = 0x4

.field public static final ICC_READY:I = 0x2

.field public static final ICC_UNKNOW:I


# instance fields
.field private mExtra:Landroid/os/Bundle;

.field public mIsAirPlaneMode:Z

.field public mNetworkServiceStatus:I

.field public mPlmn:Ljava/lang/CharSequence;

.field public mSimState:I

.field public mSpn:Ljava/lang/CharSequence;

.field public mUICCOperator:Ljava/lang/String;

.field public mUiccProvision:Z

.field public mUiccState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/htc/lockscreen/telephony/TelephonyState$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/telephony/TelephonyState$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/telephony/TelephonyState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIZLjava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V
    .locals 1
    .parameter "state"
    .parameter "networkState"
    .parameter "isAirplaneMode"
    .parameter "plmn"
    .parameter "spn"
    .parameter "uiccState"
    .parameter "provision"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUICCOperator:Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mExtra:Landroid/os/Bundle;

    .line 61
    iput p1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    .line 62
    iput p2, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mNetworkServiceStatus:I

    .line 63
    iput-boolean p3, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mIsAirPlaneMode:Z

    .line 65
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iput-object p4, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    .line 67
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iput-object p5, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    .line 70
    :cond_1
    iput p6, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccState:I

    .line 71
    iput-boolean p7, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccProvision:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "parcel"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUICCOperator:Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mExtra:Landroid/os/Bundle;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mNetworkServiceStatus:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mIsAirPlaneMode:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccState:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccProvision:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUICCOperator:Ljava/lang/String;

    .line 84
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mExtra:Landroid/os/Bundle;

    .line 85
    return-void

    :cond_0
    move v0, v2

    .line 78
    goto :goto_0

    :cond_1
    move v1, v2

    .line 82
    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccCard$State;IZLjava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V
    .locals 1
    .parameter "state"
    .parameter "networkState"
    .parameter "isAirplaneMode"
    .parameter "plmn"
    .parameter "spn"
    .parameter "uiccState"
    .parameter "provision"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUICCOperator:Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mExtra:Landroid/os/Bundle;

    .line 40
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/telephony/TelephonyState;->setSimState(Lcom/android/internal/telephony/IccCard$State;)V

    .line 41
    iput p2, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mNetworkServiceStatus:I

    .line 42
    iput-boolean p3, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mIsAirPlaneMode:Z

    .line 44
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iput-object p4, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    .line 46
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iput-object p5, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    .line 49
    :cond_1
    iput p6, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccState:I

    .line 50
    iput-boolean p7, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccProvision:Z

    .line 52
    return-void
.end method

.method private setSimState(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 109
    if-nez p1, :cond_0

    .line 110
    iput v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    .line 142
    :goto_0
    return-void

    .line 112
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_1

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    .line 115
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_2

    .line 116
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    .line 118
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_3

    .line 119
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    .line 121
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_4

    .line 122
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    .line 124
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_5

    .line 125
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    .line 127
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_6

    .line 128
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    .line 130
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_7

    .line 131
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    .line 133
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_8

    .line 134
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    .line 136
    :cond_8
    sget-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_9

    .line 137
    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    .line 140
    :cond_9
    iput v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public getExtra()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSimState()Lcom/android/internal/telephony/IccCard$State;
    .locals 3

    .prologue
    .line 149
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 150
    .local v0, state:Lcom/android/internal/telephony/IccCard$State;
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 151
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    .line 177
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :cond_1
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 154
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 156
    :cond_2
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 157
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 159
    :cond_3
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 160
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 162
    :cond_4
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 163
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 165
    :cond_5
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 166
    sget-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 168
    :cond_6
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 169
    sget-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 171
    :cond_7
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 172
    sget-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 174
    :cond_8
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 175
    sget-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public getSimStateInt()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    iget v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mNetworkServiceStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-boolean v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mIsAirPlaneMode:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 98
    iget v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-boolean v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccProvision:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUICCOperator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    return-void

    :cond_0
    move v0, v2

    .line 95
    goto :goto_0

    :cond_1
    move v1, v2

    .line 99
    goto :goto_1
.end method
