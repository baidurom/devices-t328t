.class public Lcom/htc/autotest/middleware/CSRExecuteFailException;
.super Ljava/lang/RuntimeException;
.source "CSRExecuteFailException.java"


# static fields
.field private static final serialVersionUID:J = -0x6ee9ab775cf7a105L


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
