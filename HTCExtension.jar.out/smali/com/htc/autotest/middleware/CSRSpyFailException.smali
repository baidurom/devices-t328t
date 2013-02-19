.class public Lcom/htc/autotest/middleware/CSRSpyFailException;
.super Ljava/lang/RuntimeException;
.source "CSRSpyFailException.java"


# static fields
.field private static final serialVersionUID:J = -0x263b164e7427601L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "throwable"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    return-void
.end method
