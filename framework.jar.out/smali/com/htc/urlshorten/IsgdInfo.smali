.class public Lcom/htc/urlshorten/IsgdInfo;
.super Ljava/lang/Object;
.source "IsgdInfo.java"


# instance fields
.field private mShortUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getShortUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/urlshorten/IsgdInfo;->mShortUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setShortUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/htc/urlshorten/IsgdInfo;->mShortUrl:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mShortUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/urlshorten/IsgdInfo;->mShortUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
