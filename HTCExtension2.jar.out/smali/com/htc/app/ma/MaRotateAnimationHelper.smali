.class public Lcom/htc/app/ma/MaRotateAnimationHelper;
.super Ljava/lang/Object;
.source "MaRotateAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/ma/MaRotateAnimationHelper$MaAnimationSet;
    }
.end annotation


# static fields
.field private static final DURATION_LANDSCAPE:J = 0x1f4L

.field private static final DURATION_PORTRAIT:J = 0x1f4L

.field private static final HEIGHT_LANDSCAPE:I = 0x238

.field private static final HEIGHT_PORTRAIT:I = 0x3e0

.field private static final HIDE_STATUSBAR_ENABLED:Z = true

.field private static final LANDSCAPE_LEFT:I = 0x1

.field private static final LANDSCAPE_RIGHT:I = 0x3

.field private static final PORTRAIT:I = 0x0

.field private static final PORTRAIT_UP_SIDE_DOWN:I = 0x2

.field private static final RAISED_PRIORITY:I = -0x8

.field private static final ROTATE_ANIM_LAND2PORT_LEFT:I = 0x20000003

.field private static final ROTATE_ANIM_LAND2PORT_RIGHT:I = 0x20000004

.field private static final ROTATE_ANIM_PORT2LAND_LEFT:I = 0x20000001

.field private static final ROTATE_ANIM_PORT2LAND_RIGHT:I = 0x20000002

.field private static final SCREEN_LONG:I = 0x400

.field private static final SCREEN_SHORT:I = 0x258

.field private static final START_OFFSET_LANDSCAPE:J = 0x32L

.field private static final START_OFFSET_PORTRAIT:J = 0x32L

.field private static final STATUS_BAR_HEIGHT:I = 0x20

.field private static final UNKNOWN:I = -0x1

.field private static final WIDTH_LANDSCAPE:I = 0x400

.field private static final WIDTH_PORTRAIT:I = 0x258

.field private static mOriginalPadding:I

.field private static mPriority:I


# instance fields
.field private mAngle:I

.field private mCurrOrientation:I

.field private mDecelate:Landroid/view/animation/DecelerateInterpolator;

.field private mMaMainActivity:Lcom/htc/app/ma/MaMainActivity;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPaused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    sput v0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mOriginalPadding:I

    .line 320
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    sput v0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mPriority:I

    return-void
.end method

.method public constructor <init>(Lcom/htc/app/ma/MaMainActivity;)V
    .locals 1
    .parameter "maMainActivity"

    .prologue
    const/4 v0, -0x1

    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mAngle:I

    .line 58
    iput v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mCurrOrientation:I

    .line 59
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mDecelate:Landroid/view/animation/DecelerateInterpolator;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mPaused:Z

    .line 111
    iput-object p1, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mMaMainActivity:Lcom/htc/app/ma/MaMainActivity;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/htc/app/ma/MaRotateAnimationHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mAngle:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/app/ma/MaRotateAnimationHelper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mAngle:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/app/ma/MaRotateAnimationHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mCurrOrientation:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/app/ma/MaRotateAnimationHelper;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/htc/app/ma/MaRotateAnimationHelper;->judgeDirectionIsLeft(I)Z

    move-result v0

    return v0
.end method

