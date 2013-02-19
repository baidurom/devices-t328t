.class Lcom/android/server/wm/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"


# static fields
.field static final DEBUG:Z = false

.field static final FREEZE_LAYER:I = 0x1e8480

#the value of this static final field might be set in the static constructor
.field static final HWROTATE:I = 0x0

.field static final TAG:Ljava/lang/String; = "ScreenRotationAnimation"


# instance fields
.field mBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mContext:Landroid/content/Context;

.field mCurRotation:I

.field mEnterAnimation:Landroid/view/animation/Animation;

.field final mEnterTransformation:Landroid/view/animation/Transformation;

.field mExitAnimation:Landroid/view/animation/Animation;

.field final mExitTransformation:Landroid/view/animation/Transformation;

.field mHeight:I

.field mOriginalHeight:I

.field mOriginalRotation:I

.field mOriginalWidth:I

.field mSnapshotDeltaRotation:I

.field final mSnapshotFinalMatrix:Landroid/graphics/Matrix;

.field final mSnapshotInitialMatrix:Landroid/graphics/Matrix;

.field mSnapshotRotation:I

.field mStarted:Z

.field mSurface:Landroid/view/Surface;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "ro.sf.hwrotation"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/wm/ScreenRotationAnimation;->HWROTATE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceSession;ZIII)V
    .locals 11
    .parameter "context"
    .parameter "session"
    .parameter "inTransaction"
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "originalRotation"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    .line 62
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    .line 65
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 66
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    .line 67
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 68
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    .line 72
    iput-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    .line 75
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotRotation:I

    .line 91
    const/4 v1, 0x1

    move/from16 v0, p6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    move/from16 v0, p6

    if-ne v0, v1, :cond_5

    .line 93
    :cond_0
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 94
    iput p4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    .line 100
    :goto_0
    move/from16 v0, p6

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    .line 101
    iput p4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    .line 102
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 104
    if-nez p3, :cond_2

    .line 105
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_1

    const-string v1, "WindowManager"

    const-string v2, ">>> OPEN TRANSACTION ScreenRotationAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_1
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 112
    :cond_2
    :try_start_0
    new-instance v1, Landroid/view/Surface;

    const/4 v3, 0x0

    const-string v4, "FreezeSurface"

    const/4 v5, -0x1

    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    const/4 v8, -0x1

    const v9, 0x30004

    move-object v2, p2

    invoke-direct/range {v1 .. v9}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    .line 114
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_6

    .line 116
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    if-nez p3, :cond_4

    .line 132
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 133
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_4

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION ScreenRotationAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_4
    :goto_1
    return-void

    .line 96
    :cond_5
    iput p4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 97
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    goto :goto_0

    .line 119
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    const v2, 0x1e8481

    invoke-virtual {v1, v2}, Landroid/view/Surface;->setLayer(I)V

    .line 120
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    :goto_2
    :try_start_2
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-nez v1, :cond_8

    .line 129
    :goto_3
    move/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    if-nez p3, :cond_4

    .line 132
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 133
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_4

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION ScreenRotationAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 121
    :catch_0
    move-exception v10

    .line 122
    .local v10, e:Landroid/view/Surface$OutOfResourcesException;
    :try_start_3
    const-string v1, "ScreenRotationAnimation"

    const-string v2, "Unable to allocate freeze surface"

    invoke-static {v1, v2, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 131
    .end local v10           #e:Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v1

    if-nez p3, :cond_7

    .line 132
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 133
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_7

    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    throw v1

    .line 126
    :cond_8
    :try_start_4
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  FREEZE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": CREATE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method public static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .locals 2
    .parameter "rotation"
    .parameter "width"
    .parameter "height"
    .parameter "outMatrix"

    .prologue
    const/4 v1, 0x0

    .line 172
    packed-switch p0, :pswitch_data_0

    .line 189
    :goto_0
    return-void

    .line 174
    :pswitch_0
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    .line 177
    :pswitch_1
    const/high16 v0, 0x42b4

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 178
    int-to-float v0, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 181
    :pswitch_2
    const/high16 v0, 0x4334

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 182
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 185
    :pswitch_3
    const/high16 v0, 0x4387

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 186
    int-to-float v0, p1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static deltaRotation(II)I
    .locals 1
    .parameter "oldRotation"
    .parameter "newRotation"

    .prologue
    .line 144
    sub-int v0, p1, p0

    .line 145
    .local v0, delta:I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 146
    :cond_0
    return v0
.end method


# virtual methods
.method public dismiss(Landroid/view/SurfaceSession;JFII)Z
    .locals 8
    .parameter "session"
    .parameter "maxAnimationDuration"
    .parameter "animationScale"
    .parameter "finalWidth"
    .parameter "finalHeight"

    .prologue
    const/4 v4, 0x0

    .line 210
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-nez v5, :cond_0

    .line 274
    :goto_0
    return v4

    .line 216
    :cond_0
    iget v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v5, v6}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v0

    .line 218
    .local v0, delta:I
    packed-switch v0, :pswitch_data_0

    .line 249
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v5, p5, p6, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 250
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v5, p5, p6, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 251
    iput-boolean v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    .line 253
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p2, p3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 254
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 255
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p2, p3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 256
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 258
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v4, :cond_1

    const-string v4, "WindowManager"

    const-string v5, ">>> OPEN TRANSACTION ScreenRotationAnimation.dismiss"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 263
    :try_start_0
    new-instance v3, Landroid/graphics/Rect;

    neg-int v4, p5

    neg-int v5, p6

    mul-int/lit8 v6, p5, 0x2

    mul-int/lit8 v7, p6, 0x2

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 264
    .local v3, outer:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, p5, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 265
    .local v2, inner:Landroid/graphics/Rect;
    new-instance v4, Lcom/android/server/wm/BlackFrame;

    const v5, 0x1e8480

    invoke-direct {v4, p1, v3, v2, v5}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iput-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 270
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v4, :cond_2

    const-string v4, "WindowManager"

    const-string v5, "<<< CLOSE TRANSACTION ScreenRotationAnimation.dismiss"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v2           #inner:Landroid/graphics/Rect;
    .end local v3           #outer:Landroid/graphics/Rect;
    :cond_2
    :goto_2
    const/4 v4, 0x1

    goto :goto_0

    .line 220
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, 0x10a002d

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 222
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, 0x10a002c

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 226
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, 0x10a0033

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 228
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, 0x10a0032

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 232
    :pswitch_2
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, 0x10a002f

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 234
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, 0x10a002e

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 238
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, 0x10a0031

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 240
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, 0x10a0030

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, e:Landroid/view/Surface$OutOfResourcesException;
    :try_start_1
    const-string v4, "ScreenRotationAnimation"

    const-string v5, "Unable to allocate black surface"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 270
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v4, :cond_2

    const-string v4, "WindowManager"

    const-string v5, "<<< CLOSE TRANSACTION ScreenRotationAnimation.dismiss"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 269
    .end local v1           #e:Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v4

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 270
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v5, :cond_3

    const-string v5, "WindowManager"

    const-string v6, "<<< CLOSE TRANSACTION ScreenRotationAnimation.dismiss"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    throw v4

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getEnterTransformation()Landroid/view/animation/Transformation;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method hasScreenshot()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kill()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 278
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 279
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_4

    .line 282
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 283
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 290
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 294
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 296
    :cond_3
    return-void

    .line 280
    :cond_4
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  FREEZE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": DESTROY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRotation(I)V
    .locals 4
    .parameter "rotation"

    .prologue
    .line 193
    iput p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    .line 198
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotRotation:I

    invoke-static {p1, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v0

    .line 199
    .local v0, delta:I
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 202
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f80

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransform(Landroid/graphics/Matrix;F)V

    .line 203
    return-void
.end method

.method setSnapshotTransform(Landroid/graphics/Matrix;F)V
    .locals 6
    .parameter "matrix"
    .parameter "alpha"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setPosition(FF)V

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/Surface;->setMatrix(FFFF)V

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p2}, Landroid/view/Surface;->setAlpha(F)V

    .line 168
    :cond_0
    return-void
