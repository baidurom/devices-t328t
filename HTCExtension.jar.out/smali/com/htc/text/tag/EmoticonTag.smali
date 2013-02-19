.class public Lcom/htc/text/tag/EmoticonTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "EmoticonTag.java"


# static fields
.field public static ALIGN_BASELINE:I

.field public static ALIGN_BOTTOM:I


# instance fields
.field private alg:I

.field private pkg:Ljava/lang/String;

.field private res:Ljava/lang/String;

.field private resAlt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput v0, Lcom/htc/text/tag/EmoticonTag;->ALIGN_BOTTOM:I

    .line 6
    const/4 v0, 0x1

    sput v0, Lcom/htc/text/tag/EmoticonTag;->ALIGN_BASELINE:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pkg"
    .parameter "res"

    .prologue
    .line 14
    const/4 v0, 0x0

    sget v1, Lcom/htc/text/tag/EmoticonTag;->ALIGN_BOTTOM:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/htc/text/tag/EmoticonTag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pkg"
    .parameter "res"
    .parameter "res_alt"

    .prologue
    .line 18
    sget v0, Lcom/htc/text/tag/EmoticonTag;->ALIGN_BOTTOM:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/text/tag/EmoticonTag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "pkg"
    .parameter "res"
    .parameter "res_alt"
    .parameter "alg"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->pkg:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->res:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->resAlt:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/text/tag/EmoticonTag;->alg:I

    .line 22
    invoke-static {p1}, Lcom/htc/text/tag/EmoticonTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->pkg:Ljava/lang/String;

    .line 23
    invoke-static {p2}, Lcom/htc/text/tag/EmoticonTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->res:Ljava/lang/String;

    .line 24
    invoke-static {p3}, Lcom/htc/text/tag/EmoticonTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->resAlt:Ljava/lang/String;

    .line 25
    iput p4, p0, Lcom/htc/text/tag/EmoticonTag;->alg:I

    .line 26
    return-void
.end method


# virtual methods
.method public toEncodedString()Ljava/lang/String;
    .locals 13

    .prologue
    .line 35
    iget-object v10, p0, Lcom/htc/text/tag/EmoticonTag;->pkg:Ljava/lang/String;

    const-string v11, "&"

    const-string v12, "&amp;"

    invoke-static {v10, v11, v12}, Lcom/htc/text/tag/EmoticonTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, escapedAmpersandPkg:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/text/tag/EmoticonTag;->res:Ljava/lang/String;

    const-string v11, "&"

    const-string v12, "&amp;"

    invoke-static {v10, v11, v12}, Lcom/htc/text/tag/EmoticonTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, escapedAmpersandRes:Ljava/lang/String;
    const-string v10, "<"

    const-string v11, "&lt;"

    invoke-static {v0, v10, v11}, Lcom/htc/text/tag/EmoticonTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 38
    .local v6, escapedLessThanPkg:Ljava/lang/String;
    const-string v10, "<"

    const-string v11, "&lt;"

    invoke-static {v1, v10, v11}, Lcom/htc/text/tag/EmoticonTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 39
    .local v7, escapedLessThanRes:Ljava/lang/String;
    const-string v10, ">"

    const-string v11, "&gt;"

    invoke-static {v6, v10, v11}, Lcom/htc/text/tag/EmoticonTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, escapedGreaterThanPkg:Ljava/lang/String;
    const-string v10, ">"

    const-string v11, "&gt;"

    invoke-static {v7, v10, v11}, Lcom/htc/text/tag/EmoticonTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, escapedGreaterThanRes:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v9, output:Ljava/lang/StringBuilder;
    const-string v10, "<emo pkg=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v10, "\" res=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v10, ""

    iget-object v11, p0, Lcom/htc/text/tag/EmoticonTag;->resAlt:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 47
    iget-object v10, p0, Lcom/htc/text/tag/EmoticonTag;->resAlt:Ljava/lang/String;

    const-string v11, "&"

    const-string v12, "&amp;"

    invoke-static {v10, v11, v12}, Lcom/htc/text/tag/EmoticonTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, escapedAmpersandResAlt:Ljava/lang/String;
    const-string v10, "<"

    const-string v11, "&lt;"

    invoke-static {v2, v10, v11}, Lcom/htc/text/tag/EmoticonTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 49
    .local v8, escapedLessThanResAlt:Ljava/lang/String;
    const-string v10, ">"

    const-string v11, "&gt;"

    invoke-static {v8, v10, v11}, Lcom/htc/text/tag/EmoticonTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, escapedGreaterThanResAlt:Ljava/lang/String;
    const-string v10, "\" res_alt=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .end local v2           #escapedAmpersandResAlt:Ljava/lang/String;
    .end local v5           #escapedGreaterThanResAlt:Ljava/lang/String;
    .end local v8           #escapedLessThanResAlt:Ljava/lang/String;
    :cond_0
    iget v10, p0, Lcom/htc/text/tag/EmoticonTag;->alg:I

    sget v11, Lcom/htc/text/tag/EmoticonTag;->ALIGN_BOTTOM:I

    if-eq v10, v11, :cond_1

    .line 53
    const-string v10, "\" alg=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/text/tag/EmoticonTag;->alg:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    :cond_1
    const-string v10, "\" />"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, ""

    return-object v0
.end method
