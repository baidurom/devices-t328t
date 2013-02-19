.class public Lcom/htc/view/animation/QuickTipsAnimationLib;
.super Ljava/lang/Object;
.source "QuickTipsAnimationLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/view/animation/QuickTipsAnimationLib$1;,
        Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationEventDispatcher;,
        Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "QuickTipsAnimation"

.field public static final PAGE_CURRENT:I = 0x0

.field public static final PAGE_NEXT:I = 0x1

.field public static final PAGE_PREVIOUS:I = -0x1

.field private static animationEventDispatcher:Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationEventDispatcher;

.field private static enabled:Z

.field private static loaded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private static native CurlBegin(IIZ)I
.end method

.method private static native CurlEnd(ZJ)I
.end method

.method private static native Curling(II)I
.end method

.method private static native InitializeCurlEngine(II)V
.end method

.method private static native IsAnimating()Z
.end method

.method private static native IsEngineInitiated()Z
.end method

.method private static native QuickTipsAnimation(ZJ)I
.end method

.method private static native RenderAnimationFrame()I
.end method

.method private static native SetAnimationListener(Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;)V
.end method

.method private static native SetCurlEngineDimensions(II)V
.end method

.method private static native SetPageBackgroundColor(IIII)V
.end method

.method private static native TerminateCurlEngine()V
.end method

.method private static native UpdatePageImage(Landroid/graphics/Bitmap;I)V
.end method

.method private static native ZoomAnimation(FFJ)I
.end method

.method public static addAnimationListener(Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 121
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->getPageCurlAnimationEventDispatcher()Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationEventDispatcher;->addPageCurlAnimationListener(Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;)V

    goto :goto_0
.end method

.method public static curlBegin(IIZ)I
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "bRightSide"

    .prologue
    .line 307
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    const/4 v0, -0x1

    .line 310
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/view/animation/QuickTipsAnimationLib;->CurlBegin(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method public static curlEnd(ZJ)I
    .locals 1
    .parameter "bTurnPage"
    .parameter "nRenderedTime"

    .prologue
    .line 329
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    const/4 v0, -0x1

    .line 332
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/view/animation/QuickTipsAnimationLib;->CurlEnd(ZJ)I

    move-result v0

    goto :goto_0
.end method

.method public static curling(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 318
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    const/4 v0, -0x1

    .line 321
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/htc/view/animation/QuickTipsAnimationLib;->Curling(II)I

    move-result v0

    goto :goto_0
.end method

.method private static getPageCurlAnimationEventDispatcher()Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationEventDispatcher;
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/htc/view/animation/QuickTipsAnimationLib;->animationEventDispatcher:Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationEventDispatcher;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationEventDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationEventDispatcher;-><init>(Lcom/htc/view/animation/QuickTipsAnimationLib$1;)V

    sput-object v0, Lcom/htc/view/animation/QuickTipsAnimationLib;->animationEventDispatcher:Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationEventDispatcher;

    .line 113
    :cond_0
    sget-object v0, Lcom/htc/view/animation/QuickTipsAnimationLib;->animationEventDispatcher:Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationEventDispatcher;

    return-object v0
.end method

.method public static initializeCurlEngine(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 147
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->getPageCurlAnimationEventDispatcher()Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationEventDispatcher;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/view/animation/QuickTipsAnimationLib;->SetAnimationListener(Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;)V

    .line 151
    invoke-static {p0, p1}, Lcom/htc/view/animation/QuickTipsAnimationLib;->InitializeCurlEngine(II)V

    goto :goto_0
.end method

.method public static isAnimating()Z
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->IsAnimating()Z

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized isEnabled()Z
    .locals 5

    .prologue
    .line 48
    const-class v2, Lcom/htc/view/animation/QuickTipsAnimationLib;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/htc/view/animation/QuickTipsAnimationLib;->loaded:Z

    if-eqz v1, :cond_0

    .line 49
    sget-boolean v1, Lcom/htc/view/animation/QuickTipsAnimationLib;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .local v0, t:Ljava/lang/Throwable;
    :goto_0
    monitor-exit v2

    return v1

    .line 52
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_0
    :try_start_1
    const-string v1, "tipsani"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    .restart local v0       #t:Ljava/lang/Throwable;
    :goto_1
    const/4 v1, 0x1

    :try_start_2
    sput-boolean v1, Lcom/htc/view/animation/QuickTipsAnimationLib;->loaded:Z

    .line 59
    sget-boolean v1, Lcom/htc/view/animation/QuickTipsAnimationLib;->enabled:Z

    goto :goto_0

    .line 54
    .end local v0           #t:Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 55
    .restart local v0       #t:Ljava/lang/Throwable;
    const-string v1, "QuickTipsAnimation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/htc/view/animation/QuickTipsAnimationLib;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/view/animation/QuickTipsAnimationLib;->enabled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static isEngineInitiated()Z
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->IsEngineInitiated()Z

    move-result v0

    goto :goto_0
.end method

.method public static quickTipsAnimation(ZJ)V
    .locals 1
    .parameter "bRightSide"
    .parameter "nRenderedTime"

    .prologue
    .line 247
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/view/animation/QuickTipsAnimationLib;->QuickTipsAnimation(ZJ)I

    goto :goto_0
.end method

.method public static removeAnimationListener(Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 132
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->getPageCurlAnimationEventDispatcher()Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationEventDispatcher;->removePageCurlAnimationListener(Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;)V

    goto :goto_0
.end method

.method public static renderAnimationFrame()I
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    const/4 v0, -0x1

    .line 237
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->RenderAnimationFrame()I

    move-result v0

    goto :goto_0
.end method

.method public static setCurlEngineDimensions(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 198
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/view/animation/QuickTipsAnimationLib;->SetCurlEngineDimensions(II)V

    goto :goto_0
.end method

.method public static setPageBackgroundColor(IIII)V
    .locals 1
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 215
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/htc/view/animation/QuickTipsAnimationLib;->SetPageBackgroundColor(IIII)V

    goto :goto_0
.end method

.method public static terminateCurlEngine()V
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->TerminateCurlEngine()V

    goto :goto_0
.end method

.method public static updatePageImage(Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "image"
    .parameter "page_index"

    .prologue
    .line 342
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/view/animation/QuickTipsAnimationLib;->UpdatePageImage(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public static zoomAnimation(FFJ)V
    .locals 1
    .parameter "scale"
    .parameter "alpha"
    .parameter "nRenderedTime"

    .prologue
    .line 258
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/htc/view/animation/QuickTipsAnimationLib;->ZoomAnimation(FFJ)I

    goto :goto_0
.end method
