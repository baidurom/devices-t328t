.class public interface abstract Landroid/util/HtcIfPool;
.super Ljava/lang/Object;
.source "HtcIfPool.java"


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
.method public abstract acquire()Landroid/util/HtcIfPoolable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract release(Landroid/util/HtcIfPoolable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
