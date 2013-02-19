.class Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$GestureHandler;
.super Landroid/os/Handler;
.source "ThreeFingersGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;


# direct methods
.method constructor <init>(Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$GestureHandler;->this$0:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;

    .line 103
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 104
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 123
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$GestureHandler;->this$0:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;

    #getter for: Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mIs3FingersDetected:Z
    invoke-static {v0}, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->access$000(Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$GestureHandler;->this$0:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;

    #getter for: Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mListener:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;
    invoke-static {v0}, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->access$100(Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;)Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$GestureHandler;->this$0:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;

    #getter for: Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mListener:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;
    invoke-static {v0}, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->access$100(Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;)Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;->onEnd()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$GestureHandler;->this$0:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;

    #calls: Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->cancel()V
    invoke-static {v0}, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->access$200(Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;)V

    .line 125
    :cond_1
    return-void

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1388
        :pswitch_0
    .end packed-switch
.end method
