.class final Lcom/htc/wrap/android/hardware/HtcWrapCamera$InnerOtListener;
.super Ljava/lang/Object;
.source "HtcWrapCamera.java"

# interfaces
.implements Landroid/hardware/Camera$OtDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/hardware/HtcWrapCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InnerOtListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/wrap/android/hardware/HtcWrapCamera;


# direct methods
.method private constructor <init>(Lcom/htc/wrap/android/hardware/HtcWrapCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera$InnerOtListener;->this$0:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/wrap/android/hardware/HtcWrapCamera;Lcom/htc/wrap/android/hardware/HtcWrapCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/wrap/android/hardware/HtcWrapCamera$InnerOtListener;-><init>(Lcom/htc/wrap/android/hardware/HtcWrapCamera;)V

    return-void
.end method


# virtual methods
.method public onOtDetection([Landroid/hardware/Camera$Ot;Landroid/hardware/Camera;)V
    .locals 6
    .parameter "ots"
    .parameter "camera"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera$InnerOtListener;->this$0:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    #getter for: Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mIfOtListener:Lcom/htc/wrap/android/hardware/HtcWrapCamera$IfOtListener;
    invoke-static {v1}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->access$300(Lcom/htc/wrap/android/hardware/HtcWrapCamera;)Lcom/htc/wrap/android/hardware/HtcWrapCamera$IfOtListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera$InnerOtListener;->this$0:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    array-length v2, p1

    new-array v2, v2, [Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;

    #setter for: Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mWrapOts:[Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;
    invoke-static {v1, v2}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->access$402(Lcom/htc/wrap/android/hardware/HtcWrapCamera;[Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;)[Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;

    .line 64
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera$InnerOtListener;->this$0:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    #getter for: Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mWrapOts:[Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;
    invoke-static {v1}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->access$400(Lcom/htc/wrap/android/hardware/HtcWrapCamera;)[Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;

    move-result-object v1

    new-instance v2, Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;

    iget-object v3, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera$InnerOtListener;->this$0:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    invoke-direct {v2, v3}, Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;-><init>(Lcom/htc/wrap/android/hardware/HtcWrapCamera;)V

    aput-object v2, v1, v0

    .line 66
    iget-object v1, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera$InnerOtListener;->this$0:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    #getter for: Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mWrapOts:[Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;
    invoke-static {v1}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->access$400(Lcom/htc/wrap/android/hardware/HtcWrapCamera;)[Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;

    move-result-object v1

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    iget v2, v2, Landroid/hardware/Camera$Ot;->id:I

    iput v2, v1, Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;->id:I

    .line 67
    iget-object v1, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera$InnerOtListener;->this$0:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    #getter for: Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mWrapOts:[Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;
    invoke-static {v1}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->access$400(Lcom/htc/wrap/android/hardware/HtcWrapCamera;)[Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;

    move-result-object v1

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    iget-object v2, v2, Landroid/hardware/Camera$Ot;->rect:Landroid/graphics/Rect;

    iput-object v2, v1, Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;->rect:Landroid/graphics/Rect;

    .line 68
    const-string v1, "HtcWrapCamera"

    const-string v2, "WrapOts[%d] ,id=%d ,rect=%s "

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera$InnerOtListener;->this$0:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    #getter for: Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mWrapOts:[Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;
    invoke-static {v5}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->access$400(Lcom/htc/wrap/android/hardware/HtcWrapCamera;)[Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;

    move-result-object v5

    aget-object v5, v5, v0

    iget v5, v5, Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera$InnerOtListener;->this$0:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    #getter for: Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mWrapOts:[Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;
    invoke-static {v5}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->access$400(Lcom/htc/wrap/android/hardware/HtcWrapCamera;)[Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;

    move-result-object v5

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera$InnerOtListener;->this$0:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    #getter for: Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mIfOtListener:Lcom/htc/wrap/android/hardware/HtcWrapCamera$IfOtListener;
    invoke-static {v1}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->access$300(Lcom/htc/wrap/android/hardware/HtcWrapCamera;)Lcom/htc/wrap/android/hardware/HtcWrapCamera$IfOtListener;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera$InnerOtListener;->this$0:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    #getter for: Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mWrapOts:[Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;
    invoke-static {v2}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->access$400(Lcom/htc/wrap/android/hardware/HtcWrapCamera;)[Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/htc/wrap/android/hardware/HtcWrapCamera$IfOtListener;->onOtDetection([Lcom/htc/wrap/android/hardware/HtcWrapCamera$Ot;Landroid/hardware/Camera;)V

    .line 72
    .end local v0           #i:I
    :cond_1
    return-void
.end method
