.class Lcom/htc/util/mail/MailManager$HandleChangeRequester$1;
.super Ljava/lang/Object;
.source "MailManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/mail/MailManager$HandleChangeRequester;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/util/mail/MailManager$HandleChangeRequester;


# direct methods
.method constructor <init>(Lcom/htc/util/mail/MailManager$HandleChangeRequester;)V
    .locals 0
    .parameter

    .prologue
    .line 794
    iput-object p1, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester$1;->this$1:Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 796
    const-class v1, Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    monitor-enter v1

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester$1;->this$1:Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    iget-object v0, v0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->this$0:Lcom/htc/util/mail/MailManager;

    #calls: Lcom/htc/util/mail/MailManager;->doHandleMessageChange()V
    invoke-static {v0}, Lcom/htc/util/mail/MailManager;->access$100(Lcom/htc/util/mail/MailManager;)V

    .line 798
    iget-object v0, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester$1;->this$1:Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    const/4 v2, 0x0

    #setter for: Lcom/htc/util/mail/MailManager$HandleChangeRequester;->isHandleMessageChangeInProcessing:Z
    invoke-static {v0, v2}, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->access$202(Lcom/htc/util/mail/MailManager$HandleChangeRequester;Z)Z

    .line 799
    monitor-exit v1

    .line 800
    return-void

    .line 799
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
