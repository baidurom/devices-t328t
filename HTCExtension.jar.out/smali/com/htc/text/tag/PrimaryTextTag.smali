.class public Lcom/htc/text/tag/PrimaryTextTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "PrimaryTextTag.java"


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 9
    invoke-static {p1}, Lcom/htc/text/tag/PrimaryTextTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/PrimaryTextTag;->text:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public toEncodedString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 17
    iget-object v3, p0, Lcom/htc/text/tag/PrimaryTextTag;->text:Ljava/lang/String;

    const-string v4, "&"

    const-string v5, "&amp;"

    invoke-static {v3, v4, v5}, Lcom/htc/text/tag/PrimaryTextTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, escapedAmpersand:Ljava/lang/String;
    const-string v3, "<"

    const-string v4, "&lt;"

    invoke-static {v0, v3, v4}, Lcom/htc/text/tag/PrimaryTextTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    .local v2, escapedLessThan:Ljava/lang/String;
    const-string v3, ">"

    const-string v4, "&gt;"

    invoke-static {v2, v3, v4}, Lcom/htc/text/tag/PrimaryTextTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, escapedGreaterThan:Ljava/lang/String;
    return-object v1
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryTextTag;->text:Ljava/lang/String;

    return-object v0
.end method
