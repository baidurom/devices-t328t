.class public Lcom/htc/opensense/social/SocialException;
.super Ljava/lang/Exception;
.source "SocialException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private errorCode:I

.field private errorMsg:Ljava/lang/String;

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(ILjava/lang/Exception;)V
    .locals 0
    .parameter "errorCode"
    .parameter "e"

    .prologue
    .line 17
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 18
    iput p1, p0, Lcom/htc/opensense/social/SocialException;->errorCode:I

    .line 19
    iput-object p2, p0, Lcom/htc/opensense/social/SocialException;->throwable:Ljava/lang/Throwable;

    .line 20
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 32
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    iput p1, p0, Lcom/htc/opensense/social/SocialException;->errorCode:I

    .line 34
    iput-object p2, p0, Lcom/htc/opensense/social/SocialException;->errorMsg:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 27
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 28
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/htc/opensense/social/SocialException;->errorCode:I

    .line 29
    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/opensense/social/SocialException;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/opensense/social/SocialException;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/opensense/social/SocialException;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public toMessage()Landroid/os/Message;
    .locals 3

    .prologue
    .line 55
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 56
    .local v0, msg:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    iget v1, p0, Lcom/htc/opensense/social/SocialException;->errorCode:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 58
    return-object v0
.end method
