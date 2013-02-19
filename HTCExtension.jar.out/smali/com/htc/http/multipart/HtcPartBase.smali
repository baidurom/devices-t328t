.class public abstract Lcom/htc/http/multipart/HtcPartBase;
.super Lcom/htc/http/multipart/HtcPart;
.source "HtcPartBase.java"


# instance fields
.field private charSet:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private transferEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "contentType"
    .parameter "charSet"
    .parameter "transferEncoding"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/http/multipart/HtcPart;-><init>()V

    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/htc/http/multipart/HtcPartBase;->name:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/htc/http/multipart/HtcPartBase;->contentType:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/htc/http/multipart/HtcPartBase;->charSet:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/htc/http/multipart/HtcPartBase;->transferEncoding:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/http/multipart/HtcPartBase;->charSet:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/http/multipart/HtcPartBase;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/http/multipart/HtcPartBase;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/http/multipart/HtcPartBase;->transferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public setCharSet(Ljava/lang/String;)V
    .locals 0
    .parameter "charSet"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/htc/http/multipart/HtcPartBase;->charSet:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .parameter "contentType"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/http/multipart/HtcPartBase;->contentType:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/htc/http/multipart/HtcPartBase;->name:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setTransferEncoding(Ljava/lang/String;)V
    .locals 0
    .parameter "transferEncoding"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/htc/http/multipart/HtcPartBase;->transferEncoding:Ljava/lang/String;

    .line 137
    return-void
.end method
