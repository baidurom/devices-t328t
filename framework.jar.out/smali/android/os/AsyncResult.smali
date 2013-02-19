.class public Landroid/os/AsyncResult;
.super Ljava/lang/Object;
.source "AsyncResult.java"


# instance fields
.field public exception:Ljava/lang/Throwable;

.field public result:Ljava/lang/Object;

.field public userObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "uo"
    .parameter "r"
    .parameter "ex"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 64
    iput-object p2, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 65
    iput-object p3, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 66
    return-void
.end method

.method public static forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;
    .locals 3
    .parameter "m"

    .prologue
    const/4 v2, 0x0

    .line 52
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 54
    .local v0, ret:Landroid/os/AsyncResult;
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 56
    return-object v0
.end method

.method public static forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;
    .locals 2
    .parameter "m"
    .parameter "r"
    .parameter "ex"

    .prologue
    .line 39
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 41
    .local v0, ret:Landroid/os/AsyncResult;
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 43
    return-object v0
.end method
