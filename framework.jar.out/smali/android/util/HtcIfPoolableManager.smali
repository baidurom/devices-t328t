.class public interface abstract Landroid/util/HtcIfPoolableManager;
.super Ljava/lang/Object;
.source "HtcIfPoolableManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/util/HtcIfPoolable",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract newInstance()Landroid/util/HtcIfPoolable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract onAcquired(Landroid/util/HtcIfPoolable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onReleased(Landroid/util/HtcIfPoolable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
