.class Lcom/htc/painting/penmenu/PenManager$PenTypeLoadingHandler;
.super Landroid/os/Handler;
.source "PenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/PenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PenTypeLoadingHandler"
.end annotation


# static fields
.field public static final MSG_INIT:I


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/painting/penmenu/PenManager;


# direct methods
.method public constructor <init>(Lcom/htc/painting/penmenu/PenManager;Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "looper"
    .parameter "context"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenManager$PenTypeLoadingHandler;->this$0:Lcom/htc/painting/penmenu/PenManager;

    .line 186
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 187
    iput-object p3, p0, Lcom/htc/painting/penmenu/PenManager$PenTypeLoadingHandler;->mContext:Landroid/content/Context;

    .line 188
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    .line 199
    .local v0, type:I
    if-nez v0, :cond_0

    .line 200
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenManager$PenTypeLoadingHandler;->this$0:Lcom/htc/painting/penmenu/PenManager;

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenManager$PenTypeLoadingHandler;->mContext:Landroid/content/Context;

    #calls: Lcom/htc/painting/penmenu/PenManager;->loadPenType(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/htc/painting/penmenu/PenManager;->access$000(Lcom/htc/painting/penmenu/PenManager;Landroid/content/Context;)V

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenManager$PenTypeLoadingHandler;->this$0:Lcom/htc/painting/penmenu/PenManager;

    #calls: Lcom/htc/painting/penmenu/PenManager;->notifyLoadFinish()V
    invoke-static {v1}, Lcom/htc/painting/penmenu/PenManager;->access$100(Lcom/htc/painting/penmenu/PenManager;)V

    .line 204
    return-void
.end method
