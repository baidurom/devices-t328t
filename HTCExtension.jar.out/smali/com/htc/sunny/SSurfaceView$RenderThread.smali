.class public Lcom/htc/sunny/SSurfaceView$RenderThread;
.super Ljava/lang/Thread;
.source "SSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny/SSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RenderThread"
.end annotation


# instance fields
.field mFakeObj:Ljava/lang/Object;

.field private mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPause:Z

.field private mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field final synthetic this$0:Lcom/htc/sunny/SSurfaceView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny/SSurfaceView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "threadName"

    .prologue
    const/4 v1, 0x0

    .line 750
    iput-object p1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    .line 751
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 739
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mFakeObj:Ljava/lang/Object;

    .line 741
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 742
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 743
    iput-boolean v1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mPause:Z

    .line 744
    iput-boolean v1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mStop:Z

    .line 752
    return-void
.end method


# virtual methods
.method public addOperator(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "operator"

    .prologue
    .line 862
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mStop:Z

    if-ne v0, v1, :cond_1

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 865
    monitor-enter p0

    .line 866
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 867
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pauseWorker()V
    .locals 1

    .prologue
    .line 828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mPause:Z

    .line 829
    monitor-enter p0

    .line 830
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 831
    monitor-exit p0

    .line 832
    return-void

    .line 831
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public render()V
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v0, :cond_0

    .line 885
    :goto_0
    return-void

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 877
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mFakeObj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 882
    :cond_1
    monitor-enter p0

    .line 883
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 884
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resumeWorker()V
    .locals 1

    .prologue
    .line 839
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mPause:Z

    .line 840
    monitor-enter p0

    .line 841
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 842
    monitor-exit p0

    .line 843
    return-void

    .line 842
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 760
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 763
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 764
    .local v2, runableOP:Ljava/lang/Runnable;
    const/4 v3, 0x0

    .line 765
    .local v3, runableStateOP:Ljava/lang/Runnable;
    const/4 v1, 0x0

    .line 767
    .local v1, render:Ljava/lang/Object;
    iget-boolean v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mStop:Z

    if-ne v5, v4, :cond_3

    .line 768
    const-string v4, "3DGlideMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SSurfaceView] stop work thread"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView$RenderThread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v4}, Lcom/htc/sunny/SSurfaceView;->unBindSurfaceR()V

    .line 771
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v4}, Lcom/htc/sunny/SSurfaceView;->destroySunnyR()V

    .line 814
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v4, :cond_1

    .line 815
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 817
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v4, :cond_2

    .line 818
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 820
    :cond_2
    const-string v4, "3DGlideMode"

    const-string v5, "[SSurfaceView] 3D Render thread exit."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return-void

    .line 775
    :cond_3
    iget-boolean v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mPause:Z

    if-ne v5, v4, :cond_4

    .line 776
    monitor-enter p0

    .line 778
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 785
    :cond_4
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 786
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #runableOP:Ljava/lang/Runnable;
    check-cast v2, Ljava/lang/Runnable;

    .line 787
    .restart local v2       #runableOP:Ljava/lang/Runnable;
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 788
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    #getter for: Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z
    invoke-static {v4}, Lcom/htc/sunny/SSurfaceView;->access$500(Lcom/htc/sunny/SSurfaceView;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 789
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v1

    .line 793
    .end local v1           #render:Ljava/lang/Object;
    :cond_6
    if-nez v2, :cond_8

    if-nez v1, :cond_8

    if-nez v3, :cond_8

    .line 794
    monitor-enter p0

    .line 796
    :try_start_2
    iget-boolean v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mStop:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v5, v4, :cond_7

    .line 797
    :try_start_3
    monitor-exit p0

    goto/16 :goto_0

    .line 804
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 779
    .restart local v1       #render:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 780
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 782
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 799
    .end local v1           #render:Ljava/lang/Object;
    :cond_7
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 800
    :try_start_6
    monitor-exit p0

    goto/16 :goto_0

    .line 801
    :catch_1
    move-exception v0

    .line 802
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 804
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 807
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_8
    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 808
    :cond_9
    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 809
    :cond_a
    if-eqz v1, :cond_0

    .line 810
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    #getter for: Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;
    invoke-static {v4}, Lcom/htc/sunny/SSurfaceView;->access$400(Lcom/htc/sunny/SSurfaceView;)Lcom/htc/sunny/SView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny/SView;->renderAndUpdate3D()V

    .line 811
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v4}, Lcom/htc/sunny/SSurfaceView;->render3D()V

    goto/16 :goto_0
.end method

.method public stopWorker()V
    .locals 2

    .prologue
    .line 850
    monitor-enter p0

    .line 851
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mStop:Z

    .line 852
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mFakeObj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 853
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 854
    monitor-exit p0

    .line 855
    return-void

    .line 854
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
