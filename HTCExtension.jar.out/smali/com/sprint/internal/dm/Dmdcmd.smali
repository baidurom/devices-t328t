.class public Lcom/sprint/internal/dm/Dmdcmd;
.super Ljava/lang/Object;
.source "Dmdcmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/internal/dm/Dmdcmd$SocketThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "dmdcmd"

.field private static me:Lcom/sprint/internal/dm/Dmdcmd;


# instance fields
.field private Hostname:Ljava/lang/String;

.field private Port:I

.field private bConn:Z

.field private in:Ljava/io/InputStream;

.field private mSuspendLock:Ljava/lang/Object;

.field mcommand:Ljava/lang/String;

.field private out:Ljava/io/OutputStream;

.field private requestSocket:Ljava/net/Socket;

.field result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/internal/dm/Dmdcmd;->me:Lcom/sprint/internal/dm/Dmdcmd;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/sprint/internal/dm/Dmdcmd;->Hostname:Ljava/lang/String;

    .line 15
    const/16 v0, 0x2606

    iput v0, p0, Lcom/sprint/internal/dm/Dmdcmd;->Port:I

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprint/internal/dm/Dmdcmd;->mSuspendLock:Ljava/lang/Object;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/internal/dm/Dmdcmd;->result:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/internal/dm/Dmdcmd;->mcommand:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/internal/dm/Dmdcmd;->requestSocket:Ljava/net/Socket;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/internal/dm/Dmdcmd;->bConn:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "newHostname"
    .parameter "newPort"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/sprint/internal/dm/Dmdcmd;->Hostname:Ljava/lang/String;

    .line 15
    const/16 v0, 0x2606

    iput v0, p0, Lcom/sprint/internal/dm/Dmdcmd;->Port:I

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprint/internal/dm/Dmdcmd;->mSuspendLock:Ljava/lang/Object;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/internal/dm/Dmdcmd;->result:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/internal/dm/Dmdcmd;->mcommand:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/internal/dm/Dmdcmd;->requestSocket:Ljava/net/Socket;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/internal/dm/Dmdcmd;->bConn:Z

    .line 35
    iput-object p1, p0, Lcom/sprint/internal/dm/Dmdcmd;->Hostname:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/sprint/internal/dm/Dmdcmd;->Port:I

    .line 37
    return-void
.end method

.method static synthetic access$002(Lcom/sprint/internal/dm/Dmdcmd;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/sprint/internal/dm/Dmdcmd;->bConn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sprint/internal/dm/Dmdcmd;)Ljava/net/Socket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/sprint/internal/dm/Dmdcmd;->requestSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sprint/internal/dm/Dmdcmd;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/sprint/internal/dm/Dmdcmd;->requestSocket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sprint/internal/dm/Dmdcmd;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/sprint/internal/dm/Dmdcmd;->Hostname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sprint/internal/dm/Dmdcmd;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget v0, p0, Lcom/sprint/internal/dm/Dmdcmd;->Port:I

    return v0
.end method

