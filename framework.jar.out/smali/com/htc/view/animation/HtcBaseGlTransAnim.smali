.class public Lcom/htc/view/animation/HtcBaseGlTransAnim;
.super Landroid/view/animation/Animation;
.source "HtcBaseGlTransAnim.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/view/animation/HtcBaseGlTransAnim;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field static final DEBUG_ANIM_FAMILY:Z = false

.field public static final TAG:Ljava/lang/String; = "HtcGlAnimation"

.field public static final TYPE_LAYER_ENTER:I = 0x3

.field public static final TYPE_LAYER_EXIT:I = 0x4

.field public static final TYPE_TRANSIT_CLOSE:I = 0x2

.field public static final TYPE_TRANSIT_DEFAULT:I = 0x0

.field public static final TYPE_TRANSIT_OPEN:I = 0x1


# instance fields
.field private final mDefaultDuration:J

.field private mHtcGlAnimType:Lcom/htc/view/animation/HtcGlAnimType;

.field private mIsHideStatusBarArea:Z

.field private mIsMainWindow:Z

.field private mLayerType:I

.field private mOrientation:Ljava/lang/String;

.field private mProgress:F

.field private mStatusBarH:I

.field private mTransitType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "debug_anim_family"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    .line 377
    new-instance v0, Lcom/htc/view/animation/HtcBaseGlTransAnim$1;

    invoke-direct {v0}, Lcom/htc/view/animation/HtcBaseGlTransAnim$1;-><init>()V

    sput-object v0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x12c

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 33
    new-instance v0, Lcom/htc/view/animation/HtcGlAnimType;

    invoke-direct {v0}, Lcom/htc/view/animation/HtcGlAnimType;-><init>()V

    iput-object v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mHtcGlAnimType:Lcom/htc/view/animation/HtcGlAnimType;

    .line 35
    iput v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    .line 54
    iput-wide v2, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mDefaultDuration:J

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mIsHideStatusBarArea:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mIsMainWindow:Z

    .line 86
    invoke-virtual {p0, v2, v3}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 87
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v4, 0x12c

    const/4 v3, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v2, Lcom/htc/view/animation/HtcGlAnimType;

    invoke-direct {v2}, Lcom/htc/view/animation/HtcGlAnimType;-><init>()V

    iput-object v2, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mHtcGlAnimType:Lcom/htc/view/animation/HtcGlAnimType;

    .line 35
    iput v3, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    .line 54
    iput-wide v4, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mDefaultDuration:J

    .line 60
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mIsHideStatusBarArea:Z

    .line 63
    iput-boolean v3, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mIsMainWindow:Z

    .line 72
    sget-object v2, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 75
    .local v1, a:Landroid/content/res/TypedArray;
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, OverrideIsOpen:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setOpenOrClose(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-virtual {p0, v4, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 81
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const-wide/16 v2, 0x12c

    const/4 v1, 0x0

    .line 359
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 33
    new-instance v0, Lcom/htc/view/animation/HtcGlAnimType;

    invoke-direct {v0}, Lcom/htc/view/animation/HtcGlAnimType;-><init>()V

    iput-object v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mHtcGlAnimType:Lcom/htc/view/animation/HtcGlAnimType;

    .line 35
    iput v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    .line 54
    iput-wide v2, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mDefaultDuration:J

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mIsHideStatusBarArea:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mIsMainWindow:Z

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    .line 362
    invoke-virtual {p0, v2, v3}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 363
    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lcom/htc/view/animation/HtcBaseGlTransAnim;
    .locals 1
    .parameter "in"

    .prologue
    .line 390
    invoke-static {p0}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Landroid/os/Parcel;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 248
    iput p1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mProgress:F

    .line 249
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public encodeGlobalParamsToArray()[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 299
    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/String;

    .line 302
    .local v0, mGlAttributeSet:[Ljava/lang/String;
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mHtcGlAnimType:Lcom/htc/view/animation/HtcGlAnimType;

    sget-object v1, Lcom/htc/view/animation/HtcGlAnimType;->mAnimTypeMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mHtcGlAnimType:Lcom/htc/view/animation/HtcGlAnimType;

    iget v3, v3, Lcom/htc/view/animation/HtcGlAnimType;->mAnimType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v2

    .line 305
    iget v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    if-ne v1, v4, :cond_0

    .line 306
    const-string/jumbo v1, "open"

    aput-object v1, v0, v4

    .line 316
    :goto_0
    iget v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mLayerType:I

    if-ne v1, v6, :cond_2

    .line 317
    const-string v1, "enter"

    aput-object v1, v0, v5

    .line 327
    :goto_1
    iget-object v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mOrientation:Ljava/lang/String;

    aput-object v1, v0, v6

    .line 330
    iget-boolean v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mIsMainWindow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 334
    iget-boolean v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mIsHideStatusBarArea:Z

    if-eqz v1, :cond_4

    .line 335
    iget v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mStatusBarH:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 340
    :goto_2
    return-object v0

    .line 307
    :cond_0
    iget v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    if-ne v1, v5, :cond_1

    .line 308
    const-string v1, "close"

    aput-object v1, v0, v4

    goto :goto_0

    .line 312
    :cond_1
    const-string v1, "N/A"

    aput-object v1, v0, v4

    goto :goto_0

    .line 318
    :cond_2
    iget v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mLayerType:I

    if-ne v1, v7, :cond_3

    .line 319
    const-string v1, "exit"

    aput-object v1, v0, v5

    goto :goto_1

    .line 323
    :cond_3
    const-string v1, "N/A"

    aput-object v1, v0, v4

    goto :goto_1

    .line 337
    :cond_4
    const-string v1, "0"

    aput-object v1, v0, v8

    goto :goto_2
.end method

.method public encodeSpecificParamsToArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnimationType()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mHtcGlAnimType:Lcom/htc/view/animation/HtcGlAnimType;

    iget v0, v0, Lcom/htc/view/animation/HtcGlAnimType;->mAnimType:I

    return v0
.end method

.method public getCurrentProgress()F
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mProgress:F

    return v0
.end method

.method public getLayerType()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mLayerType:I

    return v0
.end method

.method public getTransitType()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    return v0
.end method

.method public getZAdjustment()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 263
    iget v2, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 265
    iget v2, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mLayerType:I

    if-ne v2, v5, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    iget v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mLayerType:I

    if-ne v0, v4, :cond_2

    move v0, v1

    .line 269
    goto :goto_0

    :cond_2
    move v0, v1

    .line 271
    goto :goto_0

    .line 274
    :cond_3
    iget v2, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 276
    iget v2, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mLayerType:I

    if-eq v2, v4, :cond_0

    .line 279
    iget v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mLayerType:I

    if-ne v0, v5, :cond_4

    move v0, v1

    .line 280
    goto :goto_0

    :cond_4
    move v0, v1

    .line 282
    goto :goto_0

    :cond_5
    move v0, v1

    .line 285
    goto :goto_0
.end method

.method public monitorTransAnim(Z)V
    .locals 0
    .parameter "isStart"

    .prologue
    .line 355
    return-void
.end method

.method protected setAnimDuration(J)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 99
    return-void
.end method

.method protected setAnimationType(I)V
    .locals 1
    .parameter "_animType"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mHtcGlAnimType:Lcom/htc/view/animation/HtcGlAnimType;

    iput p1, v0, Lcom/htc/view/animation/HtcGlAnimType;->mAnimType:I

    .line 106
    return-void
.end method

.method public setEnterOrExit(Z)V
    .locals 1
    .parameter "isEnter"

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mLayerType:I

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mLayerType:I

    goto :goto_0
.end method

.method public setIsHideStatusBarArea(Z)V
    .locals 0
    .parameter "isHideStatusBarArea"

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mIsHideStatusBarArea:Z

    .line 207
    return-void
.end method

.method public setIsMainWindow(Z)V
    .locals 0
    .parameter "isMainWindow"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mIsMainWindow:Z

    .line 201
    return-void
.end method

.method public setOpenOrClose(Ljava/lang/String;)V
    .locals 2
    .parameter "_openOrClose"

    .prologue
    const/4 v1, 0x0

    .line 110
    if-nez p1, :cond_0

    .line 111
    iput v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    .line 134
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string/jumbo v0, "open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    goto :goto_0

    .line 122
    :cond_2
    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    goto :goto_0

    .line 128
    :cond_4
    iput v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    goto :goto_0
.end method

.method public setOpenOrClose(Z)V
    .locals 1
    .parameter "isOpen"

    .prologue
    .line 141
    iget v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 149
    :cond_0
    if-eqz p1, :cond_1

    .line 150
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 174
    packed-switch p1, :pswitch_data_0

    .line 192
    :goto_0
    return-void

    .line 176
    :pswitch_0
    const-string v0, "PORTRAIT"

    iput-object v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mOrientation:Ljava/lang/String;

    goto :goto_0

    .line 180
    :pswitch_1
    const-string v0, "LANDSCAPE_LEFT"

    iput-object v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mOrientation:Ljava/lang/String;

    goto :goto_0

    .line 184
    :pswitch_2
    const-string v0, "PORTRAIT_REVERSE"

    iput-object v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mOrientation:Ljava/lang/String;

    goto :goto_0

    .line 188
    :pswitch_3
    const-string v0, "LANDSCAPE_RIGHT"

    iput-object v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mOrientation:Ljava/lang/String;

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setStatusBarRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "statusbar"

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mStatusBarH:I

    .line 219
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mStatusBarH:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mHtcGlAnimType:Lcom/htc/view/animation/HtcGlAnimType;

    iget v0, v0, Lcom/htc/view/animation/HtcGlAnimType;->mAnimType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    return-void
.end method
