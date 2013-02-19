.class public Lcom/htc/graphics/UrlImageGetter;
.super Ljava/lang/Object;
.source "UrlImageGetter.java"

# interfaces
.implements Lcom/htc/text/HtcHtml$ImageGetter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultBitmap:Landroid/graphics/Bitmap;

.field private mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

.field private mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "context"
    .parameter "default_bitmap"

    .prologue
    .line 20
    const/16 v0, 0x3a

    const/16 v1, 0x50

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/htc/graphics/UrlImageGetter;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;II)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;II)V
    .locals 2
    .parameter "context"
    .parameter "default_bitmap"
    .parameter "minDim"
    .parameter "maxDim"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/graphics/UrlImageGetter;->mContext:Landroid/content/Context;

    .line 37
    iput-object p1, p0, Lcom/htc/graphics/UrlImageGetter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/htc/graphics/UrlImageGetter;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 39
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Options;-><init>()V

    iput-object v0, p0, Lcom/htc/graphics/UrlImageGetter;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    .line 40
    iget-object v0, p0, Lcom/htc/graphics/UrlImageGetter;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, p0, Lcom/htc/graphics/UrlImageGetter;->mDefaultBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 41
    iget-object v0, p0, Lcom/htc/graphics/UrlImageGetter;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iput p3, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    .line 42
    iget-object v0, p0, Lcom/htc/graphics/UrlImageGetter;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iput p4, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    .line 43
    iget-object v0, p0, Lcom/htc/graphics/UrlImageGetter;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    .line 44
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/graphics/UrlImageGetter;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/graphics/UrlImageGetter;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/graphics/UrlImageGetter;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 59
    return-void

    .line 57
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 75
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v1, p0, Lcom/htc/graphics/UrlImageGetter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/graphics/UrlImageGetter;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, p0, Lcom/htc/graphics/UrlImageGetter;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/htc/graphics/drawable/UrlDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;Lcom/htc/opensense/plugin/HtcScrollState;)V

    .line 80
    .local v0, d:Lcom/htc/graphics/drawable/UrlDrawable;
    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/htc/graphics/drawable/UrlDrawable;->setBounds(IIII)V

    .line 81
    return-object v0
.end method

.method public setDimes(II)V
    .locals 1
    .parameter "minDim"
    .parameter "maxDim"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/graphics/UrlImageGetter;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iput p1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    .line 90
    iget-object v0, p0, Lcom/htc/graphics/UrlImageGetter;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iput p2, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    .line 91
    return-void
.end method

.method public setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/graphics/UrlImageGetter;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    .line 67
    return-void
.end method