.method static synthetic access$400(Lcom/sprint/internal/dm/Dmdcmd;)Ljava/io/OutputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/sprint/internal/dm/Dmdcmd;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sprint/internal/dm/Dmdcmd;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/sprint/internal/dm/Dmdcmd;->out:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$502(Lcom/sprint/internal/dm/Dmdcmd;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/sprint/internal/dm/Dmdcmd;->in:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sprint/internal/dm/Dmdcmd;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/sprint/internal/dm/Dmdcmd;->mSuspendLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static getInstance()Lcom/sprint/internal/dm/Dmdcmd;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/sprint/internal/dm/Dmdcmd;->me:Lcom/sprint/internal/dm/Dmdcmd;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/sprint/internal/dm/Dmdcmd;

    invoke-direct {v0}, Lcom/sprint/internal/dm/Dmdcmd;-><init>()V

    sput-object v0, Lcom/sprint/internal/dm/Dmdcmd;->me:Lcom/sprint/internal/dm/Dmdcmd;

    .line 43
    :cond_0
    sget-object v0, Lcom/sprint/internal/dm/Dmdcmd;->me:Lcom/sprint/internal/dm/Dmdcmd;

    return-object v0
.end method


# virtual methods
.method public Command(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "outstring"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 106
    const-string v2, ""

    .line 107
    .local v2, result:Ljava/lang/String;
    const/16 v5, 0x200

    new-array v1, v5, [B

    .line 109
    .local v1, respond:[B
    iget-boolean v5, p0, Lcom/sprint/internal/dm/Dmdcmd;->bConn:Z

    if-nez v5, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-object v4

    .line 114
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/sprint/internal/dm/Dmdcmd;->out:Ljava/io/OutputStream;

    invoke-static {}, Lcom/sprint/internal/dm/Encrypt;->getInstance()Lcom/sprint/internal/dm/Encrypt;

    move-result-object v6

    sget-object v7, Lcom/sprint/internal/dm/Encrypt;->PrivateKey:Ljava/lang/String;

    invoke-virtual {v6, v7, p1}, Lcom/sprint/internal/dm/Encrypt;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 115
    iget-object v5, p0, Lcom/sprint/internal/dm/Dmdcmd;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 116
    iget-object v5, p0, Lcom/sprint/internal/dm/Dmdcmd;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_1
    iget-boolean v5, p0, Lcom/sprint/internal/dm/Dmdcmd;->bConn:Z

    if-ne v5, v8, :cond_0

    .line 125
    if-eqz v1, :cond_2

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eq v4, v8, :cond_2

    .line 126
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 127
    .local v3, test:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 129
    if-eqz v3, :cond_2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eq v4, v8, :cond_2

    .line 130
    invoke-static {}, Lcom/sprint/internal/dm/Encrypt;->getInstance()Lcom/sprint/internal/dm/Encrypt;

    move-result-object v4

    sget-object v5, Lcom/sprint/internal/dm/Encrypt;->PrivateKey:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/sprint/internal/dm/Encrypt;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .end local v3           #test:Ljava/lang/String;
    :cond_2
    move-object v4, v2

    .line 133
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, ioException:Ljava/io/IOException;
    const-string v5, "dmdcmd"

    const-string v6, "IOException."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sprint/internal/dm/Dmdcmd;->bConn:Z

    .line 121
    invoke-virtual {p0}, Lcom/sprint/internal/dm/Dmdcmd;->DisConn()V

    goto :goto_1
.end method

.method public Conn()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 71
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/sprint/internal/dm/Dmdcmd;->bConn:Z

    .line 73
    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lcom/sprint/internal/dm/Dmdcmd;->Hostname:Ljava/lang/String;

    iget v5, p0, Lcom/sprint/internal/dm/Dmdcmd;->Port:I

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/sprint/internal/dm/Dmdcmd;->requestSocket:Ljava/net/Socket;

    .line 74
    iget-object v3, p0, Lcom/sprint/internal/dm/Dmdcmd;->requestSocket:Ljava/net/Socket;

    if-nez v3, :cond_0

    .line 90
    :goto_0
    return v2

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/sprint/internal/dm/Dmdcmd;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/internal/dm/Dmdcmd;->out:Ljava/io/OutputStream;

    .line 80
    iget-object v3, p0, Lcom/sprint/internal/dm/Dmdcmd;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 82
    iget-object v3, p0, Lcom/sprint/internal/dm/Dmdcmd;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/internal/dm/Dmdcmd;->in:Ljava/io/InputStream;

    .line 83
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sprint/internal/dm/Dmdcmd;->bConn:Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    :goto_1
    iget-boolean v2, p0, Lcom/sprint/internal/dm/Dmdcmd;->bConn:Z

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 86
    .local v1, unknownHost:Ljava/net/UnknownHostException;
    iput-boolean v2, p0, Lcom/sprint/internal/dm/Dmdcmd;->bConn:Z

    goto :goto_1

    .line 87
    .end local v1           #unknownHost:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 88
    .local v0, ioException:Ljava/io/IOException;
    const-string v2, "dmdcmd"

    const-string v3, "IOException."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public DisConn()V
    .locals 2

    .prologue
    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/sprint/internal/dm/Dmdcmd;->requestSocket:Ljava/net/Socket;

    if-nez v1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/sprint/internal/dm/Dmdcmd;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 98
    iget-object v1, p0, Lcom/sprint/internal/dm/Dmdcmd;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 99
    iget-object v1, p0, Lcom/sprint/internal/dm/Dmdcmd;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, ioException:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public SendCommandToDmagent(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "command"

    .prologue
    .line 47
    new-instance v1, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;

    invoke-direct {v1, p0}, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;-><init>(Lcom/sprint/internal/dm/Dmdcmd;)V

    .line 49
    .local v1, mSocketThread:Lcom/sprint/internal/dm/Dmdcmd$SocketThread;
    invoke-virtual {v1, p1}, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->SetCommand(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Lcom/sprint/internal/dm/Dmdcmd$SocketThread;->start()V

    .line 52
    iget-object v3, p0, Lcom/sprint/internal/dm/Dmdcmd;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 55
    :try_start_0
    iget-object v2, p0, Lcom/sprint/internal/dm/Dmdcmd;->mSuspendLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    const-string v2, "dmdcmd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dmagent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sprint/internal/dm/Dmdcmd;->result:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v2, p0, Lcom/sprint/internal/dm/Dmdcmd;->result:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/sprint/internal/dm/Dmdcmd;->result:Ljava/lang/String;

    .line 66
    :goto_0
    return-object v2

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 58
    const-string v2, "FALSE"

    monitor-exit v3

    goto :goto_0

    .line 60
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 66
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method
