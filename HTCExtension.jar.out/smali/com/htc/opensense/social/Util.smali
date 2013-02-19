.class public Lcom/htc/opensense/social/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field static callbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runOprationMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler$Callback;)V
    .locals 8
    .parameter "dispatcher"
    .parameter "name"
    .parameter "params"
    .parameter "callback"

    .prologue
    .line 20
    const/4 v2, 0x0

    .line 21
    .local v2, runOperation:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v3, Lcom/htc/opensense/social/Util;->callbackRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 22
    sget-object v3, Lcom/htc/opensense/social/Util;->callbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/reflect/Method;

    move-object v2, v0

    .line 24
    :cond_0
    if-nez v2, :cond_1

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "runOperation"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/os/Handler$Callback;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 30
    :cond_1
    sget-object v3, Lcom/htc/opensense/social/Util;->callbackRef:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_2

    .line 31
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/htc/opensense/social/Util;->callbackRef:Ljava/lang/ref/WeakReference;

    .line 33
    :cond_2
    const-string v3, "FQL"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    .line 50
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v1

    .line 36
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 37
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 39
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 40
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 42
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 43
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 45
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_4
    move-exception v1

    .line 48
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method