.method private judgeDirectionIsLeft(I)Z
    .locals 6
    .parameter "angle"

    .prologue
    const/16 v5, 0xe1

    const/16 v4, 0x87

    const/4 v3, 0x3

    .line 266
    const/16 v2, 0x2d

    if-le p1, v2, :cond_0

    if-gt p1, v4, :cond_0

    .line 267
    const/4 v1, 0x0

    .line 278
    .local v1, newOrientation:I
    :goto_0
    iget v2, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mCurrOrientation:I

    if-nez v2, :cond_3

    if-ne v1, v3, :cond_3

    .line 279
    const/4 v0, 0x0

    .line 288
    .local v0, isLeft:Z
    :goto_1
    iput v1, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mCurrOrientation:I

    .line 289
    return v0

    .line 269
    .end local v0           #isLeft:Z
    .end local v1           #newOrientation:I
    :cond_0
    if-le p1, v4, :cond_1

    if-gt p1, v5, :cond_1

    .line 270
    const/4 v1, 0x3

    .restart local v1       #newOrientation:I
    goto :goto_0

    .line 272
    .end local v1           #newOrientation:I
    :cond_1
    if-le p1, v5, :cond_2

    const/16 v2, 0x13b

    if-gt p1, v2, :cond_2

    .line 273
    const/4 v1, 0x2

    .restart local v1       #newOrientation:I
    goto :goto_0

    .line 276
    .end local v1           #newOrientation:I
    :cond_2
    const/4 v1, 0x1

    .restart local v1       #newOrientation:I
    goto :goto_0

    .line 281
    :cond_3
    iget v2, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mCurrOrientation:I

    if-ne v2, v3, :cond_4

    if-nez v1, :cond_4

    .line 282
    const/4 v0, 0x1

    .restart local v0       #isLeft:Z
    goto :goto_1

    .line 285
    .end local v0           #isLeft:Z
    :cond_4
    iget v2, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mCurrOrientation:I

    if-le v1, v2, :cond_5

    const/4 v0, 0x1

    .restart local v0       #isLeft:Z
    :goto_2
    goto :goto_1

    .end local v0           #isLeft:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static raisePriority(Z)V
    .locals 3
    .parameter "raise"

    .prologue
    const/4 v2, -0x8

    .line 325
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 326
    .local v0, currentPriority:I
    if-eqz p0, :cond_1

    .line 327
    if-eq v0, v2, :cond_0

    .line 328
    sput v0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mPriority:I

    .line 329
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    sget v1, Lcom/htc/app/ma/MaRotateAnimationHelper;->mPriority:I

    if-eq v0, v1, :cond_0

    .line 333
    sget v1, Lcom/htc/app/ma/MaRotateAnimationHelper;->mPriority:I

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0
.end method

.method private static showStatusBar(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V
    .locals 4
    .parameter "a"
    .parameter "target"
    .parameter "showOrHide"

    .prologue
    const/16 v2, 0x800

    const/16 v1, 0x400

    .line 297
    if-eqz p2, :cond_0

    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 299
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 301
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sget v1, Lcom/htc/app/ma/MaRotateAnimationHelper;->mOriginalPadding:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 317
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 309
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 311
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sget v1, Lcom/htc/app/ma/MaRotateAnimationHelper;->mOriginalPadding:I

    add-int/lit8 v1, v1, 0x20

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mPaused:Z

    .line 260
    iget-object v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 261
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mPaused:Z

    .line 240
    iget-object v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/htc/app/ma/MaRotateAnimationHelper$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/app/ma/MaRotateAnimationHelper$1;-><init>(Lcom/htc/app/ma/MaRotateAnimationHelper;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 252
    return-void
.end method

.method public performRotateAnimation(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V
    .locals 4
    .parameter "activity"
    .parameter "target"
    .parameter "toPortrait"

    .prologue
    .line 128
    iget-boolean v3, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mPaused:Z

    if-eqz v3, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    :try_start_0
    iget v3, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mAngle:I

    invoke-direct {p0, v3}, Lcom/htc/app/ma/MaRotateAnimationHelper;->judgeDirectionIsLeft(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 215
    .local v2, toLeft:Z
    if-eqz p3, :cond_3

    .line 216
    if-eqz v2, :cond_2

    .line 217
    const v0, 0x20000003

    .local v0, animId:I
    goto :goto_0

    .line 219
    .end local v0           #animId:I
    :cond_2
    const v0, 0x20000004

    .restart local v0       #animId:I
    goto :goto_0

    .line 222
    .end local v0           #animId:I
    :cond_3
    if-eqz v2, :cond_0

    .line 223
    const v0, 0x20000001

    .restart local v0       #animId:I
    goto :goto_0

    .line 229
    .end local v0           #animId:I
    .end local v2           #toLeft:Z
    :catch_0
    move-exception v1

    .line 230
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setup(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    sput v0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mOriginalPadding:I

    .line 120
    return-void
.end method
