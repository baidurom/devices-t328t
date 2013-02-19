.class public Lcom/htc/wrap/android/hardware/HtcWrapCamera;
.super Ljava/lang/Object;
.source "HtcWrapCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/hardware/HtcWrapCamera$1;,
        Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;,
        Lcom/htc/wrap/android/hardware/HtcWrapCamera$InnerOtListener;,
        Lcom/htc/wrap/android/hardware/HtcWrapCamera$IfOtListener;,
        Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcInnerCallback;,
        Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcIfCallback;
    }
.end annotation


# static fields
.field public static final CAMERA_STEREO_PROHIBIT:I = 0x3d0

.field private static final TAG:Ljava/lang/String; = "HtcWrapCamera"


# instance fields
.field private mHtcIfCallback:Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcIfCallback;

.field private mHtcInnerCallback:Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcInnerCallback;

.field private mIfOtListener:Lcom/htc/wrap/android/hardware/HtcWrapCamera$IfOtListener;

.field private mInnerOtListener:Lcom/htc/wrap/android/hardware/HtcWrapCamera$InnerOtListener;

.field private mWrapOts:[Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcInnerCallback;

    invoke-direct {v0, p0, v1}, Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcInnerCallback;-><init>(Lcom/htc/wrap/android/hardware/HtcWrapCamera;Lcom/htc/wrap/android/hardware/HtcWrapCamera$1;)V

    iput-object v0, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mHtcInnerCallback:Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcInnerCallback;

    .line 14
    iput-object v1, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mHtcIfCallback:Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcIfCallback;

    .line 16
    new-instance v0, Lcom/htc/wrap/android/hardware/HtcWrapCamera$InnerOtListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/wrap/android/hardware/HtcWrapCamera$InnerOtListener;-><init>(Lcom/htc/wrap/android/hardware/HtcWrapCamera;Lcom/htc/wrap/android/hardware/HtcWrapCamera$1;)V

    iput-object v0, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mInnerOtListener:Lcom/htc/wrap/android/hardware/HtcWrapCamera$InnerOtListener;

    .line 17
    iput-object v1, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mIfOtListener:Lcom/htc/wrap/android/hardware/HtcWrapCamera$IfOtListener;

    .line 75
    return-void
.end method

.method static synthetic access$200(Lcom/htc/wrap/android/hardware/HtcWrapCamera;)Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcIfCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mHtcIfCallback:Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcIfCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/wrap/android/hardware/HtcWrapCamera;)Lcom/htc/wrap/android/hardware/HtcWrapCamera$IfOtListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mIfOtListener:Lcom/htc/wrap/android/hardware/HtcWrapCamera$IfOtListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/wrap/android/hardware/HtcWrapCamera;)[Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mWrapOts:[Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/wrap/android/hardware/HtcWrapCamera;[Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;)[Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mWrapOts:[Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;

    return-object p1
.end method


# virtual methods
.method public setHtcCallback(Landroid/hardware/Camera;Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcIfCallback;)V
    .locals 1
    .parameter "camera"
    .parameter "cb"

    .prologue
    .line 25
    iput-object p2, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mHtcIfCallback:Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcIfCallback;

    .line 26
    iget-object v0, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mHtcInnerCallback:Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcInnerCallback;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setHtcCallback(Landroid/hardware/Camera$HtcCallback;)V

    .line 27
    return-void
.end method

.method public setOtListener(Landroid/hardware/Camera;Lcom/htc/wrap/android/hardware/HtcWrapCamera$IfOtListener;)V
    .locals 1
    .parameter "camera"
    .parameter "listener"

    .prologue
    .line 52
    iput-object p2, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mIfOtListener:Lcom/htc/wrap/android/hardware/HtcWrapCamera$IfOtListener;

    .line 53
    iget-object v0, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mInnerOtListener:Lcom/htc/wrap/android/hardware/HtcWrapCamera$InnerOtListener;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setOtDetectionListener(Landroid/hardware/Camera$OtDetectionListener;)V

    .line 54
    return-void
.end method