.end method

.method public stepAnimation(J)Z
    .locals 7
    .parameter "now"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 303
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_1

    .line 366
    :cond_0
    :goto_0
    return v2

    .line 307
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v4, :cond_4

    .line 308
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_2

    .line 309
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 311
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_3

    .line 312
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 314
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    .line 317
    const-string v4, "WindowManager"

    const-string v5, "Starting rotation animaiton"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 323
    const/4 v1, 0x0

    .line 324
    .local v1, moreExit:Z
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_5

    .line 325
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, p1, p2, v5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    .line 327
    if-nez v1, :cond_5

    .line 329
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    .line 330
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 331
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 332
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_5

    .line 333
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->hide()V

    .line 338
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, moreEnter:Z
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_6

    .line 341
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, p1, p2, v5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 342
    if-nez v0, :cond_9

    .line 343
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    .line 344
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 345
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 346
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v4, :cond_6

    .line 347
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v4}, Lcom/android/server/wm/BlackFrame;->hide()V

    .line 356
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 357
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransform(Landroid/graphics/Matrix;F)V

    .line 361
    if-nez v0, :cond_7

    if-nez v1, :cond_7

    .line 362
    const-string v4, "WindowManager"

    const-string v5, "end of ratation animation"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_7
    if-nez v0, :cond_8

    if-eqz v1, :cond_0

    :cond_8
    move v2, v3

    goto/16 :goto_0

    .line 350
    :cond_9
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v4, :cond_6

    .line 351
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_1
.end method
