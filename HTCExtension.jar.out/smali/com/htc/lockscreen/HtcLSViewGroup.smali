.class public Lcom/htc/lockscreen/HtcLSViewGroup;
.super Ljava/lang/Object;
.source "HtcLSViewGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/HtcLSViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field public static final HTC_LS_PART_BOTTOM:Ljava/lang/String; = "bottom"

.field public static final HTC_LS_PART_HIT:Ljava/lang/String; = "hit"

.field public static final HTC_LS_PART_MAIN:Ljava/lang/String; = "main"

.field static final LOG_TAG:Ljava/lang/String; = "HtcLSViewGroup"

.field public static final PART_ORDER:[Ljava/lang/String;


# instance fields
.field private mId:I

.field private mOrder:I

.field private mPackageName:Ljava/lang/String;

.field private mShowHintFlag:I

.field private mShowHintString:Ljava/lang/String;

.field private mShowNotification:Z

.field private mViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/lockscreen/HtcLSView;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeUp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "main"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bottom"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hit"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/lockscreen/HtcLSViewGroup;->PART_ORDER:[Ljava/lang/String;

    .line 140
    new-instance v0, Lcom/htc/lockscreen/HtcLSViewGroup$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/HtcLSViewGroup$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/HtcLSViewGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "parcel"

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v3, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowNotification:Z

    .line 29
    iput-boolean v3, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mWakeUp:Z

    .line 31
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintString:Ljava/lang/String;

    .line 32
    iput v3, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintFlag:I

    .line 33
    const/4 v2, 0x1

    iput v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mOrder:I

    .line 34
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mViewMap:Ljava/util/HashMap;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mPackageName:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mId:I

    .line 46
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->readBoolean(Landroid/os/Parcel;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowNotification:Z

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintFlag:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintString:Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->readBoolean(Landroid/os/Parcel;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mWakeUp:Z

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mOrder:I

    .line 53
    const-string v2, "HtcLSViewGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "construct parcel~ mShowNotification:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowNotification:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v2, "HtcLSViewGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "construct parcel~ mPackageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v2, "HtcLSViewGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "construct parcel~ mId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, contentView:Lcom/htc/lockscreen/HtcLSView;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/htc/lockscreen/HtcLSViewGroup;->PART_ORDER:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 60
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->getContentView(Landroid/os/Parcel;)Lcom/htc/lockscreen/HtcLSView;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    sget-object v2, Lcom/htc/lockscreen/HtcLSViewGroup;->PART_ORDER:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2, v0}, Lcom/htc/lockscreen/HtcLSViewGroup;->setContentView(Ljava/lang/String;Lcom/htc/lockscreen/HtcLSView;)V

    .line 59
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowNotification:Z

    .line 29
    iput-boolean v1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mWakeUp:Z

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintString:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintFlag:I

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mOrder:I

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mViewMap:Ljava/util/HashMap;

    .line 38
    iput-object p1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mPackageName:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mId:I

    .line 40
    return-void
.end method

.method private getContentView(Landroid/os/Parcel;)Lcom/htc/lockscreen/HtcLSView;
    .locals 3
    .parameter "parcel"

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, contentView:Lcom/htc/lockscreen/HtcLSView;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .local v1, exist:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 71
    sget-object v2, Lcom/htc/lockscreen/HtcLSView;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #contentView:Lcom/htc/lockscreen/HtcLSView;
    check-cast v0, Lcom/htc/lockscreen/HtcLSView;

    .line 73
    .restart local v0       #contentView:Lcom/htc/lockscreen/HtcLSView;
    :cond_0
    return-object v0
.end method

.method static prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 228
    if-eqz p1, :cond_0

    .line 230
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 238
    .local v0, c:Landroid/content/Context;
    :goto_0
    return-object v0

    .line 231
    .end local v0           #c:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 232
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "HtcLSViewGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    move-object v0, p0

    .line 234
    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0

    .line 236
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p0

    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0
.end method

.method private readBoolean(Landroid/os/Parcel;)Z
    .locals 2
    .parameter "parcel"

    .prologue
    const/4 v1, 0x1

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 118
    .local v0, val:I
    if-ne v0, v1, :cond_0

    .line 122
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeBoolean(Landroid/os/Parcel;IZ)V
    .locals 1
    .parameter "out"
    .parameter "flags"
    .parameter "val"

    .prologue
    .line 108
    if-eqz p3, :cond_0

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method private writeContentViewToParcel(Lcom/htc/lockscreen/HtcLSView;Landroid/os/Parcel;I)V
    .locals 1
    .parameter "contentView"
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    invoke-virtual {p1, p2, p3}, Lcom/htc/lockscreen/HtcLSView;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getContentView(Ljava/lang/String;)Lcom/htc/lockscreen/HtcLSView;
    .locals 1
    .parameter "part"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lockscreen/HtcLSView;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mId:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mOrder:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getShowHintFlag()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintFlag:I

    return v0
.end method

.method public getShowHintString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintString:Ljava/lang/String;

    return-object v0
.end method

.method public isShowNotification()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowNotification:Z

    return v0
.end method

.method public isWakeUp()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mWakeUp:Z

    return v0
.end method

.method isWithContentView()Z
    .locals 3

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, contentView:Lcom/htc/lockscreen/HtcLSView;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/htc/lockscreen/HtcLSViewGroup;->PART_ORDER:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 244
    sget-object v2, Lcom/htc/lockscreen/HtcLSViewGroup;->PART_ORDER:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/lockscreen/HtcLSViewGroup;->getContentView(Ljava/lang/String;)Lcom/htc/lockscreen/HtcLSView;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    .line 246
    const/4 v2, 0x1

    .line 249
    :goto_1
    return v2

    .line 243
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public removeContentView(Ljava/lang/String;)V
    .locals 1
    .parameter "part"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method

.method public setContentView(Ljava/lang/String;Lcom/htc/lockscreen/HtcLSView;)V
    .locals 1
    .parameter "part"
    .parameter "lsView"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .parameter "order"

    .prologue
    .line 261
    iput p1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mOrder:I

    .line 262
    return-void
.end method

.method public setShowHint(ILjava/lang/String;)V
    .locals 1
    .parameter "flag"
    .parameter "hint"

    .prologue
    .line 163
    iput p1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintFlag:I

    .line 164
    if-eqz p2, :cond_0

    .line 165
    iput-object p2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintString:Ljava/lang/String;

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintString:Ljava/lang/String;

    goto :goto_0
.end method

.method public setShowNotification(Z)V
    .locals 0
    .parameter "bShow"

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowNotification:Z

    .line 186
    return-void
.end method

.method public setWakeUp(Z)V
    .locals 0
    .parameter "bWakeUp"

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mWakeUp:Z

    .line 199
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 90
    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-boolean v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowNotification:Z

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/lockscreen/HtcLSViewGroup;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 95
    iget v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintFlag:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-boolean v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mWakeUp:Z

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/lockscreen/HtcLSViewGroup;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 99
    iget v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mOrder:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, contentView:Lcom/htc/lockscreen/HtcLSView;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/htc/lockscreen/HtcLSViewGroup;->PART_ORDER:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 102
    sget-object v2, Lcom/htc/lockscreen/HtcLSViewGroup;->PART_ORDER:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/lockscreen/HtcLSViewGroup;->getContentView(Ljava/lang/String;)Lcom/htc/lockscreen/HtcLSView;

    move-result-object v0

    .line 103
    invoke-direct {p0, v0, p1, p2}, Lcom/htc/lockscreen/HtcLSViewGroup;->writeContentViewToParcel(Lcom/htc/lockscreen/HtcLSView;Landroid/os/Parcel;I)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method
