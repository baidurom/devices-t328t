.class public final Lcom/htc/protobuf/RpcUtil$AlreadyCalledException;
.super Ljava/lang/RuntimeException;
.source "RpcUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/RpcUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlreadyCalledException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4be86cb6ba5b1c4aL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 147
    const-string v0, "This RpcCallback was already called and cannot be called multiple times."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 149
    return-void
.end method
