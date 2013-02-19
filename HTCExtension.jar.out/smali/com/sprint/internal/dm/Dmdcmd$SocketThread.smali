.class public Lcom/sprint/internal/dm/Dmdcmd$SocketThread;
.super Ljava/lang/Thread;
.source "Dmdcmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/internal/dm/Dmdcmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocketThread"
.end annotation


# instance fields
.field private DMSendCommand:Ljava/lang/String;

.field final synthetic this$0:Lcom/sprint/internal/dm/Dmdcmd;


# direct methods
.method public constructor <init>(Lcom/sprint/internal/dm/Dmdcmd;)V
    .locals 1
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->this$0:Lcom/sprint/internal/dm/Dmdcmd;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->DMSendCommand:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public SetCommand(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->DMSendCommand:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 147
    :try_start_0
    iget-object v2, p0, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->this$0:Lcom/sprint/internal/dm/Dmdcmd;

    const/4 v3, 0x0

    #setter for: Lcom/sprint/internal/dm/Dmdcmd;->bConn:Z
    invoke-static {v2, v3}, Lcom/sprint/internal/dm/Dmdcmd;->access$002(Lcom/sprint/internal/dm/Dmdcmd;Z)Z

    .line 149
    iget-object v2, p0, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->this$0:Lcom/sprint/internal/dm/Dmdcmd;

    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->this$0:Lcom/sprint/internal/dm/Dmdcmd;

    #getter for: Lcom/sprint/internal/dm/Dmdcmd;->Hostname:Ljava/lang/String;
    invoke-static {v4}, Lcom/sprint/internal/dm/Dmdcmd;->access$200(Lcom/sprint/internal/dm/Dmdcmd;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->this$0:Lcom/sprint/internal/dm/Dmdcmd;

    #getter for: Lcom/sprint/internal/dm/Dmdcmd;->Port:I
    invoke-static {v5}, Lcom/sprint/internal/dm/Dmdcmd;->access$300(Lcom/sprint/internal/dm/Dmdcmd;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    #setter for: Lcom/sprint/internal/dm/Dmdcmd;->requestSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/sprint/internal/dm/Dmdcmd;->access$102(Lcom/sprint/internal/dm/Dmdcmd;Ljava/net/Socket;)Ljava/net/Socket;

    .line 150
    iget-object v2, p0, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->this$0:Lcom/sprint/internal/dm/Dmdcmd;

    #getter for: Lcom/sprint/internal/dm/Dmdcmd;->requestSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/sprint/internal/dm/Dmdcmd;->access$100(Lcom/sprint/internal/dm/Dmdcmd;)Ljava/net/Socket;

    move-result-object v2

    if-nez v2, :cond_0

    .line 152
    const-string v2, "dmdcmd"

    const-string v3, "Socket conn fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->this$0:Lcom/sprint/internal/dm/Dmdcmd;

    iget-object v3, p0, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->this$0:Lcom/sprint/internal/dm/Dmdcmd;

    #getter for: Lcom/sprint/internal/dm/Dmdcmd;->requestSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/sprint/internal/dm/Dmdcmd;->access$100(Lcom/sprint/internal/dm/Dmdcmd;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    #setter for: Lcom/sprint/internal/dm/Dmdcmd;->out:Ljava/io/OutputStream;
    invoke-static {v2, v3}, Lcom/sprint/internal/dm/Dmdcmd;->access$402(Lcom/sprint/internal/dm/Dmdcmd;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 157
    iget-object v2, p0, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->this$0:Lcom/sprint/internal/dm/Dmdcmd;

    #getter for: Lcom/sprint/internal/dm/Dmdcmd;->out:Ljava/io/OutputStream;
    invoke-static {v2}, Lcom/sprint/internal/dm/Dmdcmd;->access$400(Lcom/sprint/internal/dm/Dmdcmd;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 159
    iget-object v2, p0, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->this$0:Lcom/sprint/internal/dm/Dmdcmd;

    iget-object v3, p0, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->this$0:Lcom/sprint/internal/dm/Dmdcmd;

    #getter for: Lcom/sprint/internal/dm/Dmdcmd;->requestSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/sprint/internal/dm/Dmdcmd;->access$100(Lcom/sprint/internal/dm/Dmdcmd;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    #setter for: Lcom/sprint/internal/dm/Dmdcmd;->in:Ljava/io/InputStream;
    invoke-static {v2, v3}, Lcom/sprint/internal/dm/Dmdcmd;->access$502(Lcom/sprint/internal/dm/Dmdcmd;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 160
    const-string v2, "dmdcmd"

    const-string v3, "Socket conn success."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v2, p0, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->this$0:Lcom/sprint/internal/dm/Dmdcmd;

    const/4 v3, 0x1

    #setter for: Lcom/sprint/internal/dm/Dmdcmd;->bConn:Z
    invoke-static {v2, v3}, Lcom/sprint/internal/dm/Dmdcmd;->access$002(Lcom/sprint/internal/dm/Dmdcmd;Z)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    :goto_1
    iget-object v2, p0, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->this$0:Lcom/sprint/internal/dm/Dmdcmd;

    iget-object v3, p0, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->this$0:Lcom/sprint/internal/dm/Dmdcmd;

    iget-object v4, p0, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->DMSendCommand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sprint/internal/dm/Dmdcmd;->Command(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sprint/internal/dm/Dmdcmd;->result:Ljava/lang/String;

    .line 172
    iget-object v2, p0, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->this$0:Lcom/sprint/internal/dm/Dmdcmd;

    #getter for: Lcom/sprint/internal/dm/Dmdcmd;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sprint/internal/dm/Dmdcmd;->access$600(Lcom/sprint/internal/dm/Dmdcmd;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 173
    :try_start_1
    const-string v2, "dmdcmd"

    const-string v4, "GetResponse"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v2, p0, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->this$0:Lcom/sprint/internal/dm/Dmdcmd;

    #getter for: Lcom/sprint/internal/dm/Dmdcmd;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sprint/internal/dm/Dmdcmd;->access$600(Lcom/sprint/internal/dm/Dmdcmd;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 175
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 162
    :catch_0
    move-exception v1

    .line 164
    .local v1, unknownHost:Ljava/net/UnknownHostException;
    const-string v2, "dmdcmd"

    const-string v3, "Socket conn fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->this$0:Lcom/sprint/internal/dm/Dmdcmd;

    #setter for: Lcom/sprint/internal/dm/Dmdcmd;->bConn:Z
    invoke-static {v2, v6}, Lcom/sprint/internal/dm/Dmdcmd;->access$002(Lcom/sprint/internal/dm/Dmdcmd;Z)Z

    goto :goto_1

    .line 166
    .end local v1           #unknownHost:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 167
    .local v0, ioException:Ljava/io/IOException;
    const-string v2, "dmdcmd"

    const-string v3, "IOException."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
