.class public Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$SimpleOnGestureListener;
.super Ljava/lang/Object;
.source "ThreeFingersGestureDetector.java"

# interfaces
.implements Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onEnd()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method
