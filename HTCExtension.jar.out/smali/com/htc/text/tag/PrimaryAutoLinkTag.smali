.class public Lcom/htc/text/tag/PrimaryAutoLinkTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "PrimaryAutoLinkTag.java"


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 8
    invoke-static {p1}, Lcom/htc/text/tag/PrimaryAutoLinkTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag;->text:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public toEncodedString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 20
    iget-object v3, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag;->text:Ljava/lang/String;

    const-string v4, "&"

    const-string v5, "&amp;"

    invoke-static {v3, v4, v5}, Lcom/htc/text/tag/PrimaryAutoLinkTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, escapedAmpersand:Ljava/lang/String;
    const-string v3, "<"

    const-string v4, "&lt;"

    invoke-static {v0, v3, v4}, Lcom/htc/text/tag/PrimaryAutoLinkTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    .local v2, escapedLessThan:Ljava/lang/String;
    const-string v3, ">"

    const-string v4, "&gt;"

    invoke-static {v2, v3, v4}, Lcom/htc/text/tag/PrimaryAutoLinkTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, escapedGreaterThan:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<ak1>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</ak1>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag;->text:Ljava/lang/String;

    return-object v0
.end method
