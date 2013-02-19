.class public Lcom/htc/painting/penmenu/menu/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.java"


# static fields
.field private static final DISABLED_ICON_IDX:I = 0x2

.field private static final NORMAL_ICON_IDX:I = 0x0

.field private static final PRESSED_ICON_IDX:I = 0x1


# instance fields
.field private mAngleRangeByDegree:F

.field private mBeginAngleByDegree:F

.field private mEnable:Z

.field private mFocus:Z

.field private mIcons:[Landroid/graphics/Bitmap;

.field private mInnerRadius:F

.field private mName:Ljava/lang/String;

.field private mRadiusRange:F

.field protected mStartAnim:Z

.field protected mStartAnimTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v1, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mFocus:Z

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mEnable:Z

    .line 44
    iput-boolean v1, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mStartAnim:Z

    return-void
.end method


# virtual methods
.method public contain(FF)Z
    .locals 2
    .parameter "radius"
    .parameter "angleByDegree"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mInnerRadius:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mInnerRadius:F

    iget v1, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mRadiusRange:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 52
    iget v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mBeginAngleByDegree:F

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mBeginAngleByDegree:F

    iget v1, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mAngleRangeByDegree:F

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAngleByDegree()F
    .locals 3

    .prologue
    .line 178
    iget v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mBeginAngleByDegree:F

    iget v1, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mAngleRangeByDegree:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getAngleRangeByDegree()F
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mAngleRangeByDegree:F

    return v0
.end method

.method public getBackgroundAlpha()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, alpha:I
    iget-boolean v8, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mFocus:Z

    if-ne v8, v10, :cond_0

    .line 229
    const/16 v0, 0xff

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/MenuItem;->isRunning()Z

    move-result v8

    if-ne v8, v10, :cond_1

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 234
    .local v6, time:J
    iget-wide v8, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mStartAnimTime:J

    sub-long v4, v6, v8

    .line 235
    .local v4, interval:J
    const/16 v1, 0x14

    .line 236
    .local v1, duration:I
    const/16 v2, 0x10

    .line 237
    .local v2, frameCount:I
    const/16 v8, 0x140

    int-to-long v8, v8

    cmp-long v8, v4, v8

    if-ltz v8, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/MenuItem;->stopAnim()V

    .line 250
    .end local v1           #duration:I
    .end local v2           #frameCount:I
    .end local v4           #interval:J
    .end local v6           #time:J
    :cond_1
    :goto_0
    return v0

    .line 240
    .restart local v1       #duration:I
    .restart local v2       #frameCount:I
    .restart local v4       #interval:J
    .restart local v6       #time:J
    :cond_2
    long-to-int v8, v4

    div-int v3, v8, v1

    .line 242
    .local v3, index:I
    iget-boolean v8, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mFocus:Z

    if-ne v8, v10, :cond_3

    .line 243
    mul-int/lit16 v8, v3, 0xff

    div-int v0, v8, v2

    goto :goto_0

    .line 245
    :cond_3
    sub-int v8, v2, v3

    add-int/lit8 v8, v8, -0x1

    mul-int/lit16 v8, v8, 0xff

    div-int v0, v8, v2

    goto :goto_0
.end method

.method public getBeginAngleByDegree()F
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mBeginAngleByDegree:F

    return v0
.end method

.method public getFocus()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mFocus:Z

    return v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 108
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mFocus:Z

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mIcons:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v1

    .line 113
    :goto_0
    return-object v0

    .line 110
    :cond_0
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mEnable:Z

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mIcons:[Landroid/graphics/Bitmap;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mIcons:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()F
    .locals 3

    .prologue
    .line 170
    iget v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mInnerRadius:F

    iget v1, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mRadiusRange:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mEnable:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mStartAnim:Z

    return v0
.end method

.method public release()V
    .locals 5

    .prologue
    .line 65
    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mIcons:[Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 75
    :cond_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mIcons:[Landroid/graphics/Bitmap;

    .local v0, arr$:[Landroid/graphics/Bitmap;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 70
    .local v2, icon:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 71
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 69
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mEnable:Z

    .line 139
    return-void
.end method

.method public setFocus(Z)V
    .locals 0
    .parameter "focus"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mFocus:Z

    .line 123
    return-void
.end method

.method public setIcons([Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "icons"

    .prologue
    .line 82
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/MenuItem;->release()V

    .line 88
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mIcons:[Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "mName"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mName:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setPosition(FFFF)V
    .locals 0
    .parameter "beginRadius"
    .parameter "radiusRange"
    .parameter "beginAngleByDegree"
    .parameter "angleRangeByDegree"

    .prologue
    .line 97
    iput p1, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mInnerRadius:F

    .line 98
    iput p2, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mRadiusRange:F

    .line 99
    iput p3, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mBeginAngleByDegree:F

    .line 100
    iput p4, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mAngleRangeByDegree:F

    .line 101
    return-void
.end method

.method public startAnim()V
    .locals 2

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mStartAnim:Z

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mStartAnimTime:J

    .line 204
    return-void
.end method

.method public stopAnim()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/menu/MenuItem;->mStartAnim:Z

    .line 212
    return-void
.end method
