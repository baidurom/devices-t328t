.class public interface abstract Lcom/htc/http/multipart/HtcPartSource;
.super Ljava/lang/Object;
.source "HtcPartSource.java"


# virtual methods
.method public abstract createInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getLength()J
.end method
