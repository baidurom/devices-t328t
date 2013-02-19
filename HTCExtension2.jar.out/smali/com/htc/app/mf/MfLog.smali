.class Lcom/htc/app/mf/MfLog;
.super Ljava/lang/Object;
.source "MfLog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MfLog"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final d(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 22
    const-string v0, "MfLog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method public static final e(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 46
    const-string v0, "MfLog"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public static final stackTrace()V
    .locals 3

    .prologue
    .line 54
    const-string v0, "MfLog"

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MF stack trace"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public static final v(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 30
    const-string v0, "MfLog"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method public static final w(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 38
    const-string v0, "MfLog"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method
