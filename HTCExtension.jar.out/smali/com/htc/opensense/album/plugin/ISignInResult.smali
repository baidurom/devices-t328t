.class public interface abstract Lcom/htc/opensense/album/plugin/ISignInResult;
.super Ljava/lang/Object;
.source "ISignInResult.java"


# static fields
.field public static final SIGNIN_ACCOUNT_NO_EXIST:I = 0x0

.field public static final SIGNIN_ACCOUNT_PWD_MISMATCH:I = 0x1


# virtual methods
.method public abstract onSignInFail(I)V
.end method

.method public abstract onSignInSuccess()V
.end method
