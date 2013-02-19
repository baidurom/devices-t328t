.class public Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;
.super Ljava/lang/Object;
.source "IdlePubView.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "IdlePubView"


# instance fields
.field private mDescript:Ljava/lang/String;

.field private mHint:Ljava/lang/String;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mMode10:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mWakeUp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mPackageName:Ljava/lang/String;

    .line 15
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mMode10:Ljava/lang/String;

    .line 16
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mTitle:Ljava/lang/String;

    .line 17
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mDescript:Ljava/lang/String;

    .line 18
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mHint:Ljava/lang/String;

    .line 21
    iput-boolean v3, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mWakeUp:Z

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mPackageName:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, isExist:I
    if-ne v0, v2, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mMode10:Ljava/lang/String;

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    if-ne v0, v2, :cond_1

    .line 56
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mIcon:Landroid/graphics/Bitmap;

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    if-ne v0, v2, :cond_2

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mTitle:Ljava/lang/String;

    .line 62
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    if-ne v0, v2, :cond_3

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mDescript:Ljava/lang/String;

    .line 66
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    if-ne v0, v2, :cond_4

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mHint:Ljava/lang/String;

    .line 70
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mWakeUp:Z

    .line 71
    return-void

    :cond_5
    move v1, v3

    .line 70
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"
    .parameter "icon"
    .parameter "title"
    .parameter "descript"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mPackageName:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mMode10:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mTitle:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mDescript:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mHint:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mWakeUp:Z

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mPackageName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mIcon:Landroid/graphics/Bitmap;

    .line 30
    iput-object p3, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mTitle:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mDescript:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mHint:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"
    .parameter "icon"
    .parameter "title"
    .parameter "descript"
    .parameter "hint"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mPackageName:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mMode10:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mTitle:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mDescript:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mHint:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mWakeUp:Z

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mPackageName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mIcon:Landroid/graphics/Bitmap;

    .line 42
    iput-object p3, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mTitle:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mDescript:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mHint:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public getDescript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mDescript:Ljava/lang/String;

    return-object v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mHint:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isWakeUp()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mWakeUp:Z

    return v0
.end method

.method public setDescript(Ljava/lang/String;)V
    .locals 0
    .parameter "descript"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mDescript:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mHint:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mIcon:Landroid/graphics/Bitmap;

    .line 143
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mTitle:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setWakeUp(Z)V
    .locals 0
    .parameter "bWake"

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mWakeUp:Z

    .line 200
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mMode10:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mMode10:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 96
    :goto_1
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    :goto_2
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mDescript:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 105
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mDescript:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    :goto_3
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mHint:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 113
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mHint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    :goto_4
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mWakeUp:Z

    if-eqz v0, :cond_5

    .line 121
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    :goto_5
    return-void

    .line 85
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 109
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 117
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 124
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5
.end method
