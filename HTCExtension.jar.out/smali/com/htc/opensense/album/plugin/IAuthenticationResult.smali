.class public interface abstract Lcom/htc/opensense/album/plugin/IAuthenticationResult;
.super Ljava/lang/Object;
.source "IAuthenticationResult.java"


# static fields
.field public static final AUTH_PASSWORD_INVALID:I = 0x0

.field public static final AUTH_PERMISSION_INVALID:I = 0x1

.field public static final AUTH_TOKEN_INVALID:I = 0x2


# virtual methods
.method public abstract onAuthenticationFail(I)V
.end method

.method public abstract onAuthenticationSuccess()V
.end method
