.class public Lcom/htc/autotest/middleware/CSRIllegalEventException;
.super Ljava/lang/RuntimeException;
.source "CSRIllegalEventException.java"


# static fields
.field private static final serialVersionUID:J = 0x7a85d5ff28c3d490L


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
