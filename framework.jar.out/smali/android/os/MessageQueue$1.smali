.class Landroid/os/MessageQueue$1;
.super Ljava/lang/Object;
.source "MessageQueue.java"

# interfaces
.implements Landroid/os/MessageQueue$TicketAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/MessageQueue;


# direct methods
.method constructor <init>(Landroid/os/MessageQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Landroid/os/MessageQueue$1;->this$0:Landroid/os/MessageQueue;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isVIP(Landroid/os/Message;Z)Z
    .locals 6
    .parameter "msg"
    .parameter "debugEnabled"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 416
    iget-wide v2, p1, Landroid/os/Message;->expressNo:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 429
    :goto_0
    :sswitch_0
    return v0

    .line 418
    :cond_0
    iget-wide v2, p1, Landroid/os/Message;->expressNo:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    move v0, v1

    .line 419
    goto :goto_0

    .line 421
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/view/ViewRootImpl;

    if-ne v2, v3, :cond_2

    .line 422
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :cond_2
    move v0, v1

    .line 429
    goto :goto_0

    .line 422
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3eb -> :sswitch_0
        0x3ee -> :sswitch_0
    .end sparse-switch
.end method
