.class public Lcom/htc/text/tag/ImageTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "ImageTag.java"


# instance fields
.field private pv_uri:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "pv_uri"

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/ImageTag;->uri:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/ImageTag;->pv_uri:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/htc/text/tag/ImageTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/ImageTag;->uri:Ljava/lang/String;

    .line 11
    invoke-static {p2}, Lcom/htc/text/tag/ImageTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/ImageTag;->pv_uri:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public toEncodedString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 23
    iget-object v6, p0, Lcom/htc/text/tag/ImageTag;->uri:Ljava/lang/String;

    const-string v7, "&"

    const-string v8, "&amp;"

    invoke-static {v6, v7, v8}, Lcom/htc/text/tag/ImageTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, escapedAmpersandUri:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/text/tag/ImageTag;->pv_uri:Ljava/lang/String;

    const-string v7, "&"

    const-string v8, "&amp;"

    invoke-static {v6, v7, v8}, Lcom/htc/text/tag/ImageTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, escapedAmpersandPv:Ljava/lang/String;
    const-string v6, "<"

    const-string v7, "&lt;"

    invoke-static {v1, v6, v7}, Lcom/htc/text/tag/ImageTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 26
    .local v5, escapedLessThanUri:Ljava/lang/String;
    const-string v6, "<"

    const-string v7, "&lt;"

    invoke-static {v0, v6, v7}, Lcom/htc/text/tag/ImageTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, escapedLessThanPv:Ljava/lang/String;
    const-string v6, ">"

    const-string v7, "&gt;"

    invoke-static {v5, v6, v7}, Lcom/htc/text/tag/ImageTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, escapedGreaterThanUri:Ljava/lang/String;
    const-string v6, ">"

    const-string v7, "&gt;"

    invoke-static {v4, v6, v7}, Lcom/htc/text/tag/ImageTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, escapedGreaterThanPv:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<img uri=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" pv=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" />"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, ""

    return-object v0
.end method
