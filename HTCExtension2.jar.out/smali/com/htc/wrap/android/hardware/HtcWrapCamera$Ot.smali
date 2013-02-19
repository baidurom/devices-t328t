.class public Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;
.super Ljava/lang/Object;
.source "HtcWrapCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/hardware/HtcWrapCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ot"
.end annotation


# instance fields
.field public id:I

.field public rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/htc/wrap/android/hardware/HtcWrapCamera;


# direct methods
.method public constructor <init>(Lcom/htc/wrap/android/hardware/HtcWrapCamera;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;->this$0:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;->id:I

    .line 82
    return-void
.end method
