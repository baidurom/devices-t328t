.class public abstract Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;
.super Ljava/lang/Object;
.source "IdleScreenWindow.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

.field protected final mLayout:Landroid/view/WindowManager$LayoutParams;

.field protected mShow:I

.field protected mShowLiveWallpaper:Z

.field protected mVisibility:I

.field protected mWindowFlags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mVisibility:I

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    .line 20
    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    .line 22
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 39
    return-void
.end method


# virtual methods
.method protected attach()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method protected detach()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method protected doDestroy()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public finishDrawing()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIdleScreenEngine()Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    return-object v0
.end method

.method public getSession()Landroid/view/IWindowSession;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShowLiveWallpaper()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindow()Lcom/android/internal/view/BaseIWindow;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindowFlag()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    return v0
.end method

.method public getWindowLayout()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getWindowShow()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    return v0
.end method

.method public getWindowVisibility()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mVisibility:I

    return v0
.end method

.method public performHapticFeedback(IZ)V
    .locals 0
    .parameter "id"
    .parameter "flag"

    .prologue
    .line 227
    return-void
.end method

.method setEngine(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V
    .locals 1
    .parameter "engine"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    .line 43
    iget-object v0, p1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method protected setFormat(I)V
    .locals 0
    .parameter "format"

    .prologue
    .line 172
    return-void
.end method

.method public setShowLiveWallpaper(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    if-eq v0, p1, :cond_0

    .line 180
    iput-boolean p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    .line 189
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->requestUpdateSurface()V

    .line 191
    :cond_0
    return-void
.end method

.method protected setSurfaceSize()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public setWindowFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 108
    iput p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    .line 109
    return-void
.end method

.method public setWindowShow(Z)V
    .locals 2
    .parameter "show"

    .prologue
    const/4 v1, 0x0

    .line 86
    if-eqz p1, :cond_0

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    .line 92
    :goto_0
    invoke-virtual {p0, v1, v1, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->updateSurface(ZZZ)V

    .line 93
    return-void

    .line 90
    :cond_0
    iput v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    goto :goto_0
.end method

.method public setWindowVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 124
    iput p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mVisibility:I

    .line 125
    return-void
.end method

.method protected abstract updateSurface(ZZZ)V
.end method
