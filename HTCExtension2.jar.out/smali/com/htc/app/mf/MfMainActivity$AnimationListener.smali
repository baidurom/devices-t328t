.class Lcom/htc/app/mf/MfMainActivity$AnimationListener;
.super Ljava/lang/Object;
.source "MfMainActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/mf/MfMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationListener"
.end annotation


# instance fields
.field private mAfterAnimationRects:[Lcom/htc/app/mf/PaneRect;

.field mCancelled:Z

.field private mFvHdr:Lcom/htc/app/mf/Animation$ViewCacheHdr;

.field private mFvHdrs:[Lcom/htc/app/mf/Animation$ViewCacheHdr;

.field final synthetic this$0:Lcom/htc/app/mf/MfMainActivity;


# direct methods
.method private constructor <init>(Lcom/htc/app/mf/MfMainActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 287
    iput-object p1, p0, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->this$0:Lcom/htc/app/mf/MfMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object v0, p0, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->mFvHdrs:[Lcom/htc/app/mf/Animation$ViewCacheHdr;

    .line 290
    iput-object v0, p0, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->mFvHdr:Lcom/htc/app/mf/Animation$ViewCacheHdr;

    .line 291
    iput-object v0, p0, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->mAfterAnimationRects:[Lcom/htc/app/mf/PaneRect;

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->mCancelled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/app/mf/MfMainActivity;Lcom/htc/app/mf/MfMainActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/htc/app/mf/MfMainActivity$AnimationListener;-><init>(Lcom/htc/app/mf/MfMainActivity;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 312
    const-string v0, "onAnimationCancel()"

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->mCancelled:Z

    .line 314
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "anim"

    .prologue
    .line 347
    const-string v4, "onAnimationEnd()"

    invoke-static {v4}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 349
    iget-object v4, p0, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->mFvHdrs:[Lcom/htc/app/mf/Animation$ViewCacheHdr;

    if-eqz v4, :cond_1

    .line 350
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->mFvHdrs:[Lcom/htc/app/mf/Animation$ViewCacheHdr;

    .local v0, arr$:[Lcom/htc/app/mf/Animation$ViewCacheHdr;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 351
    .local v1, fvHdr:Lcom/htc/app/mf/Animation$ViewCacheHdr;
    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {v1}, Lcom/htc/app/mf/Animation$ViewCacheHdr;->restore()V

    .line 350
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    .end local v0           #arr$:[Lcom/htc/app/mf/Animation$ViewCacheHdr;
    .end local v1           #fvHdr:Lcom/htc/app/mf/Animation$ViewCacheHdr;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    iget-boolean v4, p0, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->mCancelled:Z

    if-nez v4, :cond_2

    .line 358
    iget-object v4, p0, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->mAfterAnimationRects:[Lcom/htc/app/mf/PaneRect;

    if-eqz v4, :cond_2

    .line 359
    iget-object v4, p0, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->this$0:Lcom/htc/app/mf/MfMainActivity;

    iget-object v5, p0, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->mAfterAnimationRects:[Lcom/htc/app/mf/PaneRect;

    #calls: Lcom/htc/app/mf/MfMainActivity;->changeCurrentPaneLayouts([Lcom/htc/app/mf/PaneRect;)V
    invoke-static {v4, v5}, Lcom/htc/app/mf/MfMainActivity;->access$100(Lcom/htc/app/mf/MfMainActivity;[Lcom/htc/app/mf/PaneRect;)V

    .line 363
    :cond_2
    iget-object v4, p0, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->this$0:Lcom/htc/app/mf/MfMainActivity;

    const/4 v5, 0x0

    #setter for: Lcom/htc/app/mf/MfMainActivity;->mRunningAnimator:Landroid/animation/Animator;
    invoke-static {v4, v5}, Lcom/htc/app/mf/MfMainActivity;->access$202(Lcom/htc/app/mf/MfMainActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 365
    iget-object v4, p0, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->this$0:Lcom/htc/app/mf/MfMainActivity;

    invoke-virtual {v4}, Lcom/htc/app/mf/MfMainActivity;->afterAnimation()V

    .line 366
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 321
    const-string v0, "onAnimationRepeat()"

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5
    .parameter "anim"

    .prologue
    .line 329
    const-string v4, "onAnimationStart()"

    invoke-static {v4}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 332
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->mCancelled:Z

    .line 334
    iget-object v4, p0, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->this$0:Lcom/htc/app/mf/MfMainActivity;

    invoke-virtual {v4}, Lcom/htc/app/mf/MfMainActivity;->beforeAnimation()V

    .line 336
    iget-object v4, p0, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->mFvHdrs:[Lcom/htc/app/mf/Animation$ViewCacheHdr;

    if-eqz v4, :cond_1

    .line 337
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->mFvHdrs:[Lcom/htc/app/mf/Animation$ViewCacheHdr;

    .local v0, arr$:[Lcom/htc/app/mf/Animation$ViewCacheHdr;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 338
    .local v1, fvHdr:Lcom/htc/app/mf/Animation$ViewCacheHdr;
    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {v1}, Lcom/htc/app/mf/Animation$ViewCacheHdr;->apply()V

    .line 337
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    .end local v0           #arr$:[Lcom/htc/app/mf/Animation$ViewCacheHdr;
    .end local v1           #fvHdr:Lcom/htc/app/mf/Animation$ViewCacheHdr;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    return-void
.end method

.method setAfterAnimationRects([Lcom/htc/app/mf/PaneRect;)V
    .locals 0
    .parameter "rects"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->mAfterAnimationRects:[Lcom/htc/app/mf/PaneRect;

    .line 305
    return-void
.end method

.method setViewsToCache([Landroid/view/View;)V
    .locals 4
    .parameter "views"

    .prologue
    .line 297
    array-length v1, p1

    new-array v1, v1, [Lcom/htc/app/mf/Animation$ViewCacheHdr;

    iput-object v1, p0, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->mFvHdrs:[Lcom/htc/app/mf/Animation$ViewCacheHdr;

    .line 298
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->mFvHdrs:[Lcom/htc/app/mf/Animation$ViewCacheHdr;

    new-instance v2, Lcom/htc/app/mf/Animation$ViewCacheHdr;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/htc/app/mf/Animation$ViewCacheHdr;-><init>(Landroid/view/View;)V

    aput-object v2, v1, v0

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    return-void
.end method
