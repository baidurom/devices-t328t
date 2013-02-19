.class public Lcom/htc/view/animation/HtcGlContentZoomTransAnim;
.super Lcom/htc/view/animation/HtcBaseGlTransAnim;
.source "HtcGlContentZoomTransAnim.java"


# instance fields
.field protected mContentBottom:I

.field protected mContentLeft:I

.field protected mContentRight:I

.field protected mContentTop:I

.field private final mContentZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private final mContentZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field protected mHeaderBottom:I

.field protected mHeaderLeft:I

.field protected mHeaderRight:I

.field protected mHeaderTop:I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x5dd

    const/4 v1, 0x2

    const/4 v0, -0x1

    .line 52
    invoke-direct {p0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>()V

    .line 18
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderLeft:I

    .line 20
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderTop:I

    .line 22
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderRight:I

    .line 24
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderBottom:I

    .line 27
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentLeft:I

    .line 29
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentTop:I

    .line 31
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentRight:I

    .line 33
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentBottom:I

    .line 36
    const-string v0, "TRANSIT_CONTENT_ZOOM_ENTER"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 40
    const-string v0, "TRANSIT_CONTENT_ZOOM_EXIT"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 53
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->setAnimationType(I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x5dd

    const/4 v1, 0x2

    const/4 v0, -0x1

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderLeft:I

    .line 20
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderTop:I

    .line 22
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderRight:I

    .line 24
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderBottom:I

    .line 27
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentLeft:I

    .line 29
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentTop:I

    .line 31
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentRight:I

    .line 33
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentBottom:I

    .line 36
    const-string v0, "TRANSIT_CONTENT_ZOOM_ENTER"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 40
    const-string v0, "TRANSIT_CONTENT_ZOOM_EXIT"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 48
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->setAnimationType(I)V

    .line 49
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x5dd

    const/4 v1, 0x2

    const/4 v0, -0x1

    .line 171
    invoke-direct {p0, p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>(Landroid/os/Parcel;)V

    .line 18
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderLeft:I

    .line 20
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderTop:I

    .line 22
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderRight:I

    .line 24
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderBottom:I

    .line 27
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentLeft:I

    .line 29
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentTop:I

    .line 31
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentRight:I

    .line 33
    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentBottom:I

    .line 36
    const-string v0, "TRANSIT_CONTENT_ZOOM_ENTER"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 40
    const-string v0, "TRANSIT_CONTENT_ZOOM_EXIT"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderLeft:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderTop:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderRight:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderBottom:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentLeft:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentTop:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentRight:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentBottom:I

    .line 183
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->setAnimationType(I)V

    .line 184
    return-void
.end method


# virtual methods
.method public encodeSpecificParamsToArray()[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    const/16 v3, 0x8

    new-array v2, v3, [Ljava/lang/String;

    .line 121
    .local v2, mGlAttributeSet:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v1

    .line 122
    .local v1, Header:Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    .line 123
    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 124
    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 125
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 126
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->getContentArea()Landroid/graphics/Rect;

    move-result-object v0

    .line 136
    .local v0, Content:Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 137
    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 138
    const/4 v3, 0x5

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 139
    const/4 v3, 0x6

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 140
    const/4 v3, 0x7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 148
    :goto_1
    return-object v2

    .line 128
    .end local v0           #Content:Landroid/graphics/Rect;
    :cond_0
    const-string v3, "0"

    aput-object v3, v2, v4

    .line 129
    const-string v3, "0"

    aput-object v3, v2, v5

    .line 130
    const-string v3, "0"

    aput-object v3, v2, v6

    .line 131
    const-string v3, "0"

    aput-object v3, v2, v7

    goto :goto_0

    .line 142
    .restart local v0       #Content:Landroid/graphics/Rect;
    :cond_1
    const-string v3, "0"

    aput-object v3, v2, v8

    .line 143
    const/4 v3, 0x5

    const-string v4, "0"

    aput-object v4, v2, v3

    .line 144
    const/4 v3, 0x6

    const-string v4, "0"

    aput-object v4, v2, v3

    .line 145
    const/4 v3, 0x7

    const-string v4, "0"

    aput-object v4, v2, v3

    goto :goto_1
.end method

.method public getContentArea()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 107
    iget v1, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentRight:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentBottom:I

    if-ltz v1, :cond_1

    .line 108
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentLeft:I

    iget v2, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentTop:I

    iget v3, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentRight:I

    iget v4, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentBottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 111
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaderArea()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 95
    iget v1, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderRight:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderBottom:I

    if-ltz v1, :cond_1

    .line 96
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderLeft:I

    iget v2, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderTop:I

    iget v3, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderRight:I

    iget v4, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderBottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 99
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public monitorTransAnim(Z)V
    .locals 2
    .parameter "isStart"

    .prologue
    const/4 v1, 0x3

    .line 154
    if-eqz p1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 167
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 162
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    goto :goto_0
.end method

.method public setContentArea(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentLeft:I

    .line 80
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentTop:I

    .line 81
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentRight:I

    .line 82
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentBottom:I

    .line 89
    :cond_0
    return-void
.end method

.method public setHeaderArea(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderLeft:I

    .line 61
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderTop:I

    .line 62
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderRight:I

    .line 63
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderBottom:I

    .line 71
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 188
    invoke-super {p0, p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->writeToParcel(Landroid/os/Parcel;I)V

    .line 190
    iget v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mHeaderBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->mContentBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    return-void
.end method
